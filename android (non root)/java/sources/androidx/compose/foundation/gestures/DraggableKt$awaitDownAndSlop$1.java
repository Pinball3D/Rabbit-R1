package androidx.compose.foundation.gestures;

import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Draggable.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableKt", f = "Draggable.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, l = {472, 481, 600, 650}, m = "awaitDownAndSlop", n = {"$this$awaitDownAndSlop", "canDrag", "startDragImmediately", "velocityTracker", Device.JsonKeys.ORIENTATION, "$this$awaitDownAndSlop", "velocityTracker", Device.JsonKeys.ORIENTATION, "initialDelta", "postPointerSlop", "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv", "pointerDirectionConfig$iv", "pointer$iv", "triggerOnMainAxisSlop$iv", "touchSlop$iv", "totalMainPositionChange$iv", "totalCrossPositionChange$iv", "initialDelta", "postPointerSlop", "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv", "pointerDirectionConfig$iv", "pointer$iv", "dragEvent$iv", "triggerOnMainAxisSlop$iv", "touchSlop$iv", "totalMainPositionChange$iv", "totalCrossPositionChange$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "F$0", "F$1", "F$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "F$0", "F$1", "F$2"})
/* loaded from: classes.dex */
public final class DraggableKt$awaitDownAndSlop$1 extends ContinuationImpl {
    float F$0;
    float F$1;
    float F$2;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DraggableKt$awaitDownAndSlop$1(Continuation<? super DraggableKt$awaitDownAndSlop$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object awaitDownAndSlop;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitDownAndSlop = DraggableKt.awaitDownAndSlop(null, null, null, null, null, this);
        return awaitDownAndSlop;
    }
}
