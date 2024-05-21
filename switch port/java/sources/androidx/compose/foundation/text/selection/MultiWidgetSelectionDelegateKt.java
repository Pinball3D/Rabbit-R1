package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: MultiWidgetSelectionDelegate.kt */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a5\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\n\u0010\u000b\u001a-\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013\u001ak\u0010\u0014\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00050\u00152\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u001c\u001a\u00020\u0005H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u001e\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"getAssembledSelectionInfo", "Landroidx/compose/foundation/text/selection/Selection;", "newSelectionRange", "Landroidx/compose/ui/text/TextRange;", "handlesCrossed", "", "selectableId", "", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "getAssembledSelectionInfo-vJH6DeI", "(JZJLandroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/foundation/text/selection/Selection;", "getOffsetForPosition", "", "bounds", "Landroidx/compose/ui/geometry/Rect;", "position", "Landroidx/compose/ui/geometry/Offset;", "getOffsetForPosition-0AR0LA0", "(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;J)I", "getTextSelectionInfo", "Lkotlin/Pair;", "startHandlePosition", "endHandlePosition", "previousHandlePosition", "adjustment", "Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "previousSelection", "isStartHandle", "getTextSelectionInfo-yM0VcXU", "(Landroidx/compose/ui/text/TextLayoutResult;JJLandroidx/compose/ui/geometry/Offset;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;Z)Lkotlin/Pair;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MultiWidgetSelectionDelegateKt {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x008f, code lost:
    
        if (r1 != false) goto L21;
     */
    /* renamed from: getTextSelectionInfo-yM0VcXU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.Pair<androidx.compose.foundation.text.selection.Selection, java.lang.Boolean> m891getTextSelectionInfoyM0VcXU(androidx.compose.ui.text.TextLayoutResult r15, long r16, long r18, androidx.compose.ui.geometry.Offset r20, long r21, androidx.compose.foundation.text.selection.SelectionAdjustment r23, androidx.compose.foundation.text.selection.Selection r24, boolean r25) {
        /*
            r7 = r15
            r8 = r24
            java.lang.String r0 = "textLayoutResult"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.lang.String r0 = "adjustment"
            r1 = r23
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            androidx.compose.ui.geometry.Rect r0 = new androidx.compose.ui.geometry.Rect
            long r2 = r15.getSize()
            int r2 = androidx.compose.ui.unit.IntSize.m5043getWidthimpl(r2)
            float r2 = (float) r2
            long r3 = r15.getSize()
            int r3 = androidx.compose.ui.unit.IntSize.m5042getHeightimpl(r3)
            float r3 = (float) r3
            r4 = 0
            r0.<init>(r4, r4, r2, r3)
            androidx.compose.foundation.text.selection.SelectionMode r9 = androidx.compose.foundation.text.selection.SelectionMode.Vertical
            r10 = r0
            r11 = r16
            r13 = r18
            boolean r2 = r9.m943isSelected2x9bVx0$foundation_release(r10, r11, r13)
            r9 = 0
            r3 = 0
            if (r2 != 0) goto L41
            kotlin.Pair r0 = new kotlin.Pair
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r9)
            r0.<init>(r3, r1)
            return r0
        L41:
            r4 = r16
            int r10 = m890getOffsetForPosition0AR0LA0(r15, r0, r4)
            r4 = r18
            int r11 = m890getOffsetForPosition0AR0LA0(r15, r0, r4)
            if (r20 == 0) goto L58
            long r4 = r20.getPackedValue()
            int r0 = m890getOffsetForPosition0AR0LA0(r15, r0, r4)
            goto L59
        L58:
            r0 = -1
        L59:
            r12 = r0
            long r4 = androidx.compose.ui.text.TextRangeKt.TextRange(r10, r11)
            if (r8 == 0) goto L6a
            long r2 = r24.m894toTextRanged9O1mEE()
            androidx.compose.ui.text.TextRange r0 = androidx.compose.ui.text.TextRange.m4402boximpl(r2)
            r6 = r0
            goto L6b
        L6a:
            r6 = r3
        L6b:
            r0 = r23
            r1 = r15
            r2 = r4
            r4 = r12
            r5 = r25
            long r0 = r0.mo895adjustZXO7KMw(r1, r2, r4, r5, r6)
            boolean r2 = androidx.compose.ui.text.TextRange.m4413getReversedimpl(r0)
            r3 = r21
            r5 = r15
            androidx.compose.foundation.text.selection.Selection r0 = m889getAssembledSelectionInfovJH6DeI(r0, r2, r3, r5)
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r8)
            r2 = 1
            r1 = r1 ^ r2
            if (r25 == 0) goto L8c
            if (r10 == r12) goto L8f
            goto L91
        L8c:
            if (r11 == r12) goto L8f
            goto L91
        L8f:
            if (r1 == 0) goto L92
        L91:
            r9 = r2
        L92:
            kotlin.Pair r1 = new kotlin.Pair
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r9)
            r1.<init>(r0, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegateKt.m891getTextSelectionInfoyM0VcXU(androidx.compose.ui.text.TextLayoutResult, long, long, androidx.compose.ui.geometry.Offset, long, androidx.compose.foundation.text.selection.SelectionAdjustment, androidx.compose.foundation.text.selection.Selection, boolean):kotlin.Pair");
    }

    /* renamed from: getOffsetForPosition-0AR0LA0, reason: not valid java name */
    public static final int m890getOffsetForPosition0AR0LA0(TextLayoutResult textLayoutResult, Rect bounds, long j) {
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        int length = textLayoutResult.getLayoutInput().getText().length();
        if (bounds.m2426containsk4lQ0M(j)) {
            return RangesKt.coerceIn(textLayoutResult.m4386getOffsetForPositionk4lQ0M(j), 0, length);
        }
        if (SelectionMode.Vertical.mo942compare3MmeM6k$foundation_release(j, bounds) < 0) {
            return 0;
        }
        return length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAssembledSelectionInfo-vJH6DeI, reason: not valid java name */
    public static final Selection m889getAssembledSelectionInfovJH6DeI(long j, boolean z, long j2, TextLayoutResult textLayoutResult) {
        return new Selection(new Selection.AnchorInfo(textLayoutResult.getBidiRunDirection(TextRange.m4414getStartimpl(j)), TextRange.m4414getStartimpl(j), j2), new Selection.AnchorInfo(textLayoutResult.getBidiRunDirection(Math.max(TextRange.m4409getEndimpl(j) - 1, 0)), TextRange.m4409getEndimpl(j), j2), z);
    }
}
