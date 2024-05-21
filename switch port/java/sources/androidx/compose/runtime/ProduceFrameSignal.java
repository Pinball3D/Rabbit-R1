package androidx.compose.runtime;

import io.sentry.protocol.SentryStackFrame;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\tJ\u0006\u0010\n\u001a\u00020\u0005R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/ProduceFrameSignal;", "", "()V", "pendingFrameContinuation", "awaitFrameRequest", "", SentryStackFrame.JsonKeys.LOCK, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestFrameLocked", "Lkotlin/coroutines/Continuation;", "takeFrameRequestLocked", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ProduceFrameSignal {
    private Object pendingFrameContinuation;

    public final void takeFrameRequestLocked() {
        Object obj;
        Object obj2 = this.pendingFrameContinuation;
        obj = RecomposerKt.FramePending;
        if (obj2 != obj) {
            throw new IllegalStateException("frame not pending".toString());
        }
        this.pendingFrameContinuation = null;
    }

    public final Continuation<Unit> requestFrameLocked() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5 = this.pendingFrameContinuation;
        if (obj5 instanceof Continuation) {
            obj4 = RecomposerKt.FramePending;
            this.pendingFrameContinuation = obj4;
            return (Continuation) obj5;
        }
        obj = RecomposerKt.ProduceAnotherFrame;
        if (!Intrinsics.areEqual(obj5, obj)) {
            obj2 = RecomposerKt.FramePending;
            if (!Intrinsics.areEqual(obj5, obj2)) {
                if (obj5 == null) {
                    obj3 = RecomposerKt.ProduceAnotherFrame;
                    this.pendingFrameContinuation = obj3;
                } else {
                    throw new IllegalStateException(("invalid pendingFrameContinuation " + obj5).toString());
                }
            }
        }
        return null;
    }

    public final Object awaitFrameRequest(Object obj, Continuation<? super Unit> continuation) {
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        synchronized (obj) {
            Object obj6 = this.pendingFrameContinuation;
            obj2 = RecomposerKt.ProduceAnotherFrame;
            if (obj6 == obj2) {
                obj5 = RecomposerKt.FramePending;
                this.pendingFrameContinuation = obj5;
                return Unit.INSTANCE;
            }
            Unit unit = Unit.INSTANCE;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
            synchronized (obj) {
                Object obj7 = this.pendingFrameContinuation;
                obj3 = RecomposerKt.ProduceAnotherFrame;
                if (obj7 != obj3) {
                    this.pendingFrameContinuation = cancellableContinuationImpl2;
                    cancellableContinuationImpl2 = null;
                } else {
                    obj4 = RecomposerKt.FramePending;
                    this.pendingFrameContinuation = obj4;
                }
            }
            if (cancellableContinuationImpl2 != null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl2.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
            }
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
        }
    }
}
