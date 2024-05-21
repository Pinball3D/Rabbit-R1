package androidx.compose.material3;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J5\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/PlainTooltipPositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "tooltipAnchorPadding", "", "(I)V", "getTooltipAnchorPadding", "()I", "calculatePosition", "Landroidx/compose/ui/unit/IntOffset;", "anchorBounds", "Landroidx/compose/ui/unit/IntRect;", "windowSize", "Landroidx/compose/ui/unit/IntSize;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "popupContentSize", "calculatePosition-llwVHH4", "(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class PlainTooltipPositionProvider implements PopupPositionProvider {
    private final int tooltipAnchorPadding;

    public final int getTooltipAnchorPadding() {
        return this.tooltipAnchorPadding;
    }

    public PlainTooltipPositionProvider(int i) {
        this.tooltipAnchorPadding = i;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public long mo884calculatePositionllwVHH4(IntRect anchorBounds, long windowSize, LayoutDirection layoutDirection, long popupContentSize) {
        Intrinsics.checkNotNullParameter(anchorBounds, "anchorBounds");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        int left = anchorBounds.getLeft() + ((anchorBounds.getWidth() - IntSize.m5043getWidthimpl(popupContentSize)) / 2);
        int top = (anchorBounds.getTop() - IntSize.m5042getHeightimpl(popupContentSize)) - this.tooltipAnchorPadding;
        if (top < 0) {
            top = anchorBounds.getBottom() + this.tooltipAnchorPadding;
        }
        return IntOffsetKt.IntOffset(left, top);
    }
}
