package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: LazyLayoutBeyondBoundsState.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¨\u0006\b"}, d2 = {"calculateLazyLayoutPinnedIndices", "", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "pinnedItemList", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "beyondBoundsInfo", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsStateKt {
    public static final List<Integer> calculateLazyLayoutPinnedIndices(LazyLayoutItemProvider lazyLayoutItemProvider, LazyLayoutPinnedItemList pinnedItemList, LazyLayoutBeyondBoundsInfo beyondBoundsInfo) {
        IntRange empty;
        Intrinsics.checkNotNullParameter(lazyLayoutItemProvider, "<this>");
        Intrinsics.checkNotNullParameter(pinnedItemList, "pinnedItemList");
        Intrinsics.checkNotNullParameter(beyondBoundsInfo, "beyondBoundsInfo");
        if (!beyondBoundsInfo.hasIntervals() && pinnedItemList.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (beyondBoundsInfo.hasIntervals()) {
            empty = new IntRange(beyondBoundsInfo.getStart(), Math.min(beyondBoundsInfo.getEnd(), lazyLayoutItemProvider.getItemCount() - 1));
        } else {
            empty = IntRange.INSTANCE.getEMPTY();
        }
        LazyLayoutPinnedItemList lazyLayoutPinnedItemList = pinnedItemList;
        int size = lazyLayoutPinnedItemList.size();
        for (int i = 0; i < size; i++) {
            LazyLayoutPinnedItemList.PinnedItem pinnedItem = lazyLayoutPinnedItemList.get(i);
            int findIndexByKey = LazyLayoutItemProviderKt.findIndexByKey(lazyLayoutItemProvider, pinnedItem.getKey(), pinnedItem.getIndex());
            int first = empty.getFirst();
            if ((findIndexByKey > empty.getLast() || first > findIndexByKey) && findIndexByKey >= 0 && findIndexByKey < lazyLayoutItemProvider.getItemCount()) {
                arrayList.add(Integer.valueOf(findIndexByKey));
            }
        }
        int first2 = empty.getFirst();
        int last = empty.getLast();
        if (first2 <= last) {
            while (true) {
                arrayList.add(Integer.valueOf(first2));
                if (first2 == last) {
                    break;
                }
                first2++;
            }
        }
        return arrayList;
    }
}
