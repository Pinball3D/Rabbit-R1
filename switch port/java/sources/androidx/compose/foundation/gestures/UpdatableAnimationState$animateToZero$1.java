package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdatableAnimationState.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.UpdatableAnimationState", f = "UpdatableAnimationState.kt", i = {0, 0, 0, 0, 1, 1}, l = {100, 146}, m = "animateToZero", n = {"this", "beforeFrame", "afterFrame", "durationScale", "this", "afterFrame"}, s = {"L$0", "L$1", "L$2", "F$0", "L$0", "L$1"})
/* loaded from: classes.dex */
public final class UpdatableAnimationState$animateToZero$1 extends ContinuationImpl {
    float F$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UpdatableAnimationState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatableAnimationState$animateToZero$1(UpdatableAnimationState updatableAnimationState, Continuation<? super UpdatableAnimationState$animateToZero$1> continuation) {
        super(continuation);
        this.this$0 = updatableAnimationState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.animateToZero(null, null, this);
    }
}
