package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: AlignmentLine.kt */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u001aA\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011\u001a5\u0010\u0012\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015\u001a5\u0010\u0012\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00162\b\b\u0002\u0010\u000b\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0018\u001a-\u0010\u0019\u001a\u00020\u0013*\u00020\u00132\b\b\u0002\u0010\u001a\u001a\u00020\n2\b\b\u0002\u0010\u001b\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001d\u001a-\u0010\u0019\u001a\u00020\u0013*\u00020\u00132\b\b\u0002\u0010\u001a\u001a\u00020\u00162\b\b\u0002\u0010\u001b\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001e\u0010\u001f\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006 "}, d2 = {"horizontal", "", "Landroidx/compose/ui/layout/AlignmentLine;", "getHorizontal", "(Landroidx/compose/ui/layout/AlignmentLine;)Z", "alignmentLineOffsetMeasure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "alignmentLine", "before", "Landroidx/compose/ui/unit/Dp;", "after", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "alignmentLineOffsetMeasure-tjqqzMA", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "paddingFrom", "Landroidx/compose/ui/Modifier;", "paddingFrom-4j6BHR0", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FF)Landroidx/compose/ui/Modifier;", "Landroidx/compose/ui/unit/TextUnit;", "paddingFrom-Y_r0B1c", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;JJ)Landroidx/compose/ui/Modifier;", "paddingFromBaseline", "top", "bottom", "paddingFromBaseline-VpY3zN4", "(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;", "paddingFromBaseline-wCyjxdI", "(Landroidx/compose/ui/Modifier;JJ)Landroidx/compose/ui/Modifier;", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AlignmentLineKt {
    /* renamed from: paddingFrom-4j6BHR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m372paddingFrom4j6BHR0$default(Modifier modifier, AlignmentLine alignmentLine, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM();
        }
        if ((i & 4) != 0) {
            f2 = Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM();
        }
        return m371paddingFrom4j6BHR0(modifier, alignmentLine, f, f2);
    }

    /* renamed from: paddingFrom-4j6BHR0, reason: not valid java name */
    public static final Modifier m371paddingFrom4j6BHR0(Modifier paddingFrom, final AlignmentLine alignmentLine, final float f, final float f2) {
        Intrinsics.checkNotNullParameter(paddingFrom, "$this$paddingFrom");
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        return paddingFrom.then(new AlignmentLineOffsetDpElement(alignmentLine, f, f2, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$paddingFrom-4j6BHR0$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("paddingFrom");
                inspectorInfo.getProperties().set("alignmentLine", AlignmentLine.this);
                inspectorInfo.getProperties().set("before", Dp.m4881boximpl(f));
                inspectorInfo.getProperties().set("after", Dp.m4881boximpl(f2));
            }
        } : InspectableValueKt.getNoInspectorInfo(), null));
    }

    /* renamed from: paddingFrom-Y_r0B1c$default, reason: not valid java name */
    public static /* synthetic */ Modifier m374paddingFromY_r0B1c$default(Modifier modifier, AlignmentLine alignmentLine, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = TextUnit.INSTANCE.m5075getUnspecifiedXSAIIZE();
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = TextUnit.INSTANCE.m5075getUnspecifiedXSAIIZE();
        }
        return m373paddingFromY_r0B1c(modifier, alignmentLine, j3, j2);
    }

    /* renamed from: paddingFrom-Y_r0B1c, reason: not valid java name */
    public static final Modifier m373paddingFromY_r0B1c(Modifier paddingFrom, final AlignmentLine alignmentLine, final long j, final long j2) {
        Intrinsics.checkNotNullParameter(paddingFrom, "$this$paddingFrom");
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        return paddingFrom.then(new AlignmentLineOffsetTextUnitElement(alignmentLine, j, j2, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("paddingFrom");
                inspectorInfo.getProperties().set("alignmentLine", AlignmentLine.this);
                inspectorInfo.getProperties().set("before", TextUnit.m5054boximpl(j));
                inspectorInfo.getProperties().set("after", TextUnit.m5054boximpl(j2));
            }
        } : InspectableValueKt.getNoInspectorInfo(), null));
    }

    /* renamed from: paddingFromBaseline-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m376paddingFromBaselineVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM();
        }
        if ((i & 2) != 0) {
            f2 = Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM();
        }
        return m375paddingFromBaselineVpY3zN4(modifier, f, f2);
    }

    /* renamed from: paddingFromBaseline-VpY3zN4, reason: not valid java name */
    public static final Modifier m375paddingFromBaselineVpY3zN4(Modifier paddingFromBaseline, float f, float f2) {
        Modifier.Companion companion;
        Modifier.Companion companion2;
        Intrinsics.checkNotNullParameter(paddingFromBaseline, "$this$paddingFromBaseline");
        if (!Dp.m4888equalsimpl0(f, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM())) {
            companion = m372paddingFrom4j6BHR0$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), f, 0.0f, 4, null);
        } else {
            companion = Modifier.INSTANCE;
        }
        Modifier then = paddingFromBaseline.then(companion);
        if (!Dp.m4888equalsimpl0(f2, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM())) {
            companion2 = m372paddingFrom4j6BHR0$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0.0f, f2, 2, null);
        } else {
            companion2 = Modifier.INSTANCE;
        }
        return then.then(companion2);
    }

    /* renamed from: paddingFromBaseline-wCyjxdI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m378paddingFromBaselinewCyjxdI$default(Modifier modifier, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = TextUnit.INSTANCE.m5075getUnspecifiedXSAIIZE();
        }
        if ((i & 2) != 0) {
            j2 = TextUnit.INSTANCE.m5075getUnspecifiedXSAIIZE();
        }
        return m377paddingFromBaselinewCyjxdI(modifier, j, j2);
    }

    /* renamed from: paddingFromBaseline-wCyjxdI, reason: not valid java name */
    public static final Modifier m377paddingFromBaselinewCyjxdI(Modifier paddingFromBaseline, long j, long j2) {
        Intrinsics.checkNotNullParameter(paddingFromBaseline, "$this$paddingFromBaseline");
        return paddingFromBaseline.then(!TextUnitKt.m5082isUnspecifiedR2X_6o(j) ? m374paddingFromY_r0B1c$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), j, 0L, 4, null) : Modifier.INSTANCE).then(!TextUnitKt.m5082isUnspecifiedR2X_6o(j2) ? m374paddingFromY_r0B1c$default(Modifier.INSTANCE, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0L, j2, 2, null) : Modifier.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: alignmentLineOffsetMeasure-tjqqzMA, reason: not valid java name */
    public static final MeasureResult m370alignmentLineOffsetMeasuretjqqzMA(MeasureScope measureScope, final AlignmentLine alignmentLine, final float f, float f2, Measurable measurable, long j) {
        int max;
        int height;
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(getHorizontal(alignmentLine) ? Constraints.m4830copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null) : Constraints.m4830copyZbe2FdA$default(j, 0, 0, 0, 0, 14, null));
        int i = mo3876measureBRTryo0.get(alignmentLine);
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        int height2 = getHorizontal(alignmentLine) ? mo3876measureBRTryo0.getHeight() : mo3876measureBRTryo0.getWidth();
        int m4838getMaxHeightimpl = (getHorizontal(alignmentLine) ? Constraints.m4838getMaxHeightimpl(j) : Constraints.m4839getMaxWidthimpl(j)) - height2;
        final int coerceIn = RangesKt.coerceIn((!Dp.m4888equalsimpl0(f, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) ? measureScope.mo329roundToPx0680j_4(f) : 0) - i, 0, m4838getMaxHeightimpl);
        final int coerceIn2 = RangesKt.coerceIn(((!Dp.m4888equalsimpl0(f2, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) ? measureScope.mo329roundToPx0680j_4(f2) : 0) - height2) + i, 0, m4838getMaxHeightimpl - coerceIn);
        if (getHorizontal(alignmentLine)) {
            max = mo3876measureBRTryo0.getWidth();
        } else {
            max = Math.max(mo3876measureBRTryo0.getWidth() + coerceIn + coerceIn2, Constraints.m4841getMinWidthimpl(j));
        }
        final int i2 = max;
        if (getHorizontal(alignmentLine)) {
            height = Math.max(mo3876measureBRTryo0.getHeight() + coerceIn + coerceIn2, Constraints.m4840getMinHeightimpl(j));
        } else {
            height = mo3876measureBRTryo0.getHeight();
        }
        final int i3 = height;
        return MeasureScope.layout$default(measureScope, i2, i3, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$alignmentLineOffsetMeasure$1
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
                boolean horizontal;
                int width;
                boolean horizontal2;
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                horizontal = AlignmentLineKt.getHorizontal(AlignmentLine.this);
                int i4 = 0;
                if (horizontal) {
                    width = 0;
                } else {
                    width = !Dp.m4888equalsimpl0(f, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) ? coerceIn : (i2 - coerceIn2) - mo3876measureBRTryo0.getWidth();
                }
                horizontal2 = AlignmentLineKt.getHorizontal(AlignmentLine.this);
                if (horizontal2) {
                    i4 = !Dp.m4888equalsimpl0(f, Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM()) ? coerceIn : (i3 - coerceIn2) - mo3876measureBRTryo0.getHeight();
                }
                Placeable.PlacementScope.placeRelative$default(layout, mo3876measureBRTryo0, width, i4, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getHorizontal(AlignmentLine alignmentLine) {
        return alignmentLine instanceof HorizontalAlignmentLine;
    }
}
