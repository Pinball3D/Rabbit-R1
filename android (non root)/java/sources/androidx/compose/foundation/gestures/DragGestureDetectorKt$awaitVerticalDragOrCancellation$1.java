package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DragGestureDetector.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", i = {0, 0}, l = {876}, m = "awaitVerticalDragOrCancellation-rnUCldI", n = {"$this$awaitDragOrUp_u2djO51t88$iv", "pointer$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitVerticalDragOrCancellation$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DragGestureDetectorKt$awaitVerticalDragOrCancellation$1(Continuation<? super DragGestureDetectorKt$awaitVerticalDragOrCancellation$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.m276awaitVerticalDragOrCancellationrnUCldI(null, 0L, this);
    }
}
