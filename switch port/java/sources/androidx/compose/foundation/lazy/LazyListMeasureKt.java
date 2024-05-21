package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: LazyListMeasure.kt */
@Metadata(d1 = {"\u0000x\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u008c\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u001aB\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0002\u001a4\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0002\u001aî\u0001\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020\b2\u0006\u0010%\u001a\u00020\b2\u0006\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010,\u001a\u00020-2\u0006\u0010\u001b\u001a\u00020\b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u00042/\u0010.\u001a+\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020200¢\u0006\u0002\b3\u0012\u0004\u0012\u0002040/H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b5\u00106\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00067"}, d2 = {"calculateItemsOffsets", "", "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "items", "", "extraItemsBefore", "extraItemsAfter", "layoutWidth", "", "layoutHeight", "finalMainAxisOffset", "maxOffset", "itemsScrollOffset", "isVertical", "", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "reverseLayout", "density", "Landroidx/compose/ui/unit/Density;", "createItemsAfterList", "visibleItems", "measuredItemProvider", "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;", "itemsCount", "beyondBoundsItemCount", "pinnedItems", "createItemsBeforeList", "currentFirstItemIndex", "measureLazyList", "Landroidx/compose/foundation/lazy/LazyListMeasureResult;", "mainAxisAvailableSize", "beforeContentPadding", "afterContentPadding", "spaceBetweenItems", "firstVisibleItemIndex", "firstVisibleItemScrollOffset", "scrollToBeConsumed", "", "constraints", "Landroidx/compose/ui/unit/Constraints;", "headerIndexes", "placementAnimator", "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;", "layout", "Lkotlin/Function3;", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "", "Lkotlin/ExtensionFunctionType;", "Landroidx/compose/ui/layout/MeasureResult;", "measureLazyList-CD5nmq0", "(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;ILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListMeasureKt {
    private static final int calculateItemsOffsets$reverseAware(int i, boolean z, int i2) {
        return !z ? i : (i2 - i) - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: measureLazyList-CD5nmq0, reason: not valid java name */
    public static final LazyListMeasureResult m597measureLazyListCD5nmq0(int i, LazyListMeasuredItemProvider measuredItemProvider, int i2, int i3, int i4, int i5, int i6, int i7, float f, long j, boolean z, List<Integer> headerIndexes, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z2, Density density, LazyListItemPlacementAnimator placementAnimator, int i8, List<Integer> pinnedItems, Function3<? super Integer, ? super Integer, ? super Function1<? super Placeable.PlacementScope, Unit>, ? extends MeasureResult> layout) {
        int i9;
        String str;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        LazyListMeasuredItem lazyListMeasuredItem;
        int i16;
        List<LazyListMeasuredItem> list;
        int i17;
        int i18;
        Intrinsics.checkNotNullParameter(measuredItemProvider, "measuredItemProvider");
        Intrinsics.checkNotNullParameter(headerIndexes, "headerIndexes");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(placementAnimator, "placementAnimator");
        Intrinsics.checkNotNullParameter(pinnedItems, "pinnedItems");
        Intrinsics.checkNotNullParameter(layout, "layout");
        String str2 = "Failed requirement.";
        if (i3 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i <= 0) {
            return new LazyListMeasureResult(null, 0, false, 0.0f, layout.invoke(Integer.valueOf(Constraints.m4841getMinWidthimpl(j)), Integer.valueOf(Constraints.m4840getMinHeightimpl(j)), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$measureLazyList$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable.PlacementScope invoke) {
                    Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.INSTANCE;
                }
            }), CollectionsKt.emptyList(), -i3, i2 + i4, 0, z2, z ? Orientation.Vertical : Orientation.Horizontal, i4, i5);
        }
        int i19 = i6;
        if (i19 >= i) {
            i19 = i - 1;
            i9 = 0;
        } else {
            i9 = i7;
        }
        int roundToInt = MathKt.roundToInt(f);
        int i20 = i9 - roundToInt;
        if (i19 == 0 && i20 < 0) {
            roundToInt += i20;
            i20 = 0;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        int i21 = -i3;
        int i22 = i21 + (i5 < 0 ? i5 : 0);
        int i23 = i20 + i22;
        int i24 = 0;
        while (i23 < 0 && i19 > 0) {
            int i25 = i19 - 1;
            LazyListMeasuredItem andMeasure = measuredItemProvider.getAndMeasure(i25);
            arrayDeque.add(0, andMeasure);
            i24 = Math.max(i24, andMeasure.getCrossAxisSize());
            i23 += andMeasure.getSizeWithSpacings();
            i19 = i25;
        }
        if (i23 < i22) {
            roundToInt += i23;
            i23 = i22;
        }
        int i26 = i23 - i22;
        int i27 = i2 + i4;
        int i28 = i24;
        int i29 = i19;
        int coerceAtLeast = RangesKt.coerceAtLeast(i27, 0);
        int i30 = -i26;
        ArrayDeque arrayDeque2 = arrayDeque;
        int i31 = i26;
        int size = arrayDeque2.size();
        int i32 = i29;
        for (int i33 = 0; i33 < size; i33++) {
            i32++;
            i30 += ((LazyListMeasuredItem) arrayDeque2.get(i33)).getSizeWithSpacings();
        }
        int i34 = i28;
        int i35 = i30;
        int i36 = i32;
        while (i36 < i && (i35 < coerceAtLeast || i35 <= 0 || arrayDeque.isEmpty())) {
            int i37 = coerceAtLeast;
            LazyListMeasuredItem andMeasure2 = measuredItemProvider.getAndMeasure(i36);
            i35 += andMeasure2.getSizeWithSpacings();
            if (i35 <= i22) {
                i17 = i22;
                if (i36 != i - 1) {
                    i18 = i36 + 1;
                    i31 -= andMeasure2.getSizeWithSpacings();
                    i36++;
                    i29 = i18;
                    coerceAtLeast = i37;
                    i22 = i17;
                }
            } else {
                i17 = i22;
            }
            int max = Math.max(i34, andMeasure2.getCrossAxisSize());
            arrayDeque.add(andMeasure2);
            i34 = max;
            i18 = i29;
            i36++;
            i29 = i18;
            coerceAtLeast = i37;
            i22 = i17;
        }
        if (i35 < i2) {
            int i38 = i2 - i35;
            int i39 = i35 + i38;
            int i40 = i29;
            i13 = i31 - i38;
            while (i13 < i3 && i40 > 0) {
                int i41 = i36;
                int i42 = i40 - 1;
                String str3 = str2;
                LazyListMeasuredItem andMeasure3 = measuredItemProvider.getAndMeasure(i42);
                arrayDeque.add(0, andMeasure3);
                i34 = Math.max(i34, andMeasure3.getCrossAxisSize());
                i13 += andMeasure3.getSizeWithSpacings();
                i40 = i42;
                i36 = i41;
                str2 = str3;
            }
            str = str2;
            i10 = i36;
            int i43 = roundToInt + i38;
            if (i13 < 0) {
                i11 = i39 + i13;
                i12 = i43 + i13;
                i14 = i40;
                i13 = 0;
            } else {
                i11 = i39;
                i12 = i43;
                i14 = i40;
            }
        } else {
            str = "Failed requirement.";
            i10 = i36;
            i11 = i35;
            i12 = roundToInt;
            i13 = i31;
            i14 = i29;
        }
        int i44 = i34;
        float f2 = (MathKt.getSign(MathKt.roundToInt(f)) != MathKt.getSign(i12) || Math.abs(MathKt.roundToInt(f)) < Math.abs(i12)) ? f : i12;
        if (i13 < 0) {
            throw new IllegalArgumentException(str.toString());
        }
        int i45 = -i13;
        LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayDeque.first();
        if (i3 > 0 || i5 < 0) {
            int size2 = arrayDeque.size();
            LazyListMeasuredItem lazyListMeasuredItem3 = lazyListMeasuredItem2;
            int i46 = i13;
            int i47 = 0;
            while (i47 < size2) {
                int i48 = size2;
                int sizeWithSpacings = ((LazyListMeasuredItem) arrayDeque.get(i47)).getSizeWithSpacings();
                if (i46 == 0 || sizeWithSpacings > i46) {
                    break;
                }
                i15 = i45;
                if (i47 == CollectionsKt.getLastIndex(arrayDeque2)) {
                    break;
                }
                i46 -= sizeWithSpacings;
                i47++;
                lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.get(i47);
                i45 = i15;
                size2 = i48;
            }
            i15 = i45;
            lazyListMeasuredItem = lazyListMeasuredItem3;
            i16 = i46;
        } else {
            lazyListMeasuredItem = lazyListMeasuredItem2;
            i16 = i13;
            i15 = i45;
        }
        List<LazyListMeasuredItem> createItemsBeforeList = createItemsBeforeList(i14, measuredItemProvider, i8, pinnedItems);
        int i49 = i44;
        int i50 = 0;
        for (int size3 = createItemsBeforeList.size(); i50 < size3; size3 = size3) {
            i49 = Math.max(i49, createItemsBeforeList.get(i50).getCrossAxisSize());
            i50++;
        }
        List<LazyListMeasuredItem> createItemsAfterList = createItemsAfterList(arrayDeque2, measuredItemProvider, i, i8, pinnedItems);
        int size4 = createItemsAfterList.size();
        for (int i51 = 0; i51 < size4; i51++) {
            i49 = Math.max(i49, createItemsAfterList.get(i51).getCrossAxisSize());
        }
        boolean z3 = Intrinsics.areEqual(lazyListMeasuredItem, arrayDeque.first()) && createItemsBeforeList.isEmpty() && createItemsAfterList.isEmpty();
        int m4853constrainWidthK40F9xA = ConstraintsKt.m4853constrainWidthK40F9xA(j, z ? i49 : i11);
        if (z) {
            i49 = i11;
        }
        int m4852constrainHeightK40F9xA = ConstraintsKt.m4852constrainHeightK40F9xA(j, i49);
        float f3 = f2;
        int i52 = i10;
        final List<LazyListMeasuredItem> calculateItemsOffsets = calculateItemsOffsets(arrayDeque2, createItemsBeforeList, createItemsAfterList, m4853constrainWidthK40F9xA, m4852constrainHeightK40F9xA, i11, i2, i15, z, vertical, horizontal, z2, density);
        int i53 = i11;
        LazyListMeasuredItem lazyListMeasuredItem4 = lazyListMeasuredItem;
        placementAnimator.onMeasured((int) f3, m4853constrainWidthK40F9xA, m4852constrainHeightK40F9xA, calculateItemsOffsets, measuredItemProvider, z);
        final LazyListMeasuredItem findOrComposeLazyListHeader = headerIndexes.isEmpty() ^ true ? LazyListHeadersKt.findOrComposeLazyListHeader(calculateItemsOffsets, measuredItemProvider, headerIndexes, i3, m4853constrainWidthK40F9xA, m4852constrainHeightK40F9xA) : null;
        boolean z4 = i52 < i || i53 > i2;
        MeasureResult invoke = layout.invoke(Integer.valueOf(m4853constrainWidthK40F9xA), Integer.valueOf(m4852constrainHeightK40F9xA), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$measureLazyList$5
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
            public final void invoke2(Placeable.PlacementScope invoke2) {
                Intrinsics.checkNotNullParameter(invoke2, "$this$invoke");
                List<LazyListMeasuredItem> list2 = calculateItemsOffsets;
                LazyListMeasuredItem lazyListMeasuredItem5 = findOrComposeLazyListHeader;
                int size5 = list2.size();
                for (int i54 = 0; i54 < size5; i54++) {
                    LazyListMeasuredItem lazyListMeasuredItem6 = list2.get(i54);
                    if (lazyListMeasuredItem6 != lazyListMeasuredItem5) {
                        lazyListMeasuredItem6.place(invoke2);
                    }
                }
                LazyListMeasuredItem lazyListMeasuredItem7 = findOrComposeLazyListHeader;
                if (lazyListMeasuredItem7 != null) {
                    lazyListMeasuredItem7.place(invoke2);
                }
            }
        });
        if (z3) {
            list = calculateItemsOffsets;
        } else {
            ArrayList arrayList = new ArrayList(calculateItemsOffsets.size());
            int size5 = calculateItemsOffsets.size();
            for (int i54 = 0; i54 < size5; i54++) {
                LazyListMeasuredItem lazyListMeasuredItem5 = calculateItemsOffsets.get(i54);
                LazyListMeasuredItem lazyListMeasuredItem6 = lazyListMeasuredItem5;
                if ((lazyListMeasuredItem6.getIndex() >= ((LazyListMeasuredItem) arrayDeque.first()).getIndex() && lazyListMeasuredItem6.getIndex() <= ((LazyListMeasuredItem) arrayDeque.last()).getIndex()) || lazyListMeasuredItem6 == findOrComposeLazyListHeader) {
                    arrayList.add(lazyListMeasuredItem5);
                }
            }
            list = arrayList;
        }
        return new LazyListMeasureResult(lazyListMeasuredItem4, i16, z4, f3, invoke, list, i21, i27, i, z2, z ? Orientation.Vertical : Orientation.Horizontal, i4, i5);
    }

    private static final List<LazyListMeasuredItem> createItemsAfterList(List<LazyListMeasuredItem> list, LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i, int i2, List<Integer> list2) {
        int min = Math.min(((LazyListMeasuredItem) CollectionsKt.last((List) list)).getIndex() + i2, i - 1);
        int index = ((LazyListMeasuredItem) CollectionsKt.last((List) list)).getIndex() + 1;
        ArrayList arrayList = null;
        if (index <= min) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lazyListMeasuredItemProvider.getAndMeasure(index));
                if (index == min) {
                    break;
                }
                index++;
            }
        }
        int size = list2.size();
        for (int i3 = 0; i3 < size; i3++) {
            int intValue = list2.get(i3).intValue();
            if (intValue > min) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lazyListMeasuredItemProvider.getAndMeasure(intValue));
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private static final List<LazyListMeasuredItem> createItemsBeforeList(int i, LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i2, List<Integer> list) {
        int max = Math.max(0, i - i2);
        int i3 = i - 1;
        ArrayList arrayList = null;
        if (max <= i3) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lazyListMeasuredItemProvider.getAndMeasure(i3));
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
                arrayList.add(lazyListMeasuredItemProvider.getAndMeasure(intValue));
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private static final List<LazyListMeasuredItem> calculateItemsOffsets(List<LazyListMeasuredItem> list, List<LazyListMeasuredItem> list2, List<LazyListMeasuredItem> list3, int i, int i2, int i3, int i4, int i5, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z2, Density density) {
        int i6 = z ? i2 : i;
        boolean z3 = i3 < Math.min(i6, i4);
        if (z3 && i5 != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size() + list3.size());
        if (z3) {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int size = list.size();
            int[] iArr = new int[size];
            for (int i7 = 0; i7 < size; i7++) {
                iArr[i7] = list.get(calculateItemsOffsets$reverseAware(i7, z2, size)).getSize();
            }
            int[] iArr2 = new int[size];
            for (int i8 = 0; i8 < size; i8++) {
                iArr2[i8] = 0;
            }
            if (z) {
                if (vertical == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                vertical.arrange(density, i6, iArr, iArr2);
            } else {
                if (horizontal == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                horizontal.arrange(density, i6, iArr, LayoutDirection.Ltr, iArr2);
            }
            IntRange indices = ArraysKt.getIndices(iArr2);
            if (z2) {
                indices = RangesKt.reversed(indices);
            }
            int first = indices.getFirst();
            int last = indices.getLast();
            int step = indices.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                while (true) {
                    int i9 = iArr2[first];
                    LazyListMeasuredItem lazyListMeasuredItem = list.get(calculateItemsOffsets$reverseAware(first, z2, size));
                    if (z2) {
                        i9 = (i6 - i9) - lazyListMeasuredItem.getSize();
                    }
                    lazyListMeasuredItem.position(i9, i, i2);
                    arrayList.add(lazyListMeasuredItem);
                    if (first == last) {
                        break;
                    }
                    first += step;
                }
            }
        } else {
            int size2 = list2.size();
            int i10 = i5;
            for (int i11 = 0; i11 < size2; i11++) {
                LazyListMeasuredItem lazyListMeasuredItem2 = list2.get(i11);
                i10 -= lazyListMeasuredItem2.getSizeWithSpacings();
                lazyListMeasuredItem2.position(i10, i, i2);
                arrayList.add(lazyListMeasuredItem2);
            }
            int size3 = list.size();
            int i12 = i5;
            for (int i13 = 0; i13 < size3; i13++) {
                LazyListMeasuredItem lazyListMeasuredItem3 = list.get(i13);
                lazyListMeasuredItem3.position(i12, i, i2);
                arrayList.add(lazyListMeasuredItem3);
                i12 += lazyListMeasuredItem3.getSizeWithSpacings();
            }
            int size4 = list3.size();
            for (int i14 = 0; i14 < size4; i14++) {
                LazyListMeasuredItem lazyListMeasuredItem4 = list3.get(i14);
                lazyListMeasuredItem4.position(i12, i, i2);
                arrayList.add(lazyListMeasuredItem4);
                i12 += lazyListMeasuredItem4.getSizeWithSpacings();
            }
        }
        return arrayList;
    }
}
