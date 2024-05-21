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
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: AspectRatio.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0019\u0010\u0010\u001a\u00020\u0011*\u00020\u0012H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001c\u0010\u0015\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\u001c\u0010\u001b\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0016H\u0016J)\u0010\u001d\u001a\u00020\u001e*\u00020\u001f2\u0006\u0010\u0018\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0012H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\"\u0010#J\u001c\u0010$\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\u001c\u0010%\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0016H\u0016J#\u0010&\u001a\u00020\u0011*\u00020\u00122\b\b\u0002\u0010'\u001a\u00020\u0006H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b(\u0010)J#\u0010*\u001a\u00020\u0011*\u00020\u00122\b\b\u0002\u0010'\u001a\u00020\u0006H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010)J#\u0010,\u001a\u00020\u0011*\u00020\u00122\b\b\u0002\u0010'\u001a\u00020\u0006H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u0010)J#\u0010.\u001a\u00020\u0011*\u00020\u00122\b\b\u0002\u0010'\u001a\u00020\u0006H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b/\u0010)R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00060"}, d2 = {"Landroidx/compose/foundation/layout/AspectRatioNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "aspectRatio", "", "matchHeightConstraintsFirst", "", "(FZ)V", "getAspectRatio", "()F", "setAspectRatio", "(F)V", "getMatchHeightConstraintsFirst", "()Z", "setMatchHeightConstraintsFirst", "(Z)V", "findSize", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/ui/unit/Constraints;", "findSize-ToXhtMw", "(J)J", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "tryMaxHeight", "enforceConstraints", "tryMaxHeight-JN-0ABg", "(JZ)J", "tryMaxWidth", "tryMaxWidth-JN-0ABg", "tryMinHeight", "tryMinHeight-JN-0ABg", "tryMinWidth", "tryMinWidth-JN-0ABg", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class AspectRatioNode extends Modifier.Node implements LayoutModifierNode {
    private float aspectRatio;
    private boolean matchHeightConstraintsFirst;

    public final float getAspectRatio() {
        return this.aspectRatio;
    }

    public final boolean getMatchHeightConstraintsFirst() {
        return this.matchHeightConstraintsFirst;
    }

    public final void setAspectRatio(float f) {
        this.aspectRatio = f;
    }

    public final void setMatchHeightConstraintsFirst(boolean z) {
        this.matchHeightConstraintsFirst = z;
    }

    public AspectRatioNode(float f, boolean z) {
        this.aspectRatio = f;
        this.matchHeightConstraintsFirst = z;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m418findSizeToXhtMw = m418findSizeToXhtMw(j);
        if (!IntSize.m5041equalsimpl0(m418findSizeToXhtMw, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
            j = Constraints.INSTANCE.m4847fixedJhjzzOo(IntSize.m5043getWidthimpl(m418findSizeToXhtMw), IntSize.m5042getHeightimpl(m418findSizeToXhtMw));
        }
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
        return MeasureScope.layout$default(measure, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.AspectRatioNode$measure$1
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
        if (i != Integer.MAX_VALUE) {
            return MathKt.roundToInt(i * this.aspectRatio);
        }
        return measurable.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (i != Integer.MAX_VALUE) {
            return MathKt.roundToInt(i * this.aspectRatio);
        }
        return measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (i != Integer.MAX_VALUE) {
            return MathKt.roundToInt(i / this.aspectRatio);
        }
        return measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (i != Integer.MAX_VALUE) {
            return MathKt.roundToInt(i / this.aspectRatio);
        }
        return measurable.maxIntrinsicHeight(i);
    }

    /* renamed from: findSize-ToXhtMw, reason: not valid java name */
    private final long m418findSizeToXhtMw(long j) {
        if (!this.matchHeightConstraintsFirst) {
            long m422tryMaxWidthJN0ABg$default = m422tryMaxWidthJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m422tryMaxWidthJN0ABg$default, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m422tryMaxWidthJN0ABg$default;
            }
            long m420tryMaxHeightJN0ABg$default = m420tryMaxHeightJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m420tryMaxHeightJN0ABg$default, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m420tryMaxHeightJN0ABg$default;
            }
            long m426tryMinWidthJN0ABg$default = m426tryMinWidthJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m426tryMinWidthJN0ABg$default, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m426tryMinWidthJN0ABg$default;
            }
            long m424tryMinHeightJN0ABg$default = m424tryMinHeightJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m424tryMinHeightJN0ABg$default, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m424tryMinHeightJN0ABg$default;
            }
            long m421tryMaxWidthJN0ABg = m421tryMaxWidthJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m421tryMaxWidthJN0ABg, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m421tryMaxWidthJN0ABg;
            }
            long m419tryMaxHeightJN0ABg = m419tryMaxHeightJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m419tryMaxHeightJN0ABg, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m419tryMaxHeightJN0ABg;
            }
            long m425tryMinWidthJN0ABg = m425tryMinWidthJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m425tryMinWidthJN0ABg, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m425tryMinWidthJN0ABg;
            }
            long m423tryMinHeightJN0ABg = m423tryMinHeightJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m423tryMinHeightJN0ABg, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m423tryMinHeightJN0ABg;
            }
        } else {
            long m420tryMaxHeightJN0ABg$default2 = m420tryMaxHeightJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m420tryMaxHeightJN0ABg$default2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m420tryMaxHeightJN0ABg$default2;
            }
            long m422tryMaxWidthJN0ABg$default2 = m422tryMaxWidthJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m422tryMaxWidthJN0ABg$default2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m422tryMaxWidthJN0ABg$default2;
            }
            long m424tryMinHeightJN0ABg$default2 = m424tryMinHeightJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m424tryMinHeightJN0ABg$default2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m424tryMinHeightJN0ABg$default2;
            }
            long m426tryMinWidthJN0ABg$default2 = m426tryMinWidthJN0ABg$default(this, j, false, 1, null);
            if (!IntSize.m5041equalsimpl0(m426tryMinWidthJN0ABg$default2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m426tryMinWidthJN0ABg$default2;
            }
            long m419tryMaxHeightJN0ABg2 = m419tryMaxHeightJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m419tryMaxHeightJN0ABg2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m419tryMaxHeightJN0ABg2;
            }
            long m421tryMaxWidthJN0ABg2 = m421tryMaxWidthJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m421tryMaxWidthJN0ABg2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m421tryMaxWidthJN0ABg2;
            }
            long m423tryMinHeightJN0ABg2 = m423tryMinHeightJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m423tryMinHeightJN0ABg2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m423tryMinHeightJN0ABg2;
            }
            long m425tryMinWidthJN0ABg2 = m425tryMinWidthJN0ABg(j, false);
            if (!IntSize.m5041equalsimpl0(m425tryMinWidthJN0ABg2, IntSize.INSTANCE.m5048getZeroYbymL2g())) {
                return m425tryMinWidthJN0ABg2;
            }
        }
        return IntSize.INSTANCE.m5048getZeroYbymL2g();
    }

    /* renamed from: tryMaxWidth-JN-0ABg$default, reason: not valid java name */
    static /* synthetic */ long m422tryMaxWidthJN0ABg$default(AspectRatioNode aspectRatioNode, long j, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return aspectRatioNode.m421tryMaxWidthJN0ABg(j, z);
    }

    /* renamed from: tryMaxWidth-JN-0ABg, reason: not valid java name */
    private final long m421tryMaxWidthJN0ABg(long j, boolean z) {
        int roundToInt;
        int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j);
        if (m4839getMaxWidthimpl != Integer.MAX_VALUE && (roundToInt = MathKt.roundToInt(m4839getMaxWidthimpl / this.aspectRatio)) > 0) {
            long IntSize = IntSizeKt.IntSize(m4839getMaxWidthimpl, roundToInt);
            if (!z || ConstraintsKt.m4854isSatisfiedBy4WqzIAM(j, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.INSTANCE.m5048getZeroYbymL2g();
    }

    /* renamed from: tryMaxHeight-JN-0ABg$default, reason: not valid java name */
    static /* synthetic */ long m420tryMaxHeightJN0ABg$default(AspectRatioNode aspectRatioNode, long j, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return aspectRatioNode.m419tryMaxHeightJN0ABg(j, z);
    }

    /* renamed from: tryMaxHeight-JN-0ABg, reason: not valid java name */
    private final long m419tryMaxHeightJN0ABg(long j, boolean z) {
        int roundToInt;
        int m4838getMaxHeightimpl = Constraints.m4838getMaxHeightimpl(j);
        if (m4838getMaxHeightimpl != Integer.MAX_VALUE && (roundToInt = MathKt.roundToInt(m4838getMaxHeightimpl * this.aspectRatio)) > 0) {
            long IntSize = IntSizeKt.IntSize(roundToInt, m4838getMaxHeightimpl);
            if (!z || ConstraintsKt.m4854isSatisfiedBy4WqzIAM(j, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.INSTANCE.m5048getZeroYbymL2g();
    }

    /* renamed from: tryMinWidth-JN-0ABg$default, reason: not valid java name */
    static /* synthetic */ long m426tryMinWidthJN0ABg$default(AspectRatioNode aspectRatioNode, long j, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return aspectRatioNode.m425tryMinWidthJN0ABg(j, z);
    }

    /* renamed from: tryMinWidth-JN-0ABg, reason: not valid java name */
    private final long m425tryMinWidthJN0ABg(long j, boolean z) {
        int m4841getMinWidthimpl = Constraints.m4841getMinWidthimpl(j);
        int roundToInt = MathKt.roundToInt(m4841getMinWidthimpl / this.aspectRatio);
        if (roundToInt > 0) {
            long IntSize = IntSizeKt.IntSize(m4841getMinWidthimpl, roundToInt);
            if (!z || ConstraintsKt.m4854isSatisfiedBy4WqzIAM(j, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.INSTANCE.m5048getZeroYbymL2g();
    }

    /* renamed from: tryMinHeight-JN-0ABg$default, reason: not valid java name */
    static /* synthetic */ long m424tryMinHeightJN0ABg$default(AspectRatioNode aspectRatioNode, long j, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return aspectRatioNode.m423tryMinHeightJN0ABg(j, z);
    }

    /* renamed from: tryMinHeight-JN-0ABg, reason: not valid java name */
    private final long m423tryMinHeightJN0ABg(long j, boolean z) {
        int m4840getMinHeightimpl = Constraints.m4840getMinHeightimpl(j);
        int roundToInt = MathKt.roundToInt(m4840getMinHeightimpl * this.aspectRatio);
        if (roundToInt > 0) {
            long IntSize = IntSizeKt.IntSize(roundToInt, m4840getMinHeightimpl);
            if (!z || ConstraintsKt.m4854isSatisfiedBy4WqzIAM(j, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.INSTANCE.m5048getZeroYbymL2g();
    }
}
