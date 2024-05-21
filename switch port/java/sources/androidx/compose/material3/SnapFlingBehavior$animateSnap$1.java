package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapFlingBehavior.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.SnapFlingBehavior", f = "SnapFlingBehavior.kt", i = {0, 0, 0, 0, 0}, l = {299}, m = "animateSnap", n = {"this", "animationState", "consumedUpToNow", "targetOffset", "initialVelocity"}, s = {"L$0", "L$1", "L$2", "F$0", "F$1"})
/* loaded from: classes.dex */
public final class SnapFlingBehavior$animateSnap$1 extends ContinuationImpl {
    float F$0;
    float F$1;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SnapFlingBehavior this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapFlingBehavior$animateSnap$1(SnapFlingBehavior snapFlingBehavior, Continuation<? super SnapFlingBehavior$animateSnap$1> continuation) {
        super(continuation);
        this.this$0 = snapFlingBehavior;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object animateSnap;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        animateSnap = this.this$0.animateSnap(null, 0.0f, 0.0f, null, null, this);
        return animateSnap;
    }
}
