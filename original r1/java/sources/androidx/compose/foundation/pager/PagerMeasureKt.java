package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPositionInLayoutKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.Device;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: PagerMeasure.kt */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aH\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u000bH\u0002\u001a@\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u000bH\u0002\u001a\u0017\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0082\b\u001a\u008c\u0001\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014*\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002\u001am\u0010\n\u001a\u00020\u0004*\u00020\u00152\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010,\u001a\u0004\u0018\u00010-2\b\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u0002012\u0006\u0010 \u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0006H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b2\u00103\u001aä\u0001\u00104\u001a\u000205*\u00020\u00152\u0006\u00106\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u00062\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020'2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010.\u001a\u0004\u0018\u00010/2\b\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010 \u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032/\u0010?\u001a+\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020\u000f0\u000b¢\u0006\u0002\bB\u0012\u0004\u0012\u00020C0@H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bD\u0010E\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006F"}, d2 = {"DEBUG", "", "createPagesAfterList", "", "Landroidx/compose/foundation/pager/MeasuredPage;", "currentLastPage", "", "pagesCount", "beyondBoundsPageCount", "pinnedPages", "getAndMeasure", "Lkotlin/Function1;", "createPagesBeforeList", "currentFirstPage", "debugLog", "", "generateMsg", "Lkotlin/Function0;", "", "calculatePagesOffsets", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "pages", "extraPagesBefore", "extraPagesAfter", "layoutWidth", "layoutHeight", "finalMainAxisOffset", "maxOffset", "pagesScrollOffset", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "reverseLayout", "density", "Landroidx/compose/ui/unit/Density;", "spaceBetweenPages", "pageAvailableSize", "index", "childConstraints", "Landroidx/compose/ui/unit/Constraints;", "pagerItemProvider", "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;", "visualPageOffset", "Landroidx/compose/ui/unit/IntOffset;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getAndMeasure-SGf7dI0", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;", "measurePager", "Landroidx/compose/foundation/pager/PagerMeasureResult;", "pageCount", "mainAxisAvailableSize", "beforeContentPadding", "afterContentPadding", "firstVisiblePage", "firstVisiblePageOffset", "scrollToBeConsumed", "", "constraints", "layout", "Lkotlin/Function3;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "Lkotlin/ExtensionFunctionType;", "Landroidx/compose/ui/layout/MeasureResult;", "measurePager-ntgEbfI", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIFJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/pager/PagerMeasureResult;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PagerMeasureKt {
    private static final boolean DEBUG = false;

    private static final int calculatePagesOffsets$reverseAware(int i, boolean z, int i2) {
        return !z ? i : (i2 - i) - 1;
    }

    private static final void debugLog(Function0<String> function0) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: measurePager-ntgEbfI, reason: not valid java name */
    public static final PagerMeasureResult m707measurePagerntgEbfI(final LazyLayoutMeasureScope measurePager, int i, final PagerLazyLayoutItemProvider pagerItemProvider, int i2, int i3, int i4, int i5, int i6, int i7, float f, long j, final Orientation orientation, final Alignment.Vertical vertical, final Alignment.Horizontal horizontal, final boolean z, final long j2, final int i8, int i9, List<Integer> pinnedPages, Function3<? super Integer, ? super Integer, ? super Function1<? super Placeable.PlacementScope, Unit>, ? extends MeasureResult> layout) {
        int i10;
        int i11;
        int i12;
        int i13;
        ArrayDeque arrayDeque;
        int i14;
        int i15;
        ArrayDeque arrayDeque2;
        int i16;
        int i17;
        ArrayDeque arrayDeque3;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        MeasuredPage measuredPage;
        int i23;
        int i24;
        long j3;
        List<MeasuredPage> list;
        boolean z2;
        MeasuredPage measuredPage2;
        int i25;
        ArrayDeque arrayDeque4;
        Intrinsics.checkNotNullParameter(measurePager, "$this$measurePager");
        Intrinsics.checkNotNullParameter(pagerItemProvider, "pagerItemProvider");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(pinnedPages, "pinnedPages");
        Intrinsics.checkNotNullParameter(layout, "layout");
        if (i3 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i26 = 0;
        int coerceAtLeast = RangesKt.coerceAtLeast(i8 + i5, 0);
        if (i <= 0) {
            return new PagerMeasureResult(CollectionsKt.emptyList(), 0, i8, i5, i4, orientation, -i3, i2 + i4, false, 0.0f, null, null, 0, false, layout.invoke(Integer.valueOf(Constraints.m4841getMinWidthimpl(j)), Integer.valueOf(Constraints.m4840getMinHeightimpl(j)), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$2
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable.PlacementScope invoke) {
                    Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.INSTANCE;
                }
            }));
        }
        final long Constraints$default = ConstraintsKt.Constraints$default(0, orientation == Orientation.Vertical ? Constraints.m4839getMaxWidthimpl(j) : i8, 0, orientation != Orientation.Vertical ? Constraints.m4838getMaxHeightimpl(j) : i8, 5, null);
        int i27 = i6;
        if (i27 >= i) {
            i27 = i - 1;
            i10 = 0;
        } else {
            i10 = i7;
        }
        int roundToInt = MathKt.roundToInt(f);
        int i28 = i10 - roundToInt;
        if (i27 != 0 || i28 >= 0) {
            i11 = roundToInt;
        } else {
            i11 = roundToInt + i28;
            i28 = 0;
        }
        ArrayDeque arrayDeque5 = new ArrayDeque();
        int i29 = -i3;
        int i30 = i29 + (i5 < 0 ? i5 : 0);
        int i31 = i28 + i30;
        int i32 = 0;
        while (i31 < 0 && i27 > 0) {
            int i33 = i27 - 1;
            int i34 = coerceAtLeast;
            int i35 = i30;
            ArrayDeque arrayDeque6 = arrayDeque5;
            int i36 = i26;
            MeasuredPage m706getAndMeasureSGf7dI0 = m706getAndMeasureSGf7dI0(measurePager, i33, Constraints$default, pagerItemProvider, j2, orientation, horizontal, vertical, measurePager.getLayoutDirection(), z, i8);
            arrayDeque6.add(i36, m706getAndMeasureSGf7dI0);
            i32 = Math.max(i32, m706getAndMeasureSGf7dI0.getCrossAxisSize());
            i31 += i34;
            coerceAtLeast = i34;
            arrayDeque5 = arrayDeque6;
            i26 = i36;
            i27 = i33;
            i30 = i35;
        }
        int i37 = coerceAtLeast;
        int i38 = i26;
        int i39 = i30;
        ArrayDeque arrayDeque7 = arrayDeque5;
        int i40 = i31;
        if (i40 < i39) {
            i11 += i40;
            i40 = i39;
        }
        int i41 = i40 - i39;
        int i42 = i2;
        int i43 = i42 + i4;
        int coerceAtLeast2 = RangesKt.coerceAtLeast(i43, i38);
        int i44 = -i41;
        ArrayDeque arrayDeque8 = arrayDeque7;
        int size = arrayDeque8.size();
        int i45 = i27;
        for (int i46 = i38; i46 < size; i46++) {
            i45++;
            i44 += i37;
        }
        int i47 = i39;
        int i48 = i41;
        int i49 = i44;
        int i50 = i45;
        int i51 = i32;
        int i52 = i;
        int i53 = i27;
        while (true) {
            if (i50 >= i52) {
                i12 = i51;
                i13 = i50;
                arrayDeque = arrayDeque8;
                i14 = i43;
                i15 = i53;
                arrayDeque2 = arrayDeque7;
                i16 = i49;
                i17 = i2;
                break;
            }
            if (i49 >= coerceAtLeast2 && i49 > 0 && !arrayDeque7.isEmpty()) {
                i12 = i51;
                arrayDeque = arrayDeque8;
                i14 = i43;
                i17 = i42;
                i15 = i53;
                arrayDeque2 = arrayDeque7;
                i13 = i50;
                i16 = i49;
                break;
            }
            int i54 = i47;
            int i55 = i53;
            ArrayDeque arrayDeque9 = arrayDeque7;
            int i56 = i51;
            int i57 = i52;
            int i58 = i50;
            ArrayDeque arrayDeque10 = arrayDeque8;
            int i59 = coerceAtLeast2;
            int i60 = i43;
            MeasuredPage m706getAndMeasureSGf7dI02 = m706getAndMeasureSGf7dI0(measurePager, i50, Constraints$default, pagerItemProvider, j2, orientation, horizontal, vertical, measurePager.getLayoutDirection(), z, i8);
            i49 += i37;
            if (i49 <= i54) {
                i25 = i58;
                if (i25 != i57 - 1) {
                    i48 -= i37;
                    i53 = i25 + 1;
                    arrayDeque4 = arrayDeque9;
                    i51 = i56;
                    i50 = i25 + 1;
                    i42 = i2;
                    i52 = i57;
                    i47 = i54;
                    arrayDeque8 = arrayDeque10;
                    coerceAtLeast2 = i59;
                    arrayDeque7 = arrayDeque4;
                    i43 = i60;
                }
            } else {
                i25 = i58;
            }
            int max = Math.max(i56, m706getAndMeasureSGf7dI02.getCrossAxisSize());
            arrayDeque4 = arrayDeque9;
            arrayDeque4.add(m706getAndMeasureSGf7dI02);
            i53 = i55;
            i51 = max;
            i50 = i25 + 1;
            i42 = i2;
            i52 = i57;
            i47 = i54;
            arrayDeque8 = arrayDeque10;
            coerceAtLeast2 = i59;
            arrayDeque7 = arrayDeque4;
            i43 = i60;
        }
        if (i16 < i17) {
            int i61 = i17 - i16;
            i16 += i61;
            int i62 = i3;
            int i63 = i15;
            int i64 = i12;
            int i65 = i48 - i61;
            while (i65 < i62 && i63 > 0) {
                int i66 = i63 - 1;
                ArrayDeque arrayDeque11 = arrayDeque2;
                MeasuredPage m706getAndMeasureSGf7dI03 = m706getAndMeasureSGf7dI0(measurePager, i66, Constraints$default, pagerItemProvider, j2, orientation, horizontal, vertical, measurePager.getLayoutDirection(), z, i8);
                arrayDeque11.add(0, m706getAndMeasureSGf7dI03);
                i64 = Math.max(i64, m706getAndMeasureSGf7dI03.getCrossAxisSize());
                i65 += i37;
                i62 = i3;
                arrayDeque2 = arrayDeque11;
                i63 = i66;
                i13 = i13;
            }
            i20 = i64;
            int i67 = i65;
            arrayDeque3 = arrayDeque2;
            i18 = i13;
            int i68 = i11 + i61;
            if (i67 < 0) {
                i19 = i63;
                i16 += i67;
                i21 = i68 + i67;
                i22 = 0;
            } else {
                i19 = i63;
                i21 = i68;
                i22 = i67;
            }
        } else {
            arrayDeque3 = arrayDeque2;
            i18 = i13;
            i19 = i15;
            i20 = i12;
            i21 = i11;
            i22 = i48;
        }
        float f2 = (MathKt.getSign(MathKt.roundToInt(f)) != MathKt.getSign(i21) || Math.abs(MathKt.roundToInt(f)) < Math.abs(i21)) ? f : i21;
        if (i22 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i69 = -i22;
        MeasuredPage measuredPage3 = (MeasuredPage) arrayDeque3.first();
        if (i3 > 0 || i5 < 0) {
            int size2 = arrayDeque3.size();
            int i70 = i22;
            int i71 = 0;
            while (i71 < size2 && i70 != 0) {
                int i72 = i37;
                if (i72 > i70 || i71 == CollectionsKt.getLastIndex(arrayDeque)) {
                    break;
                }
                i70 -= i72;
                i71++;
                measuredPage3 = (MeasuredPage) arrayDeque3.get(i71);
                i37 = i72;
            }
            measuredPage = measuredPage3;
            i23 = i70;
        } else {
            measuredPage = measuredPage3;
            i23 = i22;
        }
        int i73 = i20;
        MeasuredPage measuredPage4 = measuredPage;
        List<MeasuredPage> createPagesBeforeList = createPagesBeforeList(i19, i9, pinnedPages, new Function1<Integer, MeasuredPage>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$extraPagesBefore$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ MeasuredPage invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final MeasuredPage invoke(int i74) {
                MeasuredPage m706getAndMeasureSGf7dI04;
                LazyLayoutMeasureScope lazyLayoutMeasureScope = LazyLayoutMeasureScope.this;
                m706getAndMeasureSGf7dI04 = PagerMeasureKt.m706getAndMeasureSGf7dI0(lazyLayoutMeasureScope, i74, Constraints$default, pagerItemProvider, j2, orientation, horizontal, vertical, lazyLayoutMeasureScope.getLayoutDirection(), z, i8);
                return m706getAndMeasureSGf7dI04;
            }
        });
        int size3 = createPagesBeforeList.size();
        int i74 = i73;
        for (int i75 = 0; i75 < size3; i75++) {
            i74 = Math.max(i74, createPagesBeforeList.get(i75).getCrossAxisSize());
        }
        ArrayDeque arrayDeque12 = arrayDeque3;
        int i76 = i16;
        List<MeasuredPage> createPagesAfterList = createPagesAfterList(((MeasuredPage) arrayDeque3.last()).getIndex(), i, i9, pinnedPages, new Function1<Integer, MeasuredPage>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$extraPagesAfter$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ MeasuredPage invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final MeasuredPage invoke(int i77) {
                MeasuredPage m706getAndMeasureSGf7dI04;
                LazyLayoutMeasureScope lazyLayoutMeasureScope = LazyLayoutMeasureScope.this;
                m706getAndMeasureSGf7dI04 = PagerMeasureKt.m706getAndMeasureSGf7dI0(lazyLayoutMeasureScope, i77, Constraints$default, pagerItemProvider, j2, orientation, horizontal, vertical, lazyLayoutMeasureScope.getLayoutDirection(), z, i8);
                return m706getAndMeasureSGf7dI04;
            }
        });
        int size4 = createPagesAfterList.size();
        int i77 = i74;
        for (int i78 = 0; i78 < size4; i78++) {
            i77 = Math.max(i77, createPagesAfterList.get(i78).getCrossAxisSize());
        }
        boolean z3 = Intrinsics.areEqual(measuredPage4, arrayDeque12.first()) && createPagesBeforeList.isEmpty() && createPagesAfterList.isEmpty();
        if (orientation == Orientation.Vertical) {
            j3 = j;
            i24 = i77;
        } else {
            i24 = i76;
            j3 = j;
        }
        int m4853constrainWidthK40F9xA = ConstraintsKt.m4853constrainWidthK40F9xA(j3, i24);
        if (orientation == Orientation.Vertical) {
            i77 = i76;
        }
        int m4852constrainHeightK40F9xA = ConstraintsKt.m4852constrainHeightK40F9xA(j3, i77);
        LazyLayoutMeasureScope lazyLayoutMeasureScope = measurePager;
        int i79 = i18;
        final List<MeasuredPage> calculatePagesOffsets = calculatePagesOffsets(measurePager, arrayDeque, createPagesBeforeList, createPagesAfterList, m4853constrainWidthK40F9xA, m4852constrainHeightK40F9xA, i76, i2, i69, orientation, z, lazyLayoutMeasureScope, i5, i8);
        if (z3) {
            list = calculatePagesOffsets;
        } else {
            ArrayList arrayList = new ArrayList(calculatePagesOffsets.size());
            int size5 = calculatePagesOffsets.size();
            for (int i80 = 0; i80 < size5; i80++) {
                MeasuredPage measuredPage5 = calculatePagesOffsets.get(i80);
                MeasuredPage measuredPage6 = measuredPage5;
                if (measuredPage6.getIndex() >= ((MeasuredPage) arrayDeque12.first()).getIndex() && measuredPage6.getIndex() <= ((MeasuredPage) arrayDeque12.last()).getIndex()) {
                    arrayList.add(measuredPage5);
                }
            }
            list = arrayList;
        }
        int i81 = orientation == Orientation.Vertical ? m4852constrainHeightK40F9xA : m4853constrainWidthK40F9xA;
        if (list.isEmpty()) {
            measuredPage2 = null;
            z2 = true;
        } else {
            MeasuredPage measuredPage7 = list.get(0);
            MeasuredPage measuredPage8 = measuredPage7;
            float f3 = -Math.abs(SnapPositionInLayoutKt.calculateDistanceToDesiredSnapPosition(lazyLayoutMeasureScope, i81, i3, i4, i8, measuredPage8.getOffset(), measuredPage8.getIndex(), PagerStateKt.getSnapAlignmentStartToStart()));
            int lastIndex = CollectionsKt.getLastIndex(list);
            boolean z4 = true;
            if (1 <= lastIndex) {
                int i82 = 1;
                MeasuredPage measuredPage9 = measuredPage7;
                float f4 = f3;
                while (true) {
                    MeasuredPage measuredPage10 = list.get(i82);
                    MeasuredPage measuredPage11 = measuredPage10;
                    int i83 = i82;
                    z2 = z4;
                    float f5 = -Math.abs(SnapPositionInLayoutKt.calculateDistanceToDesiredSnapPosition(lazyLayoutMeasureScope, i81, i3, i4, i8, measuredPage11.getOffset(), measuredPage11.getIndex(), PagerStateKt.getSnapAlignmentStartToStart()));
                    if (Float.compare(f4, f5) < 0) {
                        f4 = f5;
                        measuredPage9 = measuredPage10;
                    }
                    if (i83 == lastIndex) {
                        break;
                    }
                    i82 = i83 + 1;
                    z4 = z2;
                }
                measuredPage2 = measuredPage9;
            } else {
                z2 = true;
                measuredPage2 = measuredPage7;
            }
        }
        return new PagerMeasureResult(list, i, i8, i5, i4, orientation, i29, i14, z, f2, measuredPage4, measuredPage2, i23, (i79 < i || i76 > i2) ? z2 : false, layout.invoke(Integer.valueOf(m4853constrainWidthK40F9xA), Integer.valueOf(m4852constrainHeightK40F9xA), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.pager.PagerMeasureKt$measurePager$6
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
            public final void invoke2(Placeable.PlacementScope invoke) {
                Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
                List<MeasuredPage> list2 = calculatePagesOffsets;
                int size6 = list2.size();
                for (int i84 = 0; i84 < size6; i84++) {
                    list2.get(i84).place(invoke);
                }
            }
        }));
    }

    private static final List<MeasuredPage> createPagesAfterList(int i, int i2, int i3, List<Integer> list, Function1<? super Integer, MeasuredPage> function1) {
        int min = Math.min(i3 + i, i2 - 1);
        int i4 = i + 1;
        ArrayList arrayList = null;
        if (i4 <= min) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(function1.invoke(Integer.valueOf(i4)));
                if (i4 == min) {
                    break;
                }
                i4++;
            }
        }
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            int intValue = list.get(i5).intValue();
            if (min + 1 <= intValue && intValue < i2) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(function1.invoke(Integer.valueOf(intValue)));
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private static final List<MeasuredPage> createPagesBeforeList(int i, int i2, List<Integer> list, Function1<? super Integer, MeasuredPage> function1) {
        int max = Math.max(0, i - i2);
        int i3 = i - 1;
        ArrayList arrayList = null;
        if (max <= i3) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(function1.invoke(Integer.valueOf(i3)));
                if (i3 == max) {
                    break;
                }
                i3--;
            }
        }
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            int intValue = list.get(i4).intValue();
            if (intValue < max) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(function1.invoke(Integer.valueOf(intValue)));
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getAndMeasure-SGf7dI0, reason: not valid java name */
    public static final MeasuredPage m706getAndMeasureSGf7dI0(LazyLayoutMeasureScope lazyLayoutMeasureScope, int i, long j, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j2, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z, int i2) {
        return new MeasuredPage(i, i2, lazyLayoutMeasureScope.mo648measure0kLqBqw(i, j), j2, pagerLazyLayoutItemProvider.getKey(i), orientation, horizontal, vertical, layoutDirection, z, null);
    }

    private static final List<MeasuredPage> calculatePagesOffsets(LazyLayoutMeasureScope lazyLayoutMeasureScope, List<MeasuredPage> list, List<MeasuredPage> list2, List<MeasuredPage> list3, int i, int i2, int i3, int i4, int i5, Orientation orientation, boolean z, Density density, int i6, int i7) {
        int i8;
        int i9;
        int i10 = i7 + i6;
        if (orientation == Orientation.Vertical) {
            i8 = i4;
            i9 = i2;
        } else {
            i8 = i4;
            i9 = i;
        }
        boolean z2 = i3 < Math.min(i9, i8);
        if (z2 && i5 != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size() + list3.size());
        if (z2) {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int size = list.size();
            int[] iArr = new int[size];
            for (int i11 = 0; i11 < size; i11++) {
                iArr[i11] = i7;
            }
            int[] iArr2 = new int[size];
            for (int i12 = 0; i12 < size; i12++) {
                iArr2[i12] = 0;
            }
            Arrangement.HorizontalOrVertical m404spacedBy0680j_4 = Arrangement.Absolute.INSTANCE.m404spacedBy0680j_4(lazyLayoutMeasureScope.mo332toDpu2uoSUM(i7));
            if (orientation == Orientation.Vertical) {
                m404spacedBy0680j_4.arrange(density, i9, iArr, iArr2);
            } else {
                m404spacedBy0680j_4.arrange(density, i9, iArr, LayoutDirection.Ltr, iArr2);
            }
            IntRange indices = ArraysKt.getIndices(iArr2);
            if (z) {
                indices = RangesKt.reversed(indices);
            }
            int first = indices.getFirst();
            int last = indices.getLast();
            int step = indices.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                while (true) {
                    int i13 = iArr2[first];
                    MeasuredPage measuredPage = list.get(calculatePagesOffsets$reverseAware(first, z, size));
                    if (z) {
                        i13 = (i9 - i13) - measuredPage.getSize();
                    }
                    measuredPage.position(i13, i, i2);
                    arrayList.add(measuredPage);
                    if (first == last) {
                        break;
                    }
                    first += step;
                }
            }
        } else {
            int size2 = list2.size();
            int i14 = i5;
            for (int i15 = 0; i15 < size2; i15++) {
                MeasuredPage measuredPage2 = list2.get(i15);
                i14 -= i10;
                measuredPage2.position(i14, i, i2);
                arrayList.add(measuredPage2);
            }
            int size3 = list.size();
            int i16 = i5;
            for (int i17 = 0; i17 < size3; i17++) {
                MeasuredPage measuredPage3 = list.get(i17);
                measuredPage3.position(i16, i, i2);
                arrayList.add(measuredPage3);
                i16 += i10;
            }
            int size4 = list3.size();
            for (int i18 = 0; i18 < size4; i18++) {
                MeasuredPage measuredPage4 = list3.get(i18);
                measuredPage4.position(i16, i, i2);
                arrayList.add(measuredPage4);
                i16 += i10;
            }
        }
        return arrayList;
    }
}
