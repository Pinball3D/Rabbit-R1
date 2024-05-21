package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DragGestureDetector.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1}, l = {890, 940}, m = "awaitVerticalPointerSlopOrCancellation-gDDlDlE", n = {"onTouchSlopReached", "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv", "pointer$iv", "triggerOnMainAxisSlop$iv", "touchSlop$iv", "totalMainPositionChange$iv", "totalCrossPositionChange$iv", "onTouchSlopReached", "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv", "pointer$iv", "dragEvent$iv", "triggerOnMainAxisSlop$iv", "touchSlop$iv", "totalMainPositionChange$iv", "totalCrossPositionChange$iv"}, s = {"L$0", "L$2", "L$3", "I$0", "F$0", "F$1", "F$2", "L$0", "L$2", "L$3", "L$4", "I$0", "F$0", "F$1", "F$2"})
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1 extends ContinuationImpl {
    float F$0;
    float F$1;
    float F$2;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1(Continuation<? super DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.m277awaitVerticalPointerSlopOrCancellationgDDlDlE(null, 0L, 0, null, this);
    }
}
