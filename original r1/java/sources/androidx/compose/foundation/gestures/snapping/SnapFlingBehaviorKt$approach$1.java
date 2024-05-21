package androidx.compose.foundation.gestures.snapping;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapFlingBehavior.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", i = {0, 0}, l = {312}, m = "approach", n = {"snapLayoutInfoProvider", "density"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class SnapFlingBehaviorKt$approach$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SnapFlingBehaviorKt$approach$1(Continuation<? super SnapFlingBehaviorKt$approach$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object approach;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        approach = SnapFlingBehaviorKt.approach(null, 0.0f, 0.0f, null, null, null, null, this);
        return approach;
    }
}
