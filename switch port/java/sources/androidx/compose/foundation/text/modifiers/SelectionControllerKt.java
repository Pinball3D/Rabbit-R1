package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextPointerIcon_androidKt;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SelectionController.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a<\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a+\u0010\f\u001a\u00020\u000b*\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"makeSelectionModifier", "Landroidx/compose/ui/Modifier;", "Landroidx/compose/foundation/text/selection/SelectionRegistrar;", "selectableId", "", "layoutCoordinates", "Lkotlin/Function0;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "isInTouchMode", "", "outOfBoundary", "start", "Landroidx/compose/ui/geometry/Offset;", "end", "outOfBoundary-2x9bVx0", "(Landroidx/compose/ui/text/TextLayoutResult;JJ)Z", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectionControllerKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeSelectionModifier$mouseSelectionObserver$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v1, types: [androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1, java.lang.Object] */
    public static final Modifier makeSelectionModifier(final SelectionRegistrar selectionRegistrar, final long j, final Function0<? extends LayoutCoordinates> function0, final Function0<TextLayoutResult> function02, boolean z) {
        if (z) {
            ?? r12 = new TextDragObserver() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1
                private long lastPosition = Offset.INSTANCE.m2416getZeroF1C5BW0();
                private long dragTotalDistance = Offset.INSTANCE.m2416getZeroF1C5BW0();

                public final long getDragTotalDistance() {
                    return this.dragTotalDistance;
                }

                public final long getLastPosition() {
                    return this.lastPosition;
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                /* renamed from: onDown-k-4lQ0M */
                public void mo811onDownk4lQ0M(long point) {
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void onUp() {
                }

                public final void setDragTotalDistance(long j2) {
                    this.dragTotalDistance = j2;
                }

                public final void setLastPosition(long j2) {
                    this.lastPosition = j2;
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                /* renamed from: onStart-k-4lQ0M */
                public void mo813onStartk4lQ0M(long startPoint) {
                    boolean m871outOfBoundary2x9bVx0;
                    LayoutCoordinates invoke = function0.invoke();
                    if (invoke != null) {
                        Function0<TextLayoutResult> function03 = function02;
                        SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                        long j2 = j;
                        if (!invoke.isAttached()) {
                            return;
                        }
                        m871outOfBoundary2x9bVx0 = SelectionControllerKt.m871outOfBoundary2x9bVx0(function03.invoke(), startPoint, startPoint);
                        if (m871outOfBoundary2x9bVx0) {
                            selectionRegistrar2.notifySelectionUpdateSelectAll(j2);
                        } else {
                            selectionRegistrar2.mo945notifySelectionUpdateStartd4ec7I(invoke, startPoint, SelectionAdjustment.INSTANCE.getWord());
                        }
                        this.lastPosition = startPoint;
                    }
                    if (SelectionRegistrarKt.hasSelection(selectionRegistrar, j)) {
                        this.dragTotalDistance = Offset.INSTANCE.m2416getZeroF1C5BW0();
                    }
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                /* renamed from: onDrag-k-4lQ0M */
                public void mo812onDragk4lQ0M(long delta) {
                    boolean m871outOfBoundary2x9bVx0;
                    LayoutCoordinates invoke = function0.invoke();
                    if (invoke != null) {
                        SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                        long j2 = j;
                        Function0<TextLayoutResult> function03 = function02;
                        if (invoke.isAttached() && SelectionRegistrarKt.hasSelection(selectionRegistrar2, j2)) {
                            long m2405plusMKHz9U = Offset.m2405plusMKHz9U(this.dragTotalDistance, delta);
                            this.dragTotalDistance = m2405plusMKHz9U;
                            long m2405plusMKHz9U2 = Offset.m2405plusMKHz9U(this.lastPosition, m2405plusMKHz9U);
                            m871outOfBoundary2x9bVx0 = SelectionControllerKt.m871outOfBoundary2x9bVx0(function03.invoke(), this.lastPosition, m2405plusMKHz9U2);
                            if (m871outOfBoundary2x9bVx0 || !selectionRegistrar2.mo944notifySelectionUpdate5iVPX68(invoke, m2405plusMKHz9U2, this.lastPosition, false, SelectionAdjustment.INSTANCE.getCharacterWithWordAccelerate())) {
                                return;
                            }
                            this.lastPosition = m2405plusMKHz9U2;
                            this.dragTotalDistance = Offset.INSTANCE.m2416getZeroF1C5BW0();
                        }
                    }
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void onStop() {
                    if (SelectionRegistrarKt.hasSelection(selectionRegistrar, j)) {
                        selectionRegistrar.notifySelectionUpdateEnd();
                    }
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void onCancel() {
                    if (SelectionRegistrarKt.hasSelection(selectionRegistrar, j)) {
                        selectionRegistrar.notifySelectionUpdateEnd();
                    }
                }
            };
            return SuspendingPointerInputFilterKt.pointerInput(Modifier.INSTANCE, (Object) r12, new SelectionControllerKt$makeSelectionModifier$1(r12, null));
        }
        ?? r11 = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeSelectionModifier$mouseSelectionObserver$1
            private long lastPosition = Offset.INSTANCE.m2416getZeroF1C5BW0();

            public final long getLastPosition() {
                return this.lastPosition;
            }

            public final void setLastPosition(long j2) {
                this.lastPosition = j2;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onExtend-k-4lQ0M, reason: not valid java name */
            public boolean mo873onExtendk4lQ0M(long downPosition) {
                LayoutCoordinates invoke = function0.invoke();
                if (invoke == null) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j2 = j;
                if (!invoke.isAttached()) {
                    return false;
                }
                if (selectionRegistrar2.mo944notifySelectionUpdate5iVPX68(invoke, downPosition, this.lastPosition, false, SelectionAdjustment.INSTANCE.getNone())) {
                    this.lastPosition = downPosition;
                }
                return SelectionRegistrarKt.hasSelection(selectionRegistrar2, j2);
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onExtendDrag-k-4lQ0M, reason: not valid java name */
            public boolean mo874onExtendDragk4lQ0M(long dragPosition) {
                LayoutCoordinates invoke = function0.invoke();
                if (invoke == null) {
                    return true;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j2 = j;
                if (!invoke.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrar2, j2)) {
                    return false;
                }
                if (!selectionRegistrar2.mo944notifySelectionUpdate5iVPX68(invoke, dragPosition, this.lastPosition, false, SelectionAdjustment.INSTANCE.getNone())) {
                    return true;
                }
                this.lastPosition = dragPosition;
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onStart-3MmeM6k, reason: not valid java name */
            public boolean mo875onStart3MmeM6k(long downPosition, SelectionAdjustment adjustment) {
                Intrinsics.checkNotNullParameter(adjustment, "adjustment");
                LayoutCoordinates invoke = function0.invoke();
                if (invoke == null) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j2 = j;
                if (!invoke.isAttached()) {
                    return false;
                }
                selectionRegistrar2.mo945notifySelectionUpdateStartd4ec7I(invoke, downPosition, adjustment);
                this.lastPosition = downPosition;
                return SelectionRegistrarKt.hasSelection(selectionRegistrar2, j2);
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onDrag-3MmeM6k, reason: not valid java name */
            public boolean mo872onDrag3MmeM6k(long dragPosition, SelectionAdjustment adjustment) {
                Intrinsics.checkNotNullParameter(adjustment, "adjustment");
                LayoutCoordinates invoke = function0.invoke();
                if (invoke == null) {
                    return true;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j2 = j;
                if (!invoke.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrar2, j2)) {
                    return false;
                }
                if (!selectionRegistrar2.mo944notifySelectionUpdate5iVPX68(invoke, dragPosition, this.lastPosition, false, adjustment)) {
                    return true;
                }
                this.lastPosition = dragPosition;
                return true;
            }
        };
        return PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(Modifier.INSTANCE, (Object) r11, new SelectionControllerKt$makeSelectionModifier$2(r11, null)), TextPointerIcon_androidKt.getTextPointerIcon(), false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: outOfBoundary-2x9bVx0, reason: not valid java name */
    public static final boolean m871outOfBoundary2x9bVx0(TextLayoutResult textLayoutResult, long j, long j2) {
        if (textLayoutResult == null) {
            return false;
        }
        int length = textLayoutResult.getLayoutInput().getText().getText().length();
        int m4386getOffsetForPositionk4lQ0M = textLayoutResult.m4386getOffsetForPositionk4lQ0M(j);
        int m4386getOffsetForPositionk4lQ0M2 = textLayoutResult.m4386getOffsetForPositionk4lQ0M(j2);
        int i = length - 1;
        return (m4386getOffsetForPositionk4lQ0M >= i && m4386getOffsetForPositionk4lQ0M2 >= i) || (m4386getOffsetForPositionk4lQ0M < 0 && m4386getOffsetForPositionk4lQ0M2 < 0);
    }
}
