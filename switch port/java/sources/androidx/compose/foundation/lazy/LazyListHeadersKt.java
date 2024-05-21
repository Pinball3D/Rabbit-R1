package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyListHeaders.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0004\u001aF\u0010\u0000\u001a\u0004\u0018\u00010\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0000¨\u0006\f"}, d2 = {"findOrComposeLazyListHeader", "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "composedVisibleItems", "", "itemProvider", "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;", "headerIndexes", "", "", "beforeContentPadding", "layoutWidth", "layoutHeight", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListHeadersKt {
    public static final LazyListMeasuredItem findOrComposeLazyListHeader(List<LazyListMeasuredItem> composedVisibleItems, LazyListMeasuredItemProvider itemProvider, List<Integer> headerIndexes, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(composedVisibleItems, "composedVisibleItems");
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Intrinsics.checkNotNullParameter(headerIndexes, "headerIndexes");
        int index = ((LazyListMeasuredItem) CollectionsKt.first((List) composedVisibleItems)).getIndex();
        int size = headerIndexes.size();
        int i4 = -1;
        int i5 = -1;
        int i6 = 0;
        while (i6 < size && headerIndexes.get(i6).intValue() <= index) {
            i4 = headerIndexes.get(i6).intValue();
            i6++;
            i5 = ((i6 < 0 || i6 > CollectionsKt.getLastIndex(headerIndexes)) ? -1 : headerIndexes.get(i6)).intValue();
        }
        int size2 = composedVisibleItems.size();
        int i7 = Integer.MIN_VALUE;
        int i8 = Integer.MIN_VALUE;
        int i9 = -1;
        for (int i10 = 0; i10 < size2; i10++) {
            LazyListMeasuredItem lazyListMeasuredItem = composedVisibleItems.get(i10);
            if (lazyListMeasuredItem.getIndex() == i4) {
                i7 = lazyListMeasuredItem.getOffset();
                i9 = i10;
            } else if (lazyListMeasuredItem.getIndex() == i5) {
                i8 = lazyListMeasuredItem.getOffset();
            }
        }
        if (i4 == -1) {
            return null;
        }
        LazyListMeasuredItem andMeasure = itemProvider.getAndMeasure(i4);
        int max = i7 != Integer.MIN_VALUE ? Math.max(-i, i7) : -i;
        if (i8 != Integer.MIN_VALUE) {
            max = Math.min(max, i8 - andMeasure.getSize());
        }
        andMeasure.position(max, i2, i3);
        if (i9 != -1) {
            composedVisibleItems.set(i9, andMeasure);
        } else {
            composedVisibleItems.add(0, andMeasure);
        }
        return andMeasure;
    }
}
