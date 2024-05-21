package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AlignmentLine.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B \u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006ø\u0001\u0000¢\u0006\u0002\u0010\bJ)\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cR%\u0010\u0007\u001a\u00020\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R%\u0010\u0005\u001a\u00020\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001d"}, d2 = {"Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "before", "Landroidx/compose/ui/unit/TextUnit;", "after", "(Landroidx/compose/ui/layout/AlignmentLine;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getAfter-XSAIIZE", "()J", "setAfter--R2X_6o", "(J)V", "J", "getAlignmentLine", "()Landroidx/compose/ui/layout/AlignmentLine;", "setAlignmentLine", "(Landroidx/compose/ui/layout/AlignmentLine;)V", "getBefore-XSAIIZE", "setBefore--R2X_6o", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class AlignmentLineOffsetTextUnitNode extends Modifier.Node implements LayoutModifierNode {
    private long after;
    private AlignmentLine alignmentLine;
    private long before;

    public /* synthetic */ AlignmentLineOffsetTextUnitNode(AlignmentLine alignmentLine, long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignmentLine, j, j2);
    }

    /* renamed from: getAfter-XSAIIZE, reason: not valid java name and from getter */
    public final long getAfter() {
        return this.after;
    }

    public final AlignmentLine getAlignmentLine() {
        return this.alignmentLine;
    }

    /* renamed from: getBefore-XSAIIZE, reason: not valid java name and from getter */
    public final long getBefore() {
        return this.before;
    }

    /* renamed from: setAfter--R2X_6o, reason: not valid java name */
    public final void m389setAfterR2X_6o(long j) {
        this.after = j;
    }

    public final void setAlignmentLine(AlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(alignmentLine, "<set-?>");
        this.alignmentLine = alignmentLine;
    }

    /* renamed from: setBefore--R2X_6o, reason: not valid java name */
    public final void m390setBeforeR2X_6o(long j) {
        this.before = j;
    }

    private AlignmentLineOffsetTextUnitNode(AlignmentLine alignmentLine, long j, long j2) {
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        this.alignmentLine = alignmentLine;
        this.before = j;
        this.after = j2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        MeasureResult m370alignmentLineOffsetMeasuretjqqzMA;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        m370alignmentLineOffsetMeasuretjqqzMA = AlignmentLineKt.m370alignmentLineOffsetMeasuretjqqzMA(measure, this.alignmentLine, !TextUnitKt.m5082isUnspecifiedR2X_6o(this.before) ? measure.mo330toDpGaN1DYA(this.before) : Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM(), !TextUnitKt.m5082isUnspecifiedR2X_6o(this.after) ? measure.mo330toDpGaN1DYA(this.after) : Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM(), measurable, j);
        return m370alignmentLineOffsetMeasuretjqqzMA;
    }
}
