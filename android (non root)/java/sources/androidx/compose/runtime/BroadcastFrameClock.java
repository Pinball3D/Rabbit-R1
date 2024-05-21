package androidx.compose.runtime;

import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.MonotonicFrameClock;
import io.sentry.protocol.SentryStackFrame;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: BroadcastFrameClock.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001 B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\u0012\u001a\u00020\u00042\f\b\u0002\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\nH\u0002J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aJ+\u0010\u001b\u001a\u0002H\u001c\"\u0004\b\u0000\u0010\u001c2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001fR\u0018\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Landroidx/compose/runtime/BroadcastFrameClock;", "Landroidx/compose/runtime/MonotonicFrameClock;", "onNewAwaiters", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "awaiters", "", "Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;", "failureCause", "", "hasAwaiters", "", "getHasAwaiters", "()Z", SentryStackFrame.JsonKeys.LOCK, "", "spareList", "cancel", "cancellationException", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "fail", "cause", "sendFrame", "timeNanos", "", "withFrameNanos", "R", "onFrame", "Lkotlin/Function1;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "FrameAwaiter", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;
    private List<FrameAwaiter<?>> awaiters;
    private Throwable failureCause;
    private final Object lock;
    private final Function0<Unit> onNewAwaiters;
    private List<FrameAwaiter<?>> spareList;

    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastFrameClock() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public BroadcastFrameClock(Function0<Unit> function0) {
        this.onNewAwaiters = function0;
        this.lock = new Object();
        this.awaiters = new ArrayList();
        this.spareList = new ArrayList();
    }

    public /* synthetic */ BroadcastFrameClock(Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : function0);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) MonotonicFrameClock.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) MonotonicFrameClock.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return MonotonicFrameClock.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return MonotonicFrameClock.DefaultImpls.plus(this, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BroadcastFrameClock.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B'\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;", "R", "", "onFrame", "Lkotlin/Function1;", "", "continuation", "Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "getContinuation", "()Lkotlin/coroutines/Continuation;", "getOnFrame", "()Lkotlin/jvm/functions/Function1;", "resume", "", "timeNanos", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class FrameAwaiter<R> {
        private final Continuation<R> continuation;
        private final Function1<Long, R> onFrame;

        public final Continuation<R> getContinuation() {
            return this.continuation;
        }

        public final Function1<Long, R> getOnFrame() {
            return this.onFrame;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public FrameAwaiter(Function1<? super Long, ? extends R> onFrame, Continuation<? super R> continuation) {
            Intrinsics.checkNotNullParameter(onFrame, "onFrame");
            Intrinsics.checkNotNullParameter(continuation, "continuation");
            this.onFrame = onFrame;
            this.continuation = continuation;
        }

        public final void resume(long timeNanos) {
            Object m5698constructorimpl;
            Continuation<R> continuation = this.continuation;
            try {
                Result.Companion companion = Result.INSTANCE;
                FrameAwaiter<R> frameAwaiter = this;
                m5698constructorimpl = Result.m5698constructorimpl(this.onFrame.invoke(Long.valueOf(timeNanos)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
            }
            continuation.resumeWith(m5698constructorimpl);
        }
    }

    public static /* synthetic */ void cancel$default(BroadcastFrameClock broadcastFrameClock, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = new CancellationException("clock cancelled");
        }
        broadcastFrameClock.cancel(cancellationException);
    }

    public final void cancel(CancellationException cancellationException) {
        Intrinsics.checkNotNullParameter(cancellationException, "cancellationException");
        fail(cancellationException);
    }

    public final boolean getHasAwaiters() {
        boolean z;
        synchronized (this.lock) {
            z = !this.awaiters.isEmpty();
        }
        return z;
    }

    public final void sendFrame(long timeNanos) {
        synchronized (this.lock) {
            List<FrameAwaiter<?>> list = this.awaiters;
            this.awaiters = this.spareList;
            this.spareList = list;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                list.get(i).resume(timeNanos);
            }
            list.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, androidx.compose.runtime.BroadcastFrameClock$FrameAwaiter] */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    public <R> Object withFrameNanos(Function1<? super Long, ? extends R> function1, Continuation<? super R> continuation) {
        FrameAwaiter frameAwaiter;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (this.lock) {
            Throwable th = this.failureCause;
            if (th != null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl2.resumeWith(Result.m5698constructorimpl(ResultKt.createFailure(th)));
            } else {
                objectRef.element = new FrameAwaiter(function1, cancellableContinuationImpl2);
                boolean z = !this.awaiters.isEmpty();
                List list = this.awaiters;
                if (objectRef.element == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("awaiter");
                    frameAwaiter = null;
                } else {
                    frameAwaiter = (FrameAwaiter) objectRef.element;
                }
                list.add(frameAwaiter);
                boolean z2 = !z;
                cancellableContinuationImpl2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.BroadcastFrameClock$withFrameNanos$2$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                        invoke2(th2);
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th2) {
                        BroadcastFrameClock.FrameAwaiter frameAwaiter2;
                        Object obj = BroadcastFrameClock.this.lock;
                        BroadcastFrameClock broadcastFrameClock = BroadcastFrameClock.this;
                        Ref.ObjectRef<BroadcastFrameClock.FrameAwaiter<R>> objectRef2 = objectRef;
                        synchronized (obj) {
                            List list2 = broadcastFrameClock.awaiters;
                            if (objectRef2.element == 0) {
                                Intrinsics.throwUninitializedPropertyAccessException("awaiter");
                                frameAwaiter2 = null;
                            } else {
                                frameAwaiter2 = (BroadcastFrameClock.FrameAwaiter) objectRef2.element;
                            }
                            list2.remove(frameAwaiter2);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                });
                if (z2 && this.onNewAwaiters != null) {
                    try {
                        this.onNewAwaiters.invoke();
                    } catch (Throwable th2) {
                        fail(th2);
                    }
                }
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fail(Throwable cause) {
        synchronized (this.lock) {
            if (this.failureCause != null) {
                return;
            }
            this.failureCause = cause;
            List<FrameAwaiter<?>> list = this.awaiters;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Continuation<?> continuation = list.get(i).getContinuation();
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m5698constructorimpl(ResultKt.createFailure(cause)));
            }
            this.awaiters.clear();
            Unit unit = Unit.INSTANCE;
        }
    }
}
