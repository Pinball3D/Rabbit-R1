package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.Device;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: RowColumnImpl.kt */
@Metadata(d1 = {"\u0000p\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a.\u0010\u0012\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001a.\u0010\u0018\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001a.\u0010\u0019\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001a.\u0010\u001a\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001ad\u0010\u001b\u001a\u00020\u00152\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00142\u001d\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e¢\u0006\u0002\b\u001f2\u001d\u0010 \u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e¢\u0006\u0002\b\u001f2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015H\u0002\u001aE\u0010#\u001a\u00020\u00152\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00142\u001d\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e¢\u0006\u0002\b\u001f2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015H\u0002\u001at\u0010%\u001a\u00020\u00152\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00142\u001d\u0010&\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e¢\u0006\u0002\b\u001f2\u001d\u0010'\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001e¢\u0006\u0002\b\u001f2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\u0017H\u0002\u001aa\u0010*\u001a\u00020+2\u0006\u0010\u0016\u001a\u00020\u00172*\u0010,\u001a&\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002010-2\u0006\u00102\u001a\u0002032\u0006\u0010 \u001a\u0002042\u0006\u0010\u0000\u001a\u00020\u0001H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b5\u00106\"\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u00020\u0006*\u0004\u0018\u00010\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u001a\u0010\t\u001a\u00020\u0006*\u0004\u0018\u00010\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\b\"\u001a\u0010\n\u001a\u0004\u0018\u00010\u0002*\u00020\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r\"\u001a\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00067"}, d2 = {"crossAxisAlignment", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "Landroidx/compose/foundation/layout/RowColumnParentData;", "getCrossAxisAlignment", "(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;", "fill", "", "getFill", "(Landroidx/compose/foundation/layout/RowColumnParentData;)Z", "isRelative", "rowColumnParentData", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "getRowColumnParentData", "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;", "weight", "", "getWeight", "(Landroidx/compose/foundation/layout/RowColumnParentData;)F", "MaxIntrinsicHeightMeasureBlock", "Lkotlin/Function3;", "", "", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/layout/LayoutOrientation;", "MaxIntrinsicWidthMeasureBlock", "MinIntrinsicHeightMeasureBlock", "MinIntrinsicWidthMeasureBlock", "intrinsicCrossAxisSize", ViewHierarchyNode.JsonKeys.CHILDREN, "mainAxisSize", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "crossAxisSize", "mainAxisAvailable", "mainAxisSpacing", "intrinsicMainAxisSize", "crossAxisAvailable", "intrinsicSize", "intrinsicMainSize", "intrinsicCrossSize", "layoutOrientation", "intrinsicOrientation", "rowColumnMeasurePolicy", "Landroidx/compose/ui/layout/MeasurePolicy;", "arrangement", "Lkotlin/Function5;", "", "Landroidx/compose/ui/unit/LayoutDirection;", "Landroidx/compose/ui/unit/Density;", "", "arrangementSpacing", "Landroidx/compose/ui/unit/Dp;", "Landroidx/compose/foundation/layout/SizeMode;", "rowColumnMeasurePolicy-TDGSqEk", "(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RowColumnImplKt {
    public static final /* synthetic */ int access$intrinsicSize(List list, Function2 function2, Function2 function22, int i, int i2, LayoutOrientation layoutOrientation, LayoutOrientation layoutOrientation2) {
        return intrinsicSize(list, function2, function22, i, i2, layoutOrientation, layoutOrientation2);
    }

    /* renamed from: rowColumnMeasurePolicy-TDGSqEk */
    public static final MeasurePolicy m515rowColumnMeasurePolicyTDGSqEk(final LayoutOrientation orientation, final Function5<? super Integer, ? super int[], ? super LayoutDirection, ? super Density, ? super int[], Unit> arrangement, final float f, final SizeMode crossAxisSize, final CrossAxisAlignment crossAxisAlignment) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(arrangement, "arrangement");
        Intrinsics.checkNotNullParameter(crossAxisSize, "crossAxisSize");
        Intrinsics.checkNotNullParameter(crossAxisAlignment, "crossAxisAlignment");
        return new MeasurePolicy() { // from class: androidx.compose.foundation.layout.RowColumnImplKt$rowColumnMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo21measure3p2s80s(final MeasureScope measure, List<? extends Measurable> measurables, long j) {
                int crossAxisSize2;
                int mainAxisSize;
                Intrinsics.checkNotNullParameter(measure, "$this$measure");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                final RowColumnMeasurementHelper rowColumnMeasurementHelper = new RowColumnMeasurementHelper(LayoutOrientation.this, arrangement, f, crossAxisSize, crossAxisAlignment, measurables, new Placeable[measurables.size()], null);
                final RowColumnMeasureHelperResult m517measureWithoutPlacing_EkL_Y = rowColumnMeasurementHelper.m517measureWithoutPlacing_EkL_Y(measure, j, 0, measurables.size());
                if (LayoutOrientation.this == LayoutOrientation.Horizontal) {
                    crossAxisSize2 = m517measureWithoutPlacing_EkL_Y.getMainAxisSize();
                    mainAxisSize = m517measureWithoutPlacing_EkL_Y.getCrossAxisSize();
                } else {
                    crossAxisSize2 = m517measureWithoutPlacing_EkL_Y.getCrossAxisSize();
                    mainAxisSize = m517measureWithoutPlacing_EkL_Y.getMainAxisSize();
                }
                return MeasureScope.layout$default(measure, crossAxisSize2, mainAxisSize, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1
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
                        RowColumnMeasurementHelper.this.placeHelper(layout, m517measureWithoutPlacing_EkL_Y, 0, measure.getLayoutDirection());
                    }
                }, 4, null);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
                Function3 MinIntrinsicWidthMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MinIntrinsicWidthMeasureBlock = RowColumnImplKt.MinIntrinsicWidthMeasureBlock(LayoutOrientation.this);
                return ((Number) MinIntrinsicWidthMeasureBlock.invoke(measurables, Integer.valueOf(i), Integer.valueOf(intrinsicMeasureScope.mo329roundToPx0680j_4(f)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
                Function3 MinIntrinsicHeightMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MinIntrinsicHeightMeasureBlock = RowColumnImplKt.MinIntrinsicHeightMeasureBlock(LayoutOrientation.this);
                return ((Number) MinIntrinsicHeightMeasureBlock.invoke(measurables, Integer.valueOf(i), Integer.valueOf(intrinsicMeasureScope.mo329roundToPx0680j_4(f)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
                Function3 MaxIntrinsicWidthMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MaxIntrinsicWidthMeasureBlock = RowColumnImplKt.MaxIntrinsicWidthMeasureBlock(LayoutOrientation.this);
                return ((Number) MaxIntrinsicWidthMeasureBlock.invoke(measurables, Integer.valueOf(i), Integer.valueOf(intrinsicMeasureScope.mo329roundToPx0680j_4(f)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
                Function3 MaxIntrinsicHeightMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MaxIntrinsicHeightMeasureBlock = RowColumnImplKt.MaxIntrinsicHeightMeasureBlock(LayoutOrientation.this);
                return ((Number) MaxIntrinsicHeightMeasureBlock.invoke(measurables, Integer.valueOf(i), Integer.valueOf(intrinsicMeasureScope.mo329roundToPx0680j_4(f)))).intValue();
            }
        };
    }

    public static final RowColumnParentData getRowColumnParentData(IntrinsicMeasurable intrinsicMeasurable) {
        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "<this>");
        Object parentData = intrinsicMeasurable.getParentData();
        if (parentData instanceof RowColumnParentData) {
            return (RowColumnParentData) parentData;
        }
        return null;
    }

    public static final float getWeight(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.getWeight();
        }
        return 0.0f;
    }

    public static final boolean getFill(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.getFill();
        }
        return true;
    }

    public static final CrossAxisAlignment getCrossAxisAlignment(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.getCrossAxisAlignment();
        }
        return null;
    }

    public static final boolean isRelative(RowColumnParentData rowColumnParentData) {
        CrossAxisAlignment crossAxisAlignment = getCrossAxisAlignment(rowColumnParentData);
        if (crossAxisAlignment != null) {
            return crossAxisAlignment.isRelative$foundation_layout_release();
        }
        return false;
    }

    public static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MinIntrinsicWidthMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMinWidth();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMinWidth();
    }

    public static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MinIntrinsicHeightMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMinHeight();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMinHeight();
    }

    public static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MaxIntrinsicWidthMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMaxWidth();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMaxWidth();
    }

    public static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MaxIntrinsicHeightMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMaxHeight();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMaxHeight();
    }

    public static final int intrinsicSize(List<? extends IntrinsicMeasurable> list, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function22, int i, int i2, LayoutOrientation layoutOrientation, LayoutOrientation layoutOrientation2) {
        if (layoutOrientation == layoutOrientation2) {
            return intrinsicMainAxisSize(list, function2, i, i2);
        }
        return intrinsicCrossAxisSize(list, function22, function2, i, i2);
    }

    private static final int intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function22, int i, int i2) {
        int roundToInt;
        int min = Math.min((list.size() - 1) * i2, i);
        int size = list.size();
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i4);
            float weight = getWeight(getRowColumnParentData(intrinsicMeasurable));
            if (weight == 0.0f) {
                int min2 = Math.min(function2.invoke(intrinsicMeasurable, Integer.MAX_VALUE).intValue(), i - min);
                min += min2;
                i3 = Math.max(i3, function22.invoke(intrinsicMeasurable, Integer.valueOf(min2)).intValue());
            } else if (weight > 0.0f) {
                f += weight;
            }
        }
        if (f == 0.0f) {
            roundToInt = 0;
        } else {
            roundToInt = i == Integer.MAX_VALUE ? Integer.MAX_VALUE : MathKt.roundToInt(Math.max(i - min, 0) / f);
        }
        int size2 = list.size();
        for (int i5 = 0; i5 < size2; i5++) {
            IntrinsicMeasurable intrinsicMeasurable2 = list.get(i5);
            float weight2 = getWeight(getRowColumnParentData(intrinsicMeasurable2));
            if (weight2 > 0.0f) {
                i3 = Math.max(i3, function22.invoke(intrinsicMeasurable2, Integer.valueOf(roundToInt != Integer.MAX_VALUE ? MathKt.roundToInt(roundToInt * weight2) : Integer.MAX_VALUE)).intValue());
            }
        }
        return i3;
    }

    private static final int intrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2, int i, int i2) {
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i5);
            float weight = getWeight(getRowColumnParentData(intrinsicMeasurable));
            int intValue = function2.invoke(intrinsicMeasurable, Integer.valueOf(i)).intValue();
            if (weight == 0.0f) {
                i4 += intValue;
            } else if (weight > 0.0f) {
                f += weight;
                i3 = Math.max(i3, MathKt.roundToInt(intValue / weight));
            }
        }
        return MathKt.roundToInt(i3 * f) + i4 + ((list.size() - 1) * i2);
    }
}
