package androidx.compose.foundation.gestures.snapping;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapFlingBehavior.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior", f = "SnapFlingBehavior.kt", i = {0, 0, 0, 0}, l = {179, 191}, m = "longSnap", n = {"this", "$this$longSnap", "onAnimationStep", "remainingScrollOffset"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes.dex */
public final class SnapFlingBehavior$longSnap$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SnapFlingBehavior this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapFlingBehavior$longSnap$1(SnapFlingBehavior snapFlingBehavior, Continuation<? super SnapFlingBehavior$longSnap$1> continuation) {
        super(continuation);
        this.this$0 = snapFlingBehavior;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object longSnap;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        longSnap = this.this$0.longSnap(null, 0.0f, null, this);
        return longSnap;
    }
}
