package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DragGestureDetector.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5", f = "DragGestureDetector.kt", i = {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, l = {176, 890, 940, 193}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "down", "overSlop", "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv", "pointerDirectionConfig$iv", "pointer$iv", "triggerOnMainAxisSlop$iv", "touchSlop$iv", "totalMainPositionChange$iv", "totalCrossPositionChange$iv", "$this$awaitEachGesture", "down", "overSlop", "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv", "pointerDirectionConfig$iv", "pointer$iv", "dragEvent$iv", "triggerOnMainAxisSlop$iv", "touchSlop$iv", "totalMainPositionChange$iv", "totalCrossPositionChange$iv"}, s = {"L$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "F$0", "F$1", "F$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "F$0", "F$1", "F$2"})
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$detectDragGestures$5 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<PointerInputChange, Offset, Unit> $onDrag;
    final /* synthetic */ Function0<Unit> $onDragCancel;
    final /* synthetic */ Function0<Unit> $onDragEnd;
    final /* synthetic */ Function1<Offset, Unit> $onDragStart;
    float F$0;
    float F$1;
    float F$2;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DragGestureDetectorKt$detectDragGestures$5(Function1<? super Offset, Unit> function1, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Function0<Unit> function0, Function0<Unit> function02, Continuation<? super DragGestureDetectorKt$detectDragGestures$5> continuation) {
        super(2, continuation);
        this.$onDragStart = function1;
        this.$onDrag = function2;
        this.$onDragCancel = function0;
        this.$onDragEnd = function02;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DragGestureDetectorKt$detectDragGestures$5 dragGestureDetectorKt$detectDragGestures$5 = new DragGestureDetectorKt$detectDragGestures$5(this.$onDragStart, this.$onDrag, this.$onDragCancel, this.$onDragEnd, continuation);
        dragGestureDetectorKt$detectDragGestures$5.L$0 = obj;
        return dragGestureDetectorKt$detectDragGestures$5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
        return ((DragGestureDetectorKt$detectDragGestures$5) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0154 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0217  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9, types: [androidx.compose.ui.input.pointer.PointerEventPass, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00e1 -> B:22:0x0253). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0162 -> B:21:0x0215). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0204 -> B:18:0x020b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0250 -> B:22:0x0253). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 707
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
