package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: PainterModifier.kt */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B?\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u001d\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101J\u001d\u00102\u001a\u0002032\u0006\u00104\u001a\u000203H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b5\u00101J\b\u00106\u001a\u000207H\u0016J\f\u00108\u001a\u000209*\u00020:H\u0016J\u0019\u0010;\u001a\u00020\u0007*\u00020.H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b<\u0010=J\u0019\u0010>\u001a\u00020\u0007*\u00020.H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b?\u0010=J\u001c\u0010@\u001a\u00020A*\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020AH\u0016J\u001c\u0010F\u001a\u00020A*\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010G\u001a\u00020AH\u0016J)\u0010H\u001a\u00020I*\u00020J2\u0006\u0010C\u001a\u00020K2\u0006\u00104\u001a\u000203H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bL\u0010MJ\u001c\u0010N\u001a\u00020A*\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020AH\u0016J\u001c\u0010O\u001a\u00020A*\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010G\u001a\u00020AH\u0016R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010'\"\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010'\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006P"}, d2 = {"Landroidx/compose/ui/draw/PainterNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "painter", "Landroidx/compose/ui/graphics/painter/Painter;", "sizeToIntrinsics", "", "alignment", "Landroidx/compose/ui/Alignment;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", ViewHierarchyNode.JsonKeys.ALPHA, "", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V", "getAlignment", "()Landroidx/compose/ui/Alignment;", "setAlignment", "(Landroidx/compose/ui/Alignment;)V", "getAlpha", "()F", "setAlpha", "(F)V", "getColorFilter", "()Landroidx/compose/ui/graphics/ColorFilter;", "setColorFilter", "(Landroidx/compose/ui/graphics/ColorFilter;)V", "getContentScale", "()Landroidx/compose/ui/layout/ContentScale;", "setContentScale", "(Landroidx/compose/ui/layout/ContentScale;)V", "getPainter", "()Landroidx/compose/ui/graphics/painter/Painter;", "setPainter", "(Landroidx/compose/ui/graphics/painter/Painter;)V", "shouldAutoInvalidate", "getShouldAutoInvalidate", "()Z", "getSizeToIntrinsics", "setSizeToIntrinsics", "(Z)V", "useIntrinsicSize", "getUseIntrinsicSize", "calculateScaledSize", "Landroidx/compose/ui/geometry/Size;", "dstSize", "calculateScaledSize-E7KxVPU", "(J)J", "modifyConstraints", "Landroidx/compose/ui/unit/Constraints;", "constraints", "modifyConstraints-ZezNO4M", "toString", "", "draw", "", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "hasSpecifiedAndFiniteHeight", "hasSpecifiedAndFiniteHeight-uvyYCjk", "(J)Z", "hasSpecifiedAndFiniteWidth", "hasSpecifiedAndFiniteWidth-uvyYCjk", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    private Alignment alignment;
    private float alpha;
    private ColorFilter colorFilter;
    private ContentScale contentScale;
    private Painter painter;
    private boolean sizeToIntrinsics;

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    public final ContentScale getContentScale() {
        return this.contentScale;
    }

    public final Painter getPainter() {
        return this.painter;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    public final boolean getSizeToIntrinsics() {
        return this.sizeToIntrinsics;
    }

    public final void setAlignment(Alignment alignment) {
        Intrinsics.checkNotNullParameter(alignment, "<set-?>");
        this.alignment = alignment;
    }

    public final void setAlpha(float f) {
        this.alpha = f;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
    }

    public final void setContentScale(ContentScale contentScale) {
        Intrinsics.checkNotNullParameter(contentScale, "<set-?>");
        this.contentScale = contentScale;
    }

    public final void setPainter(Painter painter) {
        Intrinsics.checkNotNullParameter(painter, "<set-?>");
        this.painter = painter;
    }

    public final void setSizeToIntrinsics(boolean z) {
        this.sizeToIntrinsics = z;
    }

    public /* synthetic */ PainterNode(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(painter, z, (i & 4) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 8) != 0 ? ContentScale.INSTANCE.getInside() : contentScale, (i & 16) != 0 ? 1.0f : f, (i & 32) != 0 ? null : colorFilter);
    }

    public PainterNode(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(painter, "painter");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(contentScale, "contentScale");
        this.painter = painter;
        this.sizeToIntrinsics = z;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.colorFilter = colorFilter;
    }

    private final boolean getUseIntrinsicSize() {
        return this.sizeToIntrinsics && this.painter.getIntrinsicSize() != Size.INSTANCE.m2477getUnspecifiedNHjbRc();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(m2310modifyConstraintsZezNO4M(j));
        return MeasureScope.layout$default(measure, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.draw.PainterNode$measure$1
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
        if (getUseIntrinsicSize()) {
            long m2310modifyConstraintsZezNO4M = m2310modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
            return Math.max(Constraints.m4841getMinWidthimpl(m2310modifyConstraintsZezNO4M), measurable.minIntrinsicWidth(i));
        }
        return measurable.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            long m2310modifyConstraintsZezNO4M = m2310modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
            return Math.max(Constraints.m4841getMinWidthimpl(m2310modifyConstraintsZezNO4M), measurable.maxIntrinsicWidth(i));
        }
        return measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            long m2310modifyConstraintsZezNO4M = m2310modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
            return Math.max(Constraints.m4840getMinHeightimpl(m2310modifyConstraintsZezNO4M), measurable.minIntrinsicHeight(i));
        }
        return measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            long m2310modifyConstraintsZezNO4M = m2310modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
            return Math.max(Constraints.m4840getMinHeightimpl(m2310modifyConstraintsZezNO4M), measurable.maxIntrinsicHeight(i));
        }
        return measurable.maxIntrinsicHeight(i);
    }

    /* renamed from: calculateScaledSize-E7KxVPU, reason: not valid java name */
    private final long m2307calculateScaledSizeE7KxVPU(long dstSize) {
        float m2469getWidthimpl;
        float m2466getHeightimpl;
        if (!getUseIntrinsicSize()) {
            return dstSize;
        }
        if (!m2309hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.getIntrinsicSize())) {
            m2469getWidthimpl = Size.m2469getWidthimpl(dstSize);
        } else {
            m2469getWidthimpl = Size.m2469getWidthimpl(this.painter.getIntrinsicSize());
        }
        if (!m2308hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.getIntrinsicSize())) {
            m2466getHeightimpl = Size.m2466getHeightimpl(dstSize);
        } else {
            m2466getHeightimpl = Size.m2466getHeightimpl(this.painter.getIntrinsicSize());
        }
        long Size = SizeKt.Size(m2469getWidthimpl, m2466getHeightimpl);
        if (Size.m2469getWidthimpl(dstSize) != 0.0f && Size.m2466getHeightimpl(dstSize) != 0.0f) {
            return ScaleFactorKt.m3967timesUQTWf7w(Size, this.contentScale.mo3867computeScaleFactorH7hwNQA(Size, dstSize));
        }
        return Size.INSTANCE.m2478getZeroNHjbRc();
    }

    /* renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    private final long m2310modifyConstraintsZezNO4M(long constraints) {
        int m4841getMinWidthimpl;
        int m4840getMinHeightimpl;
        boolean z = Constraints.m4835getHasBoundedWidthimpl(constraints) && Constraints.m4834getHasBoundedHeightimpl(constraints);
        boolean z2 = Constraints.m4837getHasFixedWidthimpl(constraints) && Constraints.m4836getHasFixedHeightimpl(constraints);
        if ((!getUseIntrinsicSize() && z) || z2) {
            return Constraints.m4830copyZbe2FdA$default(constraints, Constraints.m4839getMaxWidthimpl(constraints), 0, Constraints.m4838getMaxHeightimpl(constraints), 0, 10, null);
        }
        long intrinsicSize = this.painter.getIntrinsicSize();
        if (m2309hasSpecifiedAndFiniteWidthuvyYCjk(intrinsicSize)) {
            m4841getMinWidthimpl = MathKt.roundToInt(Size.m2469getWidthimpl(intrinsicSize));
        } else {
            m4841getMinWidthimpl = Constraints.m4841getMinWidthimpl(constraints);
        }
        if (m2308hasSpecifiedAndFiniteHeightuvyYCjk(intrinsicSize)) {
            m4840getMinHeightimpl = MathKt.roundToInt(Size.m2466getHeightimpl(intrinsicSize));
        } else {
            m4840getMinHeightimpl = Constraints.m4840getMinHeightimpl(constraints);
        }
        long m2307calculateScaledSizeE7KxVPU = m2307calculateScaledSizeE7KxVPU(SizeKt.Size(ConstraintsKt.m4853constrainWidthK40F9xA(constraints, m4841getMinWidthimpl), ConstraintsKt.m4852constrainHeightK40F9xA(constraints, m4840getMinHeightimpl)));
        return Constraints.m4830copyZbe2FdA$default(constraints, ConstraintsKt.m4853constrainWidthK40F9xA(constraints, MathKt.roundToInt(Size.m2469getWidthimpl(m2307calculateScaledSizeE7KxVPU))), 0, ConstraintsKt.m4852constrainHeightK40F9xA(constraints, MathKt.roundToInt(Size.m2466getHeightimpl(m2307calculateScaledSizeE7KxVPU))), 0, 10, null);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        float m2469getWidthimpl;
        float m2466getHeightimpl;
        long m2478getZeroNHjbRc;
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        long intrinsicSize = this.painter.getIntrinsicSize();
        if (m2309hasSpecifiedAndFiniteWidthuvyYCjk(intrinsicSize)) {
            m2469getWidthimpl = Size.m2469getWidthimpl(intrinsicSize);
        } else {
            m2469getWidthimpl = Size.m2469getWidthimpl(contentDrawScope.mo3182getSizeNHjbRc());
        }
        if (m2308hasSpecifiedAndFiniteHeightuvyYCjk(intrinsicSize)) {
            m2466getHeightimpl = Size.m2466getHeightimpl(intrinsicSize);
        } else {
            m2466getHeightimpl = Size.m2466getHeightimpl(contentDrawScope.mo3182getSizeNHjbRc());
        }
        long Size = SizeKt.Size(m2469getWidthimpl, m2466getHeightimpl);
        if (Size.m2469getWidthimpl(contentDrawScope.mo3182getSizeNHjbRc()) != 0.0f && Size.m2466getHeightimpl(contentDrawScope.mo3182getSizeNHjbRc()) != 0.0f) {
            m2478getZeroNHjbRc = ScaleFactorKt.m3967timesUQTWf7w(Size, this.contentScale.mo3867computeScaleFactorH7hwNQA(Size, contentDrawScope.mo3182getSizeNHjbRc()));
        } else {
            m2478getZeroNHjbRc = Size.INSTANCE.m2478getZeroNHjbRc();
        }
        long j = m2478getZeroNHjbRc;
        long mo2290alignKFBX0sM = this.alignment.mo2290alignKFBX0sM(IntSizeKt.IntSize(MathKt.roundToInt(Size.m2469getWidthimpl(j)), MathKt.roundToInt(Size.m2466getHeightimpl(j))), IntSizeKt.IntSize(MathKt.roundToInt(Size.m2469getWidthimpl(contentDrawScope.mo3182getSizeNHjbRc())), MathKt.roundToInt(Size.m2466getHeightimpl(contentDrawScope.mo3182getSizeNHjbRc()))), contentDrawScope.getLayoutDirection());
        float m5001getXimpl = IntOffset.m5001getXimpl(mo2290alignKFBX0sM);
        float m5002getYimpl = IntOffset.m5002getYimpl(mo2290alignKFBX0sM);
        ContentDrawScope contentDrawScope2 = contentDrawScope;
        contentDrawScope2.getDrawContext().getTransform().translate(m5001getXimpl, m5002getYimpl);
        this.painter.m3257drawx_KDEd0(contentDrawScope2, j, this.alpha, this.colorFilter);
        contentDrawScope2.getDrawContext().getTransform().translate(-m5001getXimpl, -m5002getYimpl);
        contentDrawScope.drawContent();
    }

    /* renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk, reason: not valid java name */
    private final boolean m2309hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        if (!Size.m2465equalsimpl0(j, Size.INSTANCE.m2477getUnspecifiedNHjbRc())) {
            float m2469getWidthimpl = Size.m2469getWidthimpl(j);
            if (!Float.isInfinite(m2469getWidthimpl) && !Float.isNaN(m2469getWidthimpl)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk, reason: not valid java name */
    private final boolean m2308hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        if (!Size.m2465equalsimpl0(j, Size.INSTANCE.m2477getUnspecifiedNHjbRc())) {
            float m2466getHeightimpl = Size.m2466getHeightimpl(j);
            if (!Float.isInfinite(m2466getHeightimpl) && !Float.isNaN(m2466getHeightimpl)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }
}
