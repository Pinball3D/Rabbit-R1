package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: Size.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B8\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\tø\u0001\u0000¢\u0006\u0002\u0010\nJ\u001c\u0010\u001f\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020 H\u0016J\u001c\u0010%\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010&\u001a\u00020 H\u0016J)\u0010'\u001a\u00020(*\u00020)2\u0006\u0010\"\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001bH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b,\u0010-J\u001c\u0010.\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020 H\u0016J\u001c\u0010/\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010&\u001a\u00020 H\u0016R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR%\u0010\u0007\u001a\u00020\u0004X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R%\u0010\u0006\u001a\u00020\u0004X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R%\u0010\u0005\u001a\u00020\u0004X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0016\u0010\u0010\"\u0004\b\u0017\u0010\u0012R%\u0010\u0003\u001a\u00020\u0004X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0018\u0010\u0010\"\u0004\b\u0019\u0010\u0012R!\u0010\u001a\u001a\u00020\u001b*\u00020\u001c8BX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00060"}, d2 = {"Landroidx/compose/foundation/layout/SizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "minWidth", "Landroidx/compose/ui/unit/Dp;", "minHeight", "maxWidth", "maxHeight", "enforceIncoming", "", "(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getEnforceIncoming", "()Z", "setEnforceIncoming", "(Z)V", "getMaxHeight-D9Ej5fM", "()F", "setMaxHeight-0680j_4", "(F)V", "F", "getMaxWidth-D9Ej5fM", "setMaxWidth-0680j_4", "getMinHeight-D9Ej5fM", "setMinHeight-0680j_4", "getMinWidth-D9Ej5fM", "setMinWidth-0680j_4", "targetConstraints", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/unit/Density;", "getTargetConstraints-OenEA2s", "(Landroidx/compose/ui/unit/Density;)J", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    private boolean enforceIncoming;
    private float maxHeight;
    private float maxWidth;
    private float minHeight;
    private float minWidth;

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, z);
    }

    public final boolean getEnforceIncoming() {
        return this.enforceIncoming;
    }

    /* renamed from: getMaxHeight-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMaxHeight() {
        return this.maxHeight;
    }

    /* renamed from: getMaxWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMaxWidth() {
        return this.maxWidth;
    }

    /* renamed from: getMinHeight-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinHeight() {
        return this.minHeight;
    }

    /* renamed from: getMinWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinWidth() {
        return this.minWidth;
    }

    public final void setEnforceIncoming(boolean z) {
        this.enforceIncoming = z;
    }

    /* renamed from: setMaxHeight-0680j_4, reason: not valid java name */
    public final void m550setMaxHeight0680j_4(float f) {
        this.maxHeight = f;
    }

    /* renamed from: setMaxWidth-0680j_4, reason: not valid java name */
    public final void m551setMaxWidth0680j_4(float f) {
        this.maxWidth = f;
    }

    /* renamed from: setMinHeight-0680j_4, reason: not valid java name */
    public final void m552setMinHeight0680j_4(float f) {
        this.minHeight = f;
    }

    /* renamed from: setMinWidth-0680j_4, reason: not valid java name */
    public final void m553setMinWidth0680j_4(float f) {
        this.minWidth = f;
    }

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM() : f2, (i & 4) != 0 ? Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM() : f3, (i & 8) != 0 ? Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM() : f4, z, null);
    }

    private SizeNode(float f, float f2, float f3, float f4, boolean z) {
        this.minWidth = f;
        this.minHeight = f2;
        this.maxWidth = f3;
        this.maxHeight = f4;
        this.enforceIncoming = z;
    }

    /* renamed from: getTargetConstraints-OenEA2s, reason: not valid java name */
    private final long m545getTargetConstraintsOenEA2s(Density density) {
        int i;
        int coerceAtLeast;
        int i2 = 0;
        int coerceAtLeast2 = !Dp.m4888equalsimpl0(this.maxWidth, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) ? RangesKt.coerceAtLeast(density.mo329roundToPx0680j_4(this.maxWidth), 0) : Integer.MAX_VALUE;
        int coerceAtLeast3 = !Dp.m4888equalsimpl0(this.maxHeight, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) ? RangesKt.coerceAtLeast(density.mo329roundToPx0680j_4(this.maxHeight), 0) : Integer.MAX_VALUE;
        if (Dp.m4888equalsimpl0(this.minWidth, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) || (i = RangesKt.coerceAtLeast(RangesKt.coerceAtMost(density.mo329roundToPx0680j_4(this.minWidth), coerceAtLeast2), 0)) == Integer.MAX_VALUE) {
            i = 0;
        }
        if (!Dp.m4888equalsimpl0(this.minHeight, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) && (coerceAtLeast = RangesKt.coerceAtLeast(RangesKt.coerceAtMost(density.mo329roundToPx0680j_4(this.minHeight), coerceAtLeast3), 0)) != Integer.MAX_VALUE) {
            i2 = coerceAtLeast;
        }
        return ConstraintsKt.Constraints(i, coerceAtLeast2, i2, coerceAtLeast3);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        int coerceAtMost;
        int coerceAtLeast;
        int coerceAtMost2;
        int coerceAtLeast2;
        long Constraints;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m545getTargetConstraintsOenEA2s = m545getTargetConstraintsOenEA2s(measure);
        if (this.enforceIncoming) {
            Constraints = ConstraintsKt.m4851constrainN9IONVI(j, m545getTargetConstraintsOenEA2s);
        } else {
            if (!Dp.m4888equalsimpl0(this.minWidth, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM())) {
                coerceAtMost = Constraints.m4841getMinWidthimpl(m545getTargetConstraintsOenEA2s);
            } else {
                coerceAtMost = RangesKt.coerceAtMost(Constraints.m4841getMinWidthimpl(j), Constraints.m4839getMaxWidthimpl(m545getTargetConstraintsOenEA2s));
            }
            if (!Dp.m4888equalsimpl0(this.maxWidth, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM())) {
                coerceAtLeast = Constraints.m4839getMaxWidthimpl(m545getTargetConstraintsOenEA2s);
            } else {
                coerceAtLeast = RangesKt.coerceAtLeast(Constraints.m4839getMaxWidthimpl(j), Constraints.m4841getMinWidthimpl(m545getTargetConstraintsOenEA2s));
            }
            if (!Dp.m4888equalsimpl0(this.minHeight, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM())) {
                coerceAtMost2 = Constraints.m4840getMinHeightimpl(m545getTargetConstraintsOenEA2s);
            } else {
                coerceAtMost2 = RangesKt.coerceAtMost(Constraints.m4840getMinHeightimpl(j), Constraints.m4838getMaxHeightimpl(m545getTargetConstraintsOenEA2s));
            }
            if (!Dp.m4888equalsimpl0(this.maxHeight, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM())) {
                coerceAtLeast2 = Constraints.m4838getMaxHeightimpl(m545getTargetConstraintsOenEA2s);
            } else {
                coerceAtLeast2 = RangesKt.coerceAtLeast(Constraints.m4838getMaxHeightimpl(j), Constraints.m4840getMinHeightimpl(m545getTargetConstraintsOenEA2s));
            }
            Constraints = ConstraintsKt.Constraints(coerceAtMost, coerceAtLeast, coerceAtMost2, coerceAtLeast2);
        }
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(Constraints);
        return MeasureScope.layout$default(measure, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.SizeNode$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m545getTargetConstraintsOenEA2s = m545getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4837getHasFixedWidthimpl(m545getTargetConstraintsOenEA2s)) {
            return Constraints.m4839getMaxWidthimpl(m545getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4853constrainWidthK40F9xA(m545getTargetConstraintsOenEA2s, measurable.minIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m545getTargetConstraintsOenEA2s = m545getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4836getHasFixedHeightimpl(m545getTargetConstraintsOenEA2s)) {
            return Constraints.m4838getMaxHeightimpl(m545getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4852constrainHeightK40F9xA(m545getTargetConstraintsOenEA2s, measurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m545getTargetConstraintsOenEA2s = m545getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4837getHasFixedWidthimpl(m545getTargetConstraintsOenEA2s)) {
            return Constraints.m4839getMaxWidthimpl(m545getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4853constrainWidthK40F9xA(m545getTargetConstraintsOenEA2s, measurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m545getTargetConstraintsOenEA2s = m545getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4836getHasFixedHeightimpl(m545getTargetConstraintsOenEA2s)) {
            return Constraints.m4838getMaxHeightimpl(m545getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4852constrainHeightK40F9xA(m545getTargetConstraintsOenEA2s, measurable.maxIntrinsicHeight(i));
    }
}
