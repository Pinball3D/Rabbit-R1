package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.protocol.Device;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: RowColumnMeasurementHelper.kt */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001Br\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012*\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0005\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015ø\u0001\u0000¢\u0006\u0002\u0010\u0017J2\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00162\b\u0010-\u001a\u0004\u0018\u00010)2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\b2\u0006\u00100\u001a\u00020\u0006H\u0002J(\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00104\u001a\u000205H\u0002J3\u00106\u001a\u0002072\u0006\u00104\u001a\u0002052\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u0006ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b<\u0010=J&\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u0002072\u0006\u0010B\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\bJ\n\u0010\r\u001a\u00020\u0006*\u00020\u0016J\n\u0010C\u001a\u00020\u0006*\u00020\u0016R5\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u000b\u001a\u00020\fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001b\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015¢\u0006\n\n\u0002\u0010'\u001a\u0004\b%\u0010&R\u0018\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0\u0015X\u0082\u0004¢\u0006\u0004\n\u0002\u0010*\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006D"}, d2 = {"Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;", "", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/layout/LayoutOrientation;", "arrangement", "Lkotlin/Function5;", "", "", "Landroidx/compose/ui/unit/LayoutDirection;", "Landroidx/compose/ui/unit/Density;", "", "arrangementSpacing", "Landroidx/compose/ui/unit/Dp;", "crossAxisSize", "Landroidx/compose/foundation/layout/SizeMode;", "crossAxisAlignment", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "measurables", "", "Landroidx/compose/ui/layout/Measurable;", "placeables", "", "Landroidx/compose/ui/layout/Placeable;", "(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getArrangement", "()Lkotlin/jvm/functions/Function5;", "getArrangementSpacing-D9Ej5fM", "()F", "F", "getCrossAxisAlignment", "()Landroidx/compose/foundation/layout/CrossAxisAlignment;", "getCrossAxisSize", "()Landroidx/compose/foundation/layout/SizeMode;", "getMeasurables", "()Ljava/util/List;", "getOrientation", "()Landroidx/compose/foundation/layout/LayoutOrientation;", "getPlaceables", "()[Landroidx/compose/ui/layout/Placeable;", "[Landroidx/compose/ui/layout/Placeable;", "rowColumnParentData", "Landroidx/compose/foundation/layout/RowColumnParentData;", "[Landroidx/compose/foundation/layout/RowColumnParentData;", "getCrossAxisPosition", "placeable", "parentData", "crossAxisLayoutSize", "layoutDirection", "beforeCrossAxisAlignmentLine", "mainAxisPositions", "mainAxisLayoutSize", "childrenMainAxisSize", "measureScope", "Landroidx/compose/ui/layout/MeasureScope;", "measureWithoutPlacing", "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;", "constraints", "Landroidx/compose/ui/unit/Constraints;", SpellCheckPlugin.START_INDEX_KEY, SpellCheckPlugin.END_INDEX_KEY, "measureWithoutPlacing-_EkL_-Y", "(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;", "placeHelper", "placeableScope", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "measureResult", "crossAxisOffset", "mainAxisSize", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RowColumnMeasurementHelper {
    private final Function5<Integer, int[], LayoutDirection, Density, int[], Unit> arrangement;
    private final float arrangementSpacing;
    private final CrossAxisAlignment crossAxisAlignment;
    private final SizeMode crossAxisSize;
    private final List<Measurable> measurables;
    private final LayoutOrientation orientation;
    private final Placeable[] placeables;
    private final RowColumnParentData[] rowColumnParentData;

    public /* synthetic */ RowColumnMeasurementHelper(LayoutOrientation layoutOrientation, Function5 function5, float f, SizeMode sizeMode, CrossAxisAlignment crossAxisAlignment, List list, Placeable[] placeableArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(layoutOrientation, function5, f, sizeMode, crossAxisAlignment, list, placeableArr);
    }

    public final Function5<Integer, int[], LayoutDirection, Density, int[], Unit> getArrangement() {
        return this.arrangement;
    }

    /* renamed from: getArrangementSpacing-D9Ej5fM, reason: not valid java name and from getter */
    public final float getArrangementSpacing() {
        return this.arrangementSpacing;
    }

    public final CrossAxisAlignment getCrossAxisAlignment() {
        return this.crossAxisAlignment;
    }

    public final SizeMode getCrossAxisSize() {
        return this.crossAxisSize;
    }

    public final List<Measurable> getMeasurables() {
        return this.measurables;
    }

    public final LayoutOrientation getOrientation() {
        return this.orientation;
    }

    public final Placeable[] getPlaceables() {
        return this.placeables;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private RowColumnMeasurementHelper(LayoutOrientation orientation, Function5<? super Integer, ? super int[], ? super LayoutDirection, ? super Density, ? super int[], Unit> arrangement, float f, SizeMode crossAxisSize, CrossAxisAlignment crossAxisAlignment, List<? extends Measurable> measurables, Placeable[] placeables) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(arrangement, "arrangement");
        Intrinsics.checkNotNullParameter(crossAxisSize, "crossAxisSize");
        Intrinsics.checkNotNullParameter(crossAxisAlignment, "crossAxisAlignment");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Intrinsics.checkNotNullParameter(placeables, "placeables");
        this.orientation = orientation;
        this.arrangement = arrangement;
        this.arrangementSpacing = f;
        this.crossAxisSize = crossAxisSize;
        this.crossAxisAlignment = crossAxisAlignment;
        this.measurables = measurables;
        this.placeables = placeables;
        int size = measurables.size();
        RowColumnParentData[] rowColumnParentDataArr = new RowColumnParentData[size];
        for (int i = 0; i < size; i++) {
            rowColumnParentDataArr[i] = RowColumnImplKt.getRowColumnParentData(this.measurables.get(i));
        }
        this.rowColumnParentData = rowColumnParentDataArr;
    }

    public final int mainAxisSize(Placeable placeable) {
        Intrinsics.checkNotNullParameter(placeable, "<this>");
        return this.orientation == LayoutOrientation.Horizontal ? placeable.getWidth() : placeable.getHeight();
    }

    public final int crossAxisSize(Placeable placeable) {
        Intrinsics.checkNotNullParameter(placeable, "<this>");
        return this.orientation == LayoutOrientation.Horizontal ? placeable.getHeight() : placeable.getWidth();
    }

    /* renamed from: measureWithoutPlacing-_EkL_-Y, reason: not valid java name */
    public final RowColumnMeasureHelperResult m517measureWithoutPlacing_EkL_Y(MeasureScope measureScope, long constraints, int startIndex, int endIndex) {
        int i;
        int m4841getMinWidthimpl;
        int i2;
        int coerceAtMost;
        int i3;
        int i4;
        int i5;
        int i6;
        int max;
        int i7;
        int i8;
        int i9;
        int i10;
        Intrinsics.checkNotNullParameter(measureScope, "measureScope");
        long m459constructorimpl = OrientationIndependentConstraints.m459constructorimpl(constraints, this.orientation);
        int i11 = measureScope.mo329roundToPx0680j_4(this.arrangementSpacing);
        int i12 = endIndex - startIndex;
        float f = 0.0f;
        int i13 = 0;
        int i14 = startIndex;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        float f2 = 0.0f;
        while (true) {
            i = Integer.MAX_VALUE;
            if (i14 >= endIndex) {
                break;
            }
            Measurable measurable = this.measurables.get(i14);
            RowColumnParentData rowColumnParentData = this.rowColumnParentData[i14];
            float weight = RowColumnImplKt.getWeight(rowColumnParentData);
            if (weight > f) {
                f2 += weight;
                i17++;
                i9 = i14;
                i10 = i13;
            } else {
                int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(m459constructorimpl);
                Placeable placeable = this.placeables[i14];
                if (placeable == null) {
                    i7 = m4839getMaxWidthimpl;
                    i8 = i16;
                    i9 = i14;
                    i10 = i13;
                    placeable = measurable.mo3876measureBRTryo0(OrientationIndependentConstraints.m472toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m461copyyUG9Ft0$default(m459constructorimpl, 0, m4839getMaxWidthimpl == Integer.MAX_VALUE ? Integer.MAX_VALUE : m4839getMaxWidthimpl - i18, 0, 0, 8, null), this.orientation));
                } else {
                    i7 = m4839getMaxWidthimpl;
                    i8 = i16;
                    i9 = i14;
                    i10 = i13;
                }
                int min = Math.min(i11, (i7 - i18) - mainAxisSize(placeable));
                i18 += mainAxisSize(placeable) + min;
                int max2 = Math.max(i8, crossAxisSize(placeable));
                int i20 = (i19 != 0 || RowColumnImplKt.isRelative(rowColumnParentData)) ? 1 : i10;
                this.placeables[i9] = placeable;
                i15 = min;
                i16 = max2;
                i19 = i20;
            }
            i14 = i9 + 1;
            i13 = i10;
            f = 0.0f;
        }
        int i21 = i13;
        int i22 = i16;
        if (i17 == 0) {
            i18 -= i15;
            i2 = i22;
            coerceAtMost = i21;
        } else {
            if (f2 > 0.0f && Constraints.m4839getMaxWidthimpl(m459constructorimpl) != Integer.MAX_VALUE) {
                m4841getMinWidthimpl = Constraints.m4839getMaxWidthimpl(m459constructorimpl);
            } else {
                m4841getMinWidthimpl = Constraints.m4841getMinWidthimpl(m459constructorimpl);
            }
            int i23 = i11 * (i17 - 1);
            int i24 = (m4841getMinWidthimpl - i18) - i23;
            float f3 = f2 > 0.0f ? i24 / f2 : 0.0f;
            Iterator<Integer> it = RangesKt.until(startIndex, endIndex).iterator();
            int i25 = i21;
            while (it.hasNext()) {
                i25 += MathKt.roundToInt(RowColumnImplKt.getWeight(this.rowColumnParentData[((IntIterator) it).nextInt()]) * f3);
            }
            int i26 = i24 - i25;
            int i27 = startIndex;
            i2 = i22;
            int i28 = i21;
            while (i27 < endIndex) {
                if (this.placeables[i27] == null) {
                    Measurable measurable2 = this.measurables.get(i27);
                    RowColumnParentData rowColumnParentData2 = this.rowColumnParentData[i27];
                    float weight2 = RowColumnImplKt.getWeight(rowColumnParentData2);
                    if (weight2 <= 0.0f) {
                        throw new IllegalStateException("All weights <= 0 should have placeables".toString());
                    }
                    int sign = MathKt.getSign(i26);
                    int i29 = i26 - sign;
                    int max3 = Math.max(i21, MathKt.roundToInt(weight2 * f3) + sign);
                    if (!RowColumnImplKt.getFill(rowColumnParentData2) || max3 == i) {
                        i3 = i21;
                        i4 = i29;
                    } else {
                        i4 = i29;
                        i3 = max3;
                    }
                    Placeable mo3876measureBRTryo0 = measurable2.mo3876measureBRTryo0(OrientationIndependentConstraints.m472toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m457constructorimpl(i3, max3, i21, Constraints.m4838getMaxHeightimpl(m459constructorimpl)), this.orientation));
                    i28 += mainAxisSize(mo3876measureBRTryo0);
                    i2 = Math.max(i2, crossAxisSize(mo3876measureBRTryo0));
                    int i30 = (i19 != 0 || RowColumnImplKt.isRelative(rowColumnParentData2)) ? 1 : i21;
                    this.placeables[i27] = mo3876measureBRTryo0;
                    i26 = i4;
                    i19 = i30;
                }
                i27++;
                i = Integer.MAX_VALUE;
            }
            coerceAtMost = RangesKt.coerceAtMost(i28 + i23, Constraints.m4839getMaxWidthimpl(m459constructorimpl) - i18);
        }
        if (i19 != 0) {
            i5 = i21;
            i6 = i5;
            for (int i31 = startIndex; i31 < endIndex; i31++) {
                Placeable placeable2 = this.placeables[i31];
                Intrinsics.checkNotNull(placeable2);
                CrossAxisAlignment crossAxisAlignment = RowColumnImplKt.getCrossAxisAlignment(this.rowColumnParentData[i31]);
                Integer calculateAlignmentLinePosition$foundation_layout_release = crossAxisAlignment != null ? crossAxisAlignment.calculateAlignmentLinePosition$foundation_layout_release(placeable2) : null;
                if (calculateAlignmentLinePosition$foundation_layout_release != null) {
                    Integer num = calculateAlignmentLinePosition$foundation_layout_release;
                    int intValue = num.intValue();
                    if (intValue == Integer.MIN_VALUE) {
                        intValue = i21;
                    }
                    i5 = Math.max(i5, intValue);
                    int crossAxisSize = crossAxisSize(placeable2);
                    int intValue2 = num.intValue();
                    if (intValue2 == Integer.MIN_VALUE) {
                        intValue2 = crossAxisSize(placeable2);
                    }
                    i6 = Math.max(i6, crossAxisSize - intValue2);
                }
            }
        } else {
            i5 = i21;
            i6 = i5;
        }
        int max4 = Math.max(i18 + coerceAtMost, Constraints.m4841getMinWidthimpl(m459constructorimpl));
        if (Constraints.m4838getMaxHeightimpl(m459constructorimpl) == Integer.MAX_VALUE || this.crossAxisSize != SizeMode.Expand) {
            max = Math.max(i2, Math.max(Constraints.m4840getMinHeightimpl(m459constructorimpl), i6 + i5));
        } else {
            max = Constraints.m4838getMaxHeightimpl(m459constructorimpl);
        }
        int[] iArr = new int[i12];
        for (int i32 = i21; i32 < i12; i32++) {
            iArr[i32] = i21;
        }
        int[] iArr2 = new int[i12];
        for (int i33 = i21; i33 < i12; i33++) {
            Placeable placeable3 = this.placeables[i33 + startIndex];
            Intrinsics.checkNotNull(placeable3);
            iArr2[i33] = mainAxisSize(placeable3);
        }
        return new RowColumnMeasureHelperResult(max, max4, startIndex, endIndex, i5, mainAxisPositions(max4, iArr2, iArr, measureScope));
    }

    private final int[] mainAxisPositions(int mainAxisLayoutSize, int[] childrenMainAxisSize, int[] mainAxisPositions, MeasureScope measureScope) {
        this.arrangement.invoke(Integer.valueOf(mainAxisLayoutSize), childrenMainAxisSize, measureScope.getLayoutDirection(), measureScope, mainAxisPositions);
        return mainAxisPositions;
    }

    private final int getCrossAxisPosition(Placeable placeable, RowColumnParentData parentData, int crossAxisLayoutSize, LayoutDirection layoutDirection, int beforeCrossAxisAlignmentLine) {
        CrossAxisAlignment crossAxisAlignment;
        if (parentData == null || (crossAxisAlignment = parentData.getCrossAxisAlignment()) == null) {
            crossAxisAlignment = this.crossAxisAlignment;
        }
        int crossAxisSize = crossAxisLayoutSize - crossAxisSize(placeable);
        if (this.orientation == LayoutOrientation.Horizontal) {
            layoutDirection = LayoutDirection.Ltr;
        }
        return crossAxisAlignment.align$foundation_layout_release(crossAxisSize, layoutDirection, placeable, beforeCrossAxisAlignmentLine);
    }

    public final void placeHelper(Placeable.PlacementScope placeableScope, RowColumnMeasureHelperResult measureResult, int crossAxisOffset, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(placeableScope, "placeableScope");
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        int endIndex = measureResult.getEndIndex();
        for (int startIndex = measureResult.getStartIndex(); startIndex < endIndex; startIndex++) {
            Placeable placeable = this.placeables[startIndex];
            Intrinsics.checkNotNull(placeable);
            int[] mainAxisPositions = measureResult.getMainAxisPositions();
            Object parentData = this.measurables.get(startIndex).getParentData();
            int crossAxisPosition = getCrossAxisPosition(placeable, parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null, measureResult.getCrossAxisSize(), layoutDirection, measureResult.getBeforeCrossAxisAlignmentLine()) + crossAxisOffset;
            if (this.orientation == LayoutOrientation.Horizontal) {
                Placeable.PlacementScope.place$default(placeableScope, placeable, mainAxisPositions[startIndex - measureResult.getStartIndex()], crossAxisPosition, 0.0f, 4, null);
            } else {
                Placeable.PlacementScope.place$default(placeableScope, placeable, crossAxisPosition, mainAxisPositions[startIndex - measureResult.getStartIndex()], 0.0f, 4, null);
            }
        }
    }
}
