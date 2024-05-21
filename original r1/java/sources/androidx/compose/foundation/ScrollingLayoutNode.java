package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: Scroll.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u001c\u0010\u0011\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u001c\u0010\u0017\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0012H\u0016J)\u0010\u0019\u001a\u00020\u001a*\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010 J\u001c\u0010!\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u001c\u0010\"\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0012H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\t\"\u0004\b\f\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006#"}, d2 = {"Landroidx/compose/foundation/ScrollingLayoutNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "scrollerState", "Landroidx/compose/foundation/ScrollState;", "isReversed", "", "isVertical", "(Landroidx/compose/foundation/ScrollState;ZZ)V", "()Z", "setReversed", "(Z)V", "setVertical", "getScrollerState", "()Landroidx/compose/foundation/ScrollState;", "setScrollerState", "(Landroidx/compose/foundation/ScrollState;)V", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ScrollingLayoutNode extends Modifier.Node implements LayoutModifierNode {
    private boolean isReversed;
    private boolean isVertical;
    private ScrollState scrollerState;

    public final ScrollState getScrollerState() {
        return this.scrollerState;
    }

    /* renamed from: isReversed, reason: from getter */
    public final boolean getIsReversed() {
        return this.isReversed;
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    public final void setReversed(boolean z) {
        this.isReversed = z;
    }

    public final void setScrollerState(ScrollState scrollState) {
        Intrinsics.checkNotNullParameter(scrollState, "<set-?>");
        this.scrollerState = scrollState;
    }

    public final void setVertical(boolean z) {
        this.isVertical = z;
    }

    public ScrollingLayoutNode(ScrollState scrollerState, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(scrollerState, "scrollerState");
        this.scrollerState = scrollerState;
        this.isReversed = z;
        this.isVertical = z2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        CheckScrollableContainerConstraintsKt.m197checkScrollableContainerConstraintsK40F9xA(j, this.isVertical ? Orientation.Vertical : Orientation.Horizontal);
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j, 0, this.isVertical ? Constraints.m4839getMaxWidthimpl(j) : Integer.MAX_VALUE, 0, this.isVertical ? Integer.MAX_VALUE : Constraints.m4838getMaxHeightimpl(j), 5, null));
        int coerceAtMost = RangesKt.coerceAtMost(mo3876measureBRTryo0.getWidth(), Constraints.m4839getMaxWidthimpl(j));
        int coerceAtMost2 = RangesKt.coerceAtMost(mo3876measureBRTryo0.getHeight(), Constraints.m4838getMaxHeightimpl(j));
        final int height = mo3876measureBRTryo0.getHeight() - coerceAtMost2;
        int width = mo3876measureBRTryo0.getWidth() - coerceAtMost;
        if (!this.isVertical) {
            height = width;
        }
        this.scrollerState.setMaxValue$foundation_release(height);
        this.scrollerState.setViewportSize$foundation_release(this.isVertical ? coerceAtMost2 : coerceAtMost);
        return MeasureScope.layout$default(measure, coerceAtMost, coerceAtMost2, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.ScrollingLayoutNode$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                int coerceIn = RangesKt.coerceIn(ScrollingLayoutNode.this.getScrollerState().getValue(), 0, height);
                int i = ScrollingLayoutNode.this.getIsReversed() ? coerceIn - height : -coerceIn;
                Placeable.PlacementScope.placeRelativeWithLayer$default(layout, mo3876measureBRTryo0, ScrollingLayoutNode.this.getIsVertical() ? 0 : i, ScrollingLayoutNode.this.getIsVertical() ? i : 0, 0.0f, null, 12, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (this.isVertical) {
            return measurable.minIntrinsicWidth(Integer.MAX_VALUE);
        }
        return measurable.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (this.isVertical) {
            return measurable.minIntrinsicHeight(i);
        }
        return measurable.minIntrinsicHeight(Integer.MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (this.isVertical) {
            return measurable.maxIntrinsicWidth(Integer.MAX_VALUE);
        }
        return measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (this.isVertical) {
            return measurable.maxIntrinsicHeight(i);
        }
        return measurable.maxIntrinsicHeight(Integer.MAX_VALUE);
    }
}
