package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletedWithCancellation;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

/* compiled from: DispatchedContinuation.kt */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u001b\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0002\u0010\tJ\u0006\u0010\u001f\u001a\u00020 J\u001f\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\f2\u0006\u0010#\u001a\u00020$H\u0010¢\u0006\u0002\b%J\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001cJ\u001f\u0010'\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010(\u001a\u00028\u0000H\u0000¢\u0006\u0004\b)\u0010*J\u0010\u0010+\u001a\n\u0018\u00010,j\u0004\u0018\u0001`-H\u0016J\u0006\u0010.\u001a\u00020/J\u000e\u00100\u001a\u00020/2\u0006\u0010#\u001a\u00020$J\u0006\u00101\u001a\u00020 JF\u00102\u001a\u00020 2\f\u00103\u001a\b\u0012\u0004\u0012\u00028\u0000042%\b\b\u00105\u001a\u001f\u0012\u0013\u0012\u00110$¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020 \u0018\u000106H\u0086\bø\u0001\u0000¢\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020/2\b\u0010;\u001a\u0004\u0018\u00010\fH\u0086\bJ\u001f\u0010<\u001a\u00020 2\f\u00103\u001a\b\u0012\u0004\u0012\u00028\u000004H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010=J\u001e\u0010>\u001a\u00020 2\f\u00103\u001a\b\u0012\u0004\u0012\u00028\u000004H\u0016ø\u0001\u0000¢\u0006\u0002\u0010=J\u000f\u0010?\u001a\u0004\u0018\u00010\fH\u0010¢\u0006\u0002\b@J\b\u0010A\u001a\u00020BH\u0016J\u0014\u0010C\u001a\u0004\u0018\u00010$2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030DR\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004R\u001a\u0010\r\u001a\u0004\u0018\u00010\f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\f8\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006E"}, d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/DispatchedTask;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "continuation", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "_reusableCancellableContinuation", "Lkotlinx/atomicfu/AtomicRef;", "", "_state", "get_state$kotlinx_coroutines_core$annotations", "()V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "countOrElement", "delegate", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "reusableCancellableContinuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", "getReusableCancellableContinuation", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "awaitReusability", "", "cancelCompletedResult", "takenState", "cause", "", "cancelCompletedResult$kotlinx_coroutines_core", "claimReusableCancellableContinuation", "dispatchYield", "value", "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "isReusable", "", "postponeCancellation", "release", "resumeCancellableWith", "result", "Lkotlin/Result;", "onCancellation", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "resumeCancelled", SentryThread.JsonKeys.STATE, "resumeUndispatchedWith", "(Ljava/lang/Object;)V", "resumeWith", "takeState", "takeState$kotlinx_coroutines_core", "toString", "", "tryReleaseClaimedContinuation", "Lkotlinx/coroutines/CancellableContinuation;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements CoroutineStackFrame, Continuation<T> {
    private static final AtomicReferenceFieldUpdater _reusableCancellableContinuation$FU = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation");

    @Volatile
    private volatile Object _reusableCancellableContinuation;
    public Object _state;
    public final Continuation<T> continuation;
    public final Object countOrElement;
    public final CoroutineDispatcher dispatcher;

    public static /* synthetic */ void get_state$kotlinx_coroutines_core$annotations() {
    }

    private final void loop$atomicfu(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.continuation.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(CoroutineDispatcher coroutineDispatcher, Continuation<? super T> continuation) {
        super(-1);
        this.dispatcher = coroutineDispatcher;
        this.continuation = continuation;
        this._state = DispatchedContinuationKt.access$getUNDEFINED$p();
        this.countOrElement = ThreadContextKt.threadContextElements(getContext());
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.continuation;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    private final CancellableContinuationImpl<?> getReusableCancellableContinuation() {
        Object obj = _reusableCancellableContinuation$FU.get(this);
        if (obj instanceof CancellableContinuationImpl) {
            return (CancellableContinuationImpl) obj;
        }
        return null;
    }

    public final boolean isReusable() {
        return _reusableCancellableContinuation$FU.get(this) != null;
    }

    public final void awaitReusability() {
        do {
        } while (_reusableCancellableContinuation$FU.get(this) == DispatchedContinuationKt.REUSABLE_CLAIMED);
    }

    public final void release() {
        awaitReusability();
        CancellableContinuationImpl<?> reusableCancellableContinuation = getReusableCancellableContinuation();
        if (reusableCancellableContinuation != null) {
            reusableCancellableContinuation.detachChild$kotlinx_coroutines_core();
        }
    }

    public final CancellableContinuationImpl<T> claimReusableCancellableContinuation() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                _reusableCancellableContinuation$FU.set(this, DispatchedContinuationKt.REUSABLE_CLAIMED);
                return null;
            }
            if (obj instanceof CancellableContinuationImpl) {
                if (_reusableCancellableContinuation$FU.compareAndSet(this, obj, DispatchedContinuationKt.REUSABLE_CLAIMED)) {
                    return (CancellableContinuationImpl) obj;
                }
            } else if (obj != DispatchedContinuationKt.REUSABLE_CLAIMED && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final Throwable tryReleaseClaimedContinuation(CancellableContinuation<?> continuation) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != DispatchedContinuationKt.REUSABLE_CLAIMED) {
                if (obj instanceof Throwable) {
                    if (!_reusableCancellableContinuation$FU.compareAndSet(this, obj, null)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    return (Throwable) obj;
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!_reusableCancellableContinuation$FU.compareAndSet(this, DispatchedContinuationKt.REUSABLE_CLAIMED, continuation));
        return null;
    }

    public final boolean postponeCancellation(Throwable cause) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (Intrinsics.areEqual(obj, DispatchedContinuationKt.REUSABLE_CLAIMED)) {
                if (_reusableCancellableContinuation$FU.compareAndSet(this, DispatchedContinuationKt.REUSABLE_CLAIMED, cause)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (_reusableCancellableContinuation$FU.compareAndSet(this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        Object obj = this._state;
        if (DebugKt.getASSERTIONS_ENABLED() && obj == DispatchedContinuationKt.access$getUNDEFINED$p()) {
            throw new AssertionError();
        }
        this._state = DispatchedContinuationKt.access$getUNDEFINED$p();
        return obj;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        CoroutineContext context;
        Object updateThreadContext;
        CoroutineContext context2 = this.continuation.getContext();
        Object state$default = CompletionStateKt.toState$default(result, null, 1, null);
        if (this.dispatcher.isDispatchNeeded(context2)) {
            this._state = state$default;
            this.resumeMode = 0;
            this.dispatcher.mo7257dispatch(context2, this);
            return;
        }
        DebugKt.getASSERTIONS_ENABLED();
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this._state = state$default;
            this.resumeMode = 0;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        DispatchedContinuation<T> dispatchedContinuation = this;
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            context = getContext();
            updateThreadContext = ThreadContextKt.updateThreadContext(context, this.countOrElement);
        } finally {
            try {
            } finally {
            }
        }
        try {
            this.continuation.resumeWith(result);
            Unit unit = Unit.INSTANCE;
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
        } finally {
            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
        }
    }

    public final void resumeCancellableWith(Object result, Function1<? super Throwable, Unit> onCancellation) {
        Object state = CompletionStateKt.toState(result, onCancellation);
        if (this.dispatcher.isDispatchNeeded(getContext())) {
            this._state = state;
            this.resumeMode = 1;
            this.dispatcher.mo7257dispatch(getContext(), this);
            return;
        }
        DebugKt.getASSERTIONS_ENABLED();
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this._state = state;
            this.resumeMode = 1;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        DispatchedContinuation<T> dispatchedContinuation = this;
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            Job job = (Job) getContext().get(Job.INSTANCE);
            if (job != null && !job.isActive()) {
                CancellationException cancellationException = job.getCancellationException();
                cancelCompletedResult$kotlinx_coroutines_core(state, cancellationException);
                Result.Companion companion = Result.INSTANCE;
                resumeWith(Result.m5698constructorimpl(ResultKt.createFailure(cancellationException)));
            } else {
                Continuation<T> continuation = this.continuation;
                Object obj = this.countOrElement;
                CoroutineContext context = continuation.getContext();
                Object updateThreadContext = ThreadContextKt.updateThreadContext(context, obj);
                UndispatchedCoroutine<?> updateUndispatchedCompletion = updateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS ? CoroutineContextKt.updateUndispatchedCompletion(continuation, context, updateThreadContext) : null;
                try {
                    this.continuation.resumeWith(result);
                    Unit unit = Unit.INSTANCE;
                } finally {
                    InlineMarker.finallyStart(1);
                    if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                        ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                    }
                    InlineMarker.finallyEnd(1);
                }
            }
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                dispatchedContinuation.handleFatalException(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
        InlineMarker.finallyEnd(1);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(Object takenState, Throwable cause) {
        if (takenState instanceof CompletedWithCancellation) {
            ((CompletedWithCancellation) takenState).onCancellation.invoke(cause);
        }
    }

    public final boolean resumeCancelled(Object state) {
        Job job = (Job) getContext().get(Job.INSTANCE);
        if (job == null || job.isActive()) {
            return false;
        }
        CancellationException cancellationException = job.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state, cancellationException);
        Result.Companion companion = Result.INSTANCE;
        resumeWith(Result.m5698constructorimpl(ResultKt.createFailure(cancellationException)));
        return true;
    }

    public final void dispatchYield$kotlinx_coroutines_core(CoroutineContext context, T value) {
        this._state = value;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(context, this);
    }

    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + DebugStringsKt.toDebugString(this.continuation) + ']';
    }

    public final void resumeUndispatchedWith(Object result) {
        Continuation<T> continuation = this.continuation;
        Object obj = this.countOrElement;
        CoroutineContext context = continuation.getContext();
        Object updateThreadContext = ThreadContextKt.updateThreadContext(context, obj);
        UndispatchedCoroutine<?> updateUndispatchedCompletion = updateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS ? CoroutineContextKt.updateUndispatchedCompletion(continuation, context, updateThreadContext) : null;
        try {
            this.continuation.resumeWith(result);
            Unit unit = Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
            }
            InlineMarker.finallyEnd(1);
        }
    }
}
