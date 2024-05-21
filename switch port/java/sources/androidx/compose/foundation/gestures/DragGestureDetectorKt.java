package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: DragGestureDetector.kt */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\f\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a;\u0010\u0013\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00160\u0015H\u0082Hø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\u0019\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0012\u001ag\u0010\u001b\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d26\u0010\u001e\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020$0\u001fH\u0080@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a_\u0010'\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001026\u0010(\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020$0\u001fH\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a'\u0010+\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b,\u0010\u0012\u001a]\u0010-\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010.\u001a\u00020\u00012\b\b\u0002\u0010/\u001a\u00020\u00162\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020$0\u001fH\u0080Hø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a_\u00103\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001026\u0010(\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u001100¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020$0\u001fH\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b4\u0010*\u001a'\u00105\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b6\u0010\u0012\u001ag\u00107\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d26\u0010(\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020$0\u001fH\u0080@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b8\u0010&\u001a_\u00109\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001026\u0010(\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020$0\u001fH\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b:\u0010*\u001a\u0086\u0001\u0010;\u001a\u00020$*\u00020<2\u0014\b\u0002\u0010=\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020$0\u00152\u000e\b\u0002\u0010>\u001a\b\u0012\u0004\u0012\u00020$0?2\u000e\b\u0002\u0010@\u001a\b\u0012\u0004\u0012\u00020$0?26\u0010A\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u001100¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020$0\u001fH\u0086@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010C\u001a\u0086\u0001\u0010D\u001a\u00020$*\u00020<2\u0014\b\u0002\u0010=\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020$0\u00152\u000e\b\u0002\u0010>\u001a\b\u0012\u0004\u0012\u00020$0?2\u000e\b\u0002\u0010@\u001a\b\u0012\u0004\u0012\u00020$0?26\u0010A\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u001100¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020$0\u001fH\u0086@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010C\u001a\u0086\u0001\u0010E\u001a\u00020$*\u00020<2\u0014\b\u0002\u0010=\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020$0\u00152\u000e\b\u0002\u0010>\u001a\b\u0012\u0004\u0012\u00020$0?2\u000e\b\u0002\u0010@\u001a\b\u0012\u0004\u0012\u00020$0?26\u0010F\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020$0\u001fH\u0086@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010C\u001a\u0086\u0001\u0010G\u001a\u00020$*\u00020<2\u0014\b\u0002\u0010=\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020$0\u00152\u000e\b\u0002\u0010>\u001a\b\u0012\u0004\u0012\u00020$0?2\u000e\b\u0002\u0010@\u001a\b\u0012\u0004\u0012\u00020$0?26\u0010H\u001a2\u0012\u0013\u0012\u00110\r¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020$0\u001fH\u0086@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010C\u001a9\u0010I\u001a\u00020\u0016*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020$0\u0015H\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\bJ\u0010\u0018\u001ac\u0010I\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020$0\u00152\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b0\u00152\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00160\u0015H\u0080Hø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\bM\u0010N\u001a9\u0010O\u001a\u00020\u0016*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020$0\u0015H\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\bP\u0010\u0018\u001a!\u0010Q\u001a\u00020\u0016*\u00020R2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bS\u0010T\u001a!\u0010U\u001a\u00020\u000b*\u00020V2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bW\u0010X\u001a\f\u0010Y\u001a\u00020\u0001*\u00020ZH\u0000\u001a9\u0010[\u001a\u00020\u0016*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020$0\u0015H\u0086@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\\\u0010\u0018\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003\"\u0013\u0010\u0006\u001a\u00020\u0007X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\b\"\u0013\u0010\t\u001a\u00020\u0007X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\b\"\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006]"}, d2 = {"HorizontalPointerDirectionConfig", "Landroidx/compose/foundation/gestures/PointerDirectionConfig;", "getHorizontalPointerDirectionConfig", "()Landroidx/compose/foundation/gestures/PointerDirectionConfig;", "VerticalPointerDirectionConfig", "getVerticalPointerDirectionConfig", "defaultTouchSlop", "Landroidx/compose/ui/unit/Dp;", "F", "mouseSlop", "mouseToTouchSlopRatio", "", "awaitDragOrCancellation", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "awaitDragOrCancellation-rnUCldI", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitDragOrUp", "hasDragged", "Lkotlin/Function1;", "", "awaitDragOrUp-jO51t88", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitHorizontalDragOrCancellation", "awaitHorizontalDragOrCancellation-rnUCldI", "awaitHorizontalPointerSlopOrCancellation", "pointerType", "Landroidx/compose/ui/input/pointer/PointerType;", "onPointerSlopReached", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "change", "overSlop", "", "awaitHorizontalPointerSlopOrCancellation-gDDlDlE", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitHorizontalTouchSlopOrCancellation", "onTouchSlopReached", "awaitHorizontalTouchSlopOrCancellation-jO51t88", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitLongPressOrCancellation", "awaitLongPressOrCancellation-rnUCldI", "awaitPointerSlopOrCancellation", "pointerDirectionConfig", "triggerOnMainAxisSlop", "Landroidx/compose/ui/geometry/Offset;", "awaitPointerSlopOrCancellation-wtdNQyU", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILandroidx/compose/foundation/gestures/PointerDirectionConfig;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitTouchSlopOrCancellation", "awaitTouchSlopOrCancellation-jO51t88", "awaitVerticalDragOrCancellation", "awaitVerticalDragOrCancellation-rnUCldI", "awaitVerticalPointerSlopOrCancellation", "awaitVerticalPointerSlopOrCancellation-gDDlDlE", "awaitVerticalTouchSlopOrCancellation", "awaitVerticalTouchSlopOrCancellation-jO51t88", "detectDragGestures", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "onDragStart", "onDragEnd", "Lkotlin/Function0;", "onDragCancel", "onDrag", "dragAmount", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectDragGesturesAfterLongPress", "detectHorizontalDragGestures", "onHorizontalDrag", "detectVerticalDragGestures", "onVerticalDrag", "drag", "drag-jO51t88", "motionFromChange", "motionConsumed", "drag-VnAYq1g", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "horizontalDrag", "horizontalDrag-jO51t88", "isPointerUp", "Landroidx/compose/ui/input/pointer/PointerEvent;", "isPointerUp-DmW0f2w", "(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z", "pointerSlop", "Landroidx/compose/ui/platform/ViewConfiguration;", "pointerSlop-E8SPZFQ", "(Landroidx/compose/ui/platform/ViewConfiguration;I)F", "toPointerDirectionConfig", "Landroidx/compose/foundation/gestures/Orientation;", "verticalDrag", "verticalDrag-jO51t88", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DragGestureDetectorKt {
    private static final PointerDirectionConfig HorizontalPointerDirectionConfig = new PointerDirectionConfig() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$HorizontalPointerDirectionConfig$1
        @Override // androidx.compose.foundation.gestures.PointerDirectionConfig
        /* renamed from: mainAxisDelta-k-4lQ0M, reason: not valid java name */
        public float mo287mainAxisDeltak4lQ0M(long offset) {
            return Offset.m2400getXimpl(offset);
        }

        @Override // androidx.compose.foundation.gestures.PointerDirectionConfig
        /* renamed from: crossAxisDelta-k-4lQ0M, reason: not valid java name */
        public float mo286crossAxisDeltak4lQ0M(long offset) {
            return Offset.m2401getYimpl(offset);
        }

        @Override // androidx.compose.foundation.gestures.PointerDirectionConfig
        /* renamed from: offsetFromChanges-dBAh8RU, reason: not valid java name */
        public long mo288offsetFromChangesdBAh8RU(float mainChange, float crossChange) {
            return OffsetKt.Offset(mainChange, crossChange);
        }
    };
    private static final PointerDirectionConfig VerticalPointerDirectionConfig = new PointerDirectionConfig() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$VerticalPointerDirectionConfig$1
        @Override // androidx.compose.foundation.gestures.PointerDirectionConfig
        /* renamed from: mainAxisDelta-k-4lQ0M */
        public float mo287mainAxisDeltak4lQ0M(long offset) {
            return Offset.m2401getYimpl(offset);
        }

        @Override // androidx.compose.foundation.gestures.PointerDirectionConfig
        /* renamed from: crossAxisDelta-k-4lQ0M */
        public float mo286crossAxisDeltak4lQ0M(long offset) {
            return Offset.m2400getXimpl(offset);
        }

        @Override // androidx.compose.foundation.gestures.PointerDirectionConfig
        /* renamed from: offsetFromChanges-dBAh8RU */
        public long mo288offsetFromChangesdBAh8RU(float mainChange, float crossChange) {
            return OffsetKt.Offset(crossChange, mainChange);
        }
    };
    private static final float defaultTouchSlop;
    private static final float mouseSlop;
    private static final float mouseToTouchSlopRatio;

    public static final PointerDirectionConfig getHorizontalPointerDirectionConfig() {
        return HorizontalPointerDirectionConfig;
    }

    public static final PointerDirectionConfig getVerticalPointerDirectionConfig() {
        return VerticalPointerDirectionConfig;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0151 -> B:18:0x00bd). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x01b6 -> B:11:0x01c1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0201 -> B:17:0x01cc). Please report as a decompilation issue!!! */
    /* renamed from: awaitTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m275awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit> r22, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r23) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m275awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0049 -> B:10:0x004c). Please report as a decompilation issue!!! */
    /* renamed from: drag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m281dragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r4, long r5, kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super java.lang.Boolean> r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            if (r0 == 0) goto L14
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r4 = r0.L$1
            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
            kotlin.ResultKt.throwOnFailure(r8)
            r7 = r4
            r4 = r5
            goto L4c
        L34:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
        L3f:
            r0.L$0 = r4
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r8 = m266awaitDragOrCancellationrnUCldI(r4, r5, r0)
            if (r8 != r1) goto L4c
            return r1
        L4c:
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto L56
            r4 = 0
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r4
        L56:
            boolean r5 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUpIgnoreConsumed(r8)
            if (r5 == 0) goto L61
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r4
        L61:
            r7.invoke(r8)
            long r5 = r8.getId()
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m281dragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00cb, code lost:
    
        if (androidx.compose.ui.input.pointer.PointerEventKt.positionChangedIgnoreConsumed(r11) != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0068 -> B:10:0x006d). Please report as a decompilation issue!!! */
    /* renamed from: awaitDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m266awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m266awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object detectDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$2
                /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                public final void m289invokek4lQ0M(long j) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m289invokek4lQ0M(offset.getPackedValue());
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function12 = function1;
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$3
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function0;
        if ((i & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        return detectDragGestures(pointerInputScope, function12, function03, function02, function2, continuation);
    }

    public static final Object detectDragGestures(PointerInputScope pointerInputScope, Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super Unit> continuation) {
        Object awaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new DragGestureDetectorKt$detectDragGestures$5(function1, function2, function02, function0, null), continuation);
        return awaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? awaitEachGesture : Unit.INSTANCE;
    }

    public static /* synthetic */ Object detectDragGesturesAfterLongPress$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$2
                /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                public final void m290invokek4lQ0M(long j) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m290invokek4lQ0M(offset.getPackedValue());
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function12 = function1;
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$3
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function0;
        if ((i & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        return detectDragGesturesAfterLongPress(pointerInputScope, function12, function03, function02, function2, continuation);
    }

    public static final Object detectDragGesturesAfterLongPress(PointerInputScope pointerInputScope, Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super Unit> continuation) {
        Object awaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new DragGestureDetectorKt$detectDragGesturesAfterLongPress$5(function1, function0, function02, function2, null), continuation);
        return awaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? awaitEachGesture : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0150 -> B:18:0x00ba). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x01b2 -> B:11:0x01bb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x01fd -> B:17:0x01c6). Please report as a decompilation issue!!! */
    /* renamed from: awaitVerticalTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m278awaitVerticalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r23, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m278awaitVerticalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x014d -> B:17:0x01c1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x01ab -> B:11:0x01b7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x01f8 -> B:17:0x01c1). Please report as a decompilation issue!!! */
    /* renamed from: awaitVerticalPointerSlopOrCancellation-gDDlDlE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m277awaitVerticalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope r21, long r22, int r24, kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r25, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r26) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m277awaitVerticalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f0, code lost:
    
        if ((!r0) != false) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x007e -> B:10:0x0084). Please report as a decompilation issue!!! */
    /* renamed from: verticalDrag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m285verticalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, kotlin.Unit> r21, kotlin.coroutines.Continuation<? super java.lang.Boolean> r22) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m285verticalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d7, code lost:
    
        if (((androidx.compose.ui.geometry.Offset.m2401getYimpl(androidx.compose.ui.input.pointer.PointerEventKt.positionChangeIgnoreConsumed(r11)) == 0.0f ? 1 : 0) ^ 1) != 0) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0068 -> B:10:0x006d). Please report as a decompilation issue!!! */
    /* renamed from: awaitVerticalDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m276awaitVerticalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m276awaitVerticalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object detectVerticalDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$2
                /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                public final void m292invokek4lQ0M(long j) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m292invokek4lQ0M(offset.getPackedValue());
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function12 = function1;
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$3
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function0;
        if ((i & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        return detectVerticalDragGestures(pointerInputScope, function12, function03, function02, function2, continuation);
    }

    public static final Object detectVerticalDragGestures(PointerInputScope pointerInputScope, Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super Unit> continuation) {
        Object awaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new DragGestureDetectorKt$detectVerticalDragGestures$5(function1, function2, function0, function02, null), continuation);
        return awaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? awaitEachGesture : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0150 -> B:18:0x00ba). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x01b2 -> B:11:0x01bb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x01fd -> B:17:0x01c6). Please report as a decompilation issue!!! */
    /* renamed from: awaitHorizontalTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m270awaitHorizontalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r23, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m270awaitHorizontalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x014d -> B:17:0x01c1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x01ab -> B:11:0x01b7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x01f8 -> B:17:0x01c1). Please report as a decompilation issue!!! */
    /* renamed from: awaitHorizontalPointerSlopOrCancellation-gDDlDlE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m269awaitHorizontalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope r21, long r22, int r24, kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r25, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r26) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m269awaitHorizontalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f0, code lost:
    
        if ((!r0) != false) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x007e -> B:10:0x0084). Please report as a decompilation issue!!! */
    /* renamed from: horizontalDrag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m282horizontalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, kotlin.Unit> r21, kotlin.coroutines.Continuation<? super java.lang.Boolean> r22) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m282horizontalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d7, code lost:
    
        if (((androidx.compose.ui.geometry.Offset.m2400getXimpl(androidx.compose.ui.input.pointer.PointerEventKt.positionChangeIgnoreConsumed(r11)) == 0.0f ? 1 : 0) ^ 1) != 0) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0068 -> B:10:0x006d). Please report as a decompilation issue!!! */
    /* renamed from: awaitHorizontalDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m268awaitHorizontalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m268awaitHorizontalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object detectHorizontalDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$2
                /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                public final void m291invokek4lQ0M(long j) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m291invokek4lQ0M(offset.getPackedValue());
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function12 = function1;
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$3
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function0;
        if ((i & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        return detectHorizontalDragGestures(pointerInputScope, function12, function03, function02, function2, continuation);
    }

    public static final Object detectHorizontalDragGestures(PointerInputScope pointerInputScope, Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super Unit> continuation) {
        Object awaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new DragGestureDetectorKt$detectHorizontalDragGestures$5(function1, function2, function0, function02, null), continuation);
        return awaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? awaitEachGesture : Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x010e, code lost:
    
        if ((!(r2.invoke(r15).floatValue() == 0.0f)) != false) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0090 -> B:10:0x0096). Please report as a decompilation issue!!! */
    /* renamed from: drag-VnAYq1g, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m279dragVnAYq1g(androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, kotlin.Unit> r22, kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float> r23, kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Boolean> r24, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r25) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m279dragVnAYq1g(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: drag-VnAYq1g$$forInline, reason: not valid java name */
    private static final Object m280dragVnAYq1g$$forInline(AwaitPointerEventScope awaitPointerEventScope, long j, Function1<? super PointerInputChange, Unit> function1, Function1<? super PointerInputChange, Float> function12, Function1<? super PointerInputChange, Boolean> function13, Continuation<? super PointerInputChange> continuation) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        PointerInputChange pointerInputChange3;
        long j2 = j;
        if (m283isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j2)) {
            return null;
        }
        while (true) {
            Ref.LongRef longRef = new Ref.LongRef();
            longRef.element = j2;
            while (true) {
                InlineMarker.mark(0);
                Object awaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, continuation, 1, null);
                InlineMarker.mark(1);
                PointerEvent pointerEvent = (PointerEvent) awaitPointerEvent$default;
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int size = changes.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        pointerInputChange = null;
                        break;
                    }
                    pointerInputChange = changes.get(i);
                    if (Boolean.valueOf(PointerId.m3741equalsimpl0(pointerInputChange.getId(), longRef.element)).booleanValue()) {
                        break;
                    }
                    i++;
                }
                pointerInputChange2 = pointerInputChange;
                if (pointerInputChange2 == null) {
                    pointerInputChange2 = null;
                    break;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange2)) {
                    List<PointerInputChange> changes2 = pointerEvent.getChanges();
                    int size2 = changes2.size();
                    while (true) {
                        if (r1 >= size2) {
                            pointerInputChange3 = null;
                            break;
                        }
                        pointerInputChange3 = changes2.get(r1);
                        if (Boolean.valueOf(pointerInputChange3.getPressed()).booleanValue()) {
                            break;
                        }
                        r1++;
                    }
                    PointerInputChange pointerInputChange4 = pointerInputChange3;
                    if (pointerInputChange4 == null) {
                        break;
                    }
                    longRef.element = pointerInputChange4.getId();
                } else {
                    if (Boolean.valueOf((function12.invoke(pointerInputChange2).floatValue() == 0.0f ? 1 : 0) ^ 1).booleanValue()) {
                        break;
                    }
                }
            }
            if (pointerInputChange2 == null || function13.invoke(pointerInputChange2).booleanValue()) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange2)) {
                return pointerInputChange2;
            }
            function1.invoke(pointerInputChange2);
            j2 = pointerInputChange2.getId();
        }
    }

    /* renamed from: awaitDragOrUp-jO51t88, reason: not valid java name */
    private static final Object m267awaitDragOrUpjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j, Function1<? super PointerInputChange, Boolean> function1, Continuation<? super PointerInputChange> continuation) {
        PointerInputChange pointerInputChange;
        Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = j;
        while (true) {
            int i = 0;
            InlineMarker.mark(0);
            PointerInputChange pointerInputChange2 = null;
            Object awaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, continuation, 1, null);
            InlineMarker.mark(1);
            PointerEvent pointerEvent = (PointerEvent) awaitPointerEvent$default;
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    pointerInputChange = null;
                    break;
                }
                pointerInputChange = changes.get(i2);
                if (Boolean.valueOf(PointerId.m3741equalsimpl0(pointerInputChange.getId(), longRef.element)).booleanValue()) {
                    break;
                }
                i2++;
            }
            PointerInputChange pointerInputChange3 = pointerInputChange;
            if (pointerInputChange3 == null) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                int size2 = changes2.size();
                while (true) {
                    if (i >= size2) {
                        break;
                    }
                    PointerInputChange pointerInputChange4 = changes2.get(i);
                    if (Boolean.valueOf(pointerInputChange4.getPressed()).booleanValue()) {
                        pointerInputChange2 = pointerInputChange4;
                        break;
                    }
                    i++;
                }
                PointerInputChange pointerInputChange5 = pointerInputChange2;
                if (pointerInputChange5 == null) {
                    return pointerInputChange3;
                }
                longRef.element = pointerInputChange5.getId();
            } else if (function1.invoke(pointerInputChange3).booleanValue()) {
                return pointerInputChange3;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x01b5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x01ab -> B:11:0x01af). Please report as a decompilation issue!!! */
    /* renamed from: awaitPointerSlopOrCancellation-wtdNQyU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m272awaitPointerSlopOrCancellationwtdNQyU(androidx.compose.ui.input.pointer.AwaitPointerEventScope r21, long r22, int r24, androidx.compose.foundation.gestures.PointerDirectionConfig r25, boolean r26, kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit> r27, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r28) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m272awaitPointerSlopOrCancellationwtdNQyU(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, androidx.compose.foundation.gestures.PointerDirectionConfig, boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ef, code lost:
    
        if (r3 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f1, code lost:
    
        r9 = r2.mo288offsetFromChangesdBAh8RU(r10 - (java.lang.Math.signum(r10) * r23), r11);
        r5 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0111, code lost:
    
        r24.invoke(r4, androidx.compose.ui.geometry.Offset.m2389boximpl(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x011e, code lost:
    
        if (r4.isConsumed() == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0120, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ff, code lost:
    
        r9 = r2.mo288offsetFromChangesdBAh8RU(r10, r11);
        r11 = androidx.compose.ui.geometry.Offset.m2395divtuRUvjQ(r9, r5);
        r5 = r23;
        r9 = androidx.compose.ui.geometry.Offset.m2404minusMKHz9U(r9, androidx.compose.ui.geometry.Offset.m2407timestuRUvjQ(r11, r5));
     */
    /* renamed from: awaitPointerSlopOrCancellation-wtdNQyU$default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object m274awaitPointerSlopOrCancellationwtdNQyU$default(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, int r21, androidx.compose.foundation.gestures.PointerDirectionConfig r22, boolean r23, kotlin.jvm.functions.Function2 r24, kotlin.coroutines.Continuation r25, int r26, java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m274awaitPointerSlopOrCancellationwtdNQyU$default(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, androidx.compose.foundation.gestures.PointerDirectionConfig, boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation, int, java.lang.Object):java.lang.Object");
    }

    /* renamed from: awaitPointerSlopOrCancellation-wtdNQyU$$forInline, reason: not valid java name */
    private static final Object m273awaitPointerSlopOrCancellationwtdNQyU$$forInline(AwaitPointerEventScope awaitPointerEventScope, long j, int i, PointerDirectionConfig pointerDirectionConfig, boolean z, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        float f;
        PointerInputChange pointerInputChange;
        float m2398getDistanceimpl;
        long m2404minusMKHz9U;
        PointerInputChange pointerInputChange2;
        if (m283isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j)) {
            return null;
        }
        float m284pointerSlopE8SPZFQ = m284pointerSlopE8SPZFQ(awaitPointerEventScope.getViewConfiguration(), i);
        Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = j;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (true) {
            InlineMarker.mark(0);
            Object awaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, continuation, 1, null);
            InlineMarker.mark(1);
            PointerEvent pointerEvent = (PointerEvent) awaitPointerEvent$default;
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    f = f2;
                    pointerInputChange = null;
                    break;
                }
                pointerInputChange = changes.get(i2);
                f = f2;
                if (Boolean.valueOf(PointerId.m3741equalsimpl0(pointerInputChange.getId(), longRef.element)).booleanValue()) {
                    break;
                }
                i2++;
                f2 = f;
            }
            PointerInputChange pointerInputChange3 = pointerInputChange;
            if (pointerInputChange3 == null || pointerInputChange3.isConsumed()) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                int size2 = changes2.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        pointerInputChange2 = null;
                        break;
                    }
                    pointerInputChange2 = changes2.get(i3);
                    if (Boolean.valueOf(pointerInputChange2.getPressed()).booleanValue()) {
                        break;
                    }
                    i3++;
                }
                PointerInputChange pointerInputChange4 = pointerInputChange2;
                if (pointerInputChange4 == null) {
                    return null;
                }
                longRef.element = pointerInputChange4.getId();
            } else {
                long position = pointerInputChange3.getPosition();
                long previousPosition = pointerInputChange3.getPreviousPosition();
                float mo287mainAxisDeltak4lQ0M = f + (pointerDirectionConfig.mo287mainAxisDeltak4lQ0M(position) - pointerDirectionConfig.mo287mainAxisDeltak4lQ0M(previousPosition));
                f3 += pointerDirectionConfig.mo286crossAxisDeltak4lQ0M(position) - pointerDirectionConfig.mo286crossAxisDeltak4lQ0M(previousPosition);
                if (z) {
                    m2398getDistanceimpl = Math.abs(mo287mainAxisDeltak4lQ0M);
                } else {
                    m2398getDistanceimpl = Offset.m2398getDistanceimpl(pointerDirectionConfig.mo288offsetFromChangesdBAh8RU(mo287mainAxisDeltak4lQ0M, f3));
                }
                if (m2398getDistanceimpl < m284pointerSlopE8SPZFQ) {
                    PointerEventPass pointerEventPass = PointerEventPass.Final;
                    InlineMarker.mark(0);
                    awaitPointerEventScope.awaitPointerEvent(pointerEventPass, continuation);
                    InlineMarker.mark(1);
                    if (pointerInputChange3.isConsumed()) {
                        return null;
                    }
                    f = mo287mainAxisDeltak4lQ0M;
                } else {
                    if (z) {
                        m2404minusMKHz9U = pointerDirectionConfig.mo288offsetFromChangesdBAh8RU(mo287mainAxisDeltak4lQ0M - (Math.signum(mo287mainAxisDeltak4lQ0M) * m284pointerSlopE8SPZFQ), f3);
                    } else {
                        long mo288offsetFromChangesdBAh8RU = pointerDirectionConfig.mo288offsetFromChangesdBAh8RU(mo287mainAxisDeltak4lQ0M, f3);
                        m2404minusMKHz9U = Offset.m2404minusMKHz9U(mo288offsetFromChangesdBAh8RU, Offset.m2407timestuRUvjQ(Offset.m2395divtuRUvjQ(mo288offsetFromChangesdBAh8RU, m2398getDistanceimpl), m284pointerSlopE8SPZFQ));
                    }
                    function2.invoke(pointerInputChange3, Offset.m2389boximpl(m2404minusMKHz9U));
                    if (pointerInputChange3.isConsumed()) {
                        return pointerInputChange3;
                    }
                    f3 = 0.0f;
                    f = 0.0f;
                    f2 = f;
                }
            }
            f2 = f;
        }
    }

    static {
        float m4883constructorimpl = Dp.m4883constructorimpl((float) 0.125d);
        mouseSlop = m4883constructorimpl;
        float m4883constructorimpl2 = Dp.m4883constructorimpl(18);
        defaultTouchSlop = m4883constructorimpl2;
        mouseToTouchSlopRatio = m4883constructorimpl / m4883constructorimpl2;
    }

    public static final PointerDirectionConfig toPointerDirectionConfig(Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<this>");
        return orientation == Orientation.Vertical ? VerticalPointerDirectionConfig : HorizontalPointerDirectionConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r10v2, types: [androidx.compose.ui.input.pointer.PointerInputChange, T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v6, types: [androidx.compose.ui.input.pointer.PointerInputChange] */
    /* renamed from: awaitLongPressOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m271awaitLongPressOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, long r10, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1
            if (r0 == 0) goto L14
            r0 = r12
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r9 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r9 = (kotlin.jvm.internal.Ref.ObjectRef) r9
            java.lang.Object r10 = r0.L$0
            androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9e
            goto La7
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.compose.ui.input.pointer.PointerEvent r12 = r9.getCurrentEvent()
            boolean r12 = m283isPointerUpDmW0f2w(r12, r10)
            if (r12 == 0) goto L4a
            return r4
        L4a:
            androidx.compose.ui.input.pointer.PointerEvent r12 = r9.getCurrentEvent()
            java.util.List r12 = r12.getChanges()
            int r2 = r12.size()
            r5 = 0
        L57:
            if (r5 >= r2) goto L6e
            java.lang.Object r6 = r12.get(r5)
            r7 = r6
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            long r7 = r7.getId()
            boolean r7 = androidx.compose.ui.input.pointer.PointerId.m3741equalsimpl0(r7, r10)
            if (r7 == 0) goto L6b
            goto L6f
        L6b:
            int r5 = r5 + 1
            goto L57
        L6e:
            r6 = r4
        L6f:
            r10 = r6
            androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
            if (r10 != 0) goto L75
            return r4
        L75:
            kotlin.jvm.internal.Ref$ObjectRef r11 = new kotlin.jvm.internal.Ref$ObjectRef
            r11.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r12 = new kotlin.jvm.internal.Ref$ObjectRef
            r12.<init>()
            r12.element = r10
            androidx.compose.ui.platform.ViewConfiguration r2 = r9.getViewConfiguration()
            long r5 = r2.getLongPressTimeoutMillis()
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2 r2 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9d
            r2.<init>(r12, r11, r4)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9d
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9d
            r0.L$0 = r10     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9d
            r0.L$1 = r11     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9d
            r0.label = r3     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9d
            java.lang.Object r9 = r9.withTimeout(r5, r2, r0)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L9d
            if (r9 != r1) goto La7
            return r1
        L9d:
            r9 = r11
        L9e:
            T r9 = r9.element
            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
            if (r9 != 0) goto La6
            r4 = r10
            goto La7
        La6:
            r4 = r9
        La7:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m271awaitLongPressOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isPointerUp-DmW0f2w, reason: not valid java name */
    public static final boolean m283isPointerUpDmW0f2w(PointerEvent pointerEvent, long j) {
        PointerInputChange pointerInputChange;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                pointerInputChange = null;
                break;
            }
            pointerInputChange = changes.get(i);
            if (PointerId.m3741equalsimpl0(pointerInputChange.getId(), j)) {
                break;
            }
            i++;
        }
        PointerInputChange pointerInputChange2 = pointerInputChange;
        if (pointerInputChange2 != null && pointerInputChange2.getPressed()) {
            z = true;
        }
        return true ^ z;
    }

    /* renamed from: pointerSlop-E8SPZFQ, reason: not valid java name */
    public static final float m284pointerSlopE8SPZFQ(ViewConfiguration pointerSlop, int i) {
        Intrinsics.checkNotNullParameter(pointerSlop, "$this$pointerSlop");
        return PointerType.m3829equalsimpl0(i, PointerType.INSTANCE.m3834getMouseT8wyACA()) ? pointerSlop.getTouchSlop() * mouseToTouchSlopRatio : pointerSlop.getTouchSlop();
    }
}
