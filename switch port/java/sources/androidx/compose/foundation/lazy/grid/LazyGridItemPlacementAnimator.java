package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemModifierNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyGridItemPlacementAnimator.kt */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002JD\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0014J\u0006\u0010)\u001a\u00020\u001cJ\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J!\u0010+\u001a\u00020\u001c*\u00020\u000f2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001c0-H\u0082\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u000bj\b\u0012\u0004\u0012\u00020\u0001`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018*\u0004\u0018\u00010\u00018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006."}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;", "", "()V", "firstVisibleIndex", "", "keyIndexMap", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "keyToItemInfoMap", "", "Landroidx/compose/foundation/lazy/grid/ItemInfo;", "movingAwayKeys", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "movingAwayToEndBound", "", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "movingAwayToStartBound", "movingInFromEndBound", "movingInFromStartBound", "hasAnimations", "", "getHasAnimations", "(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z", "node", "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "getNode", "(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "initializeNode", "", "item", "mainAxisOffset", "onMeasured", "consumedScroll", "layoutWidth", "layoutHeight", "positionedItems", "itemProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;", "spanLayoutProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;", "isVertical", "reset", "startAnimationsIfNeeded", "forEachNode", "block", "Lkotlin/Function1;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyGridItemPlacementAnimator {
    private int firstVisibleIndex;
    private final Map<Object, ItemInfo> keyToItemInfoMap = new LinkedHashMap();
    private LazyLayoutKeyIndexMap keyIndexMap = LazyLayoutKeyIndexMap.INSTANCE;
    private final LinkedHashSet<Object> movingAwayKeys = new LinkedHashSet<>();
    private final List<LazyGridMeasuredItem> movingInFromStartBound = new ArrayList();
    private final List<LazyGridMeasuredItem> movingInFromEndBound = new ArrayList();
    private final List<LazyGridMeasuredItem> movingAwayToStartBound = new ArrayList();
    private final List<LazyGridMeasuredItem> movingAwayToEndBound = new ArrayList();

    public final void reset() {
        this.keyToItemInfoMap.clear();
        this.keyIndexMap = LazyLayoutKeyIndexMap.INSTANCE;
        this.firstVisibleIndex = -1;
    }

    private final void initializeNode(LazyGridMeasuredItem item, int mainAxisOffset) {
        long m4997copyiSbpLlY$default;
        long offset = item.getOffset();
        if (item.getIsVertical()) {
            m4997copyiSbpLlY$default = IntOffset.m4997copyiSbpLlY$default(offset, 0, mainAxisOffset, 1, null);
        } else {
            m4997copyiSbpLlY$default = IntOffset.m4997copyiSbpLlY$default(offset, mainAxisOffset, 0, 2, null);
        }
        int placeablesCount = item.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            LazyLayoutAnimateItemModifierNode node = getNode(item.getParentData(i));
            if (node != null) {
                long offset2 = item.getOffset();
                long IntOffset = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(offset2) - IntOffset.m5001getXimpl(offset), IntOffset.m5002getYimpl(offset2) - IntOffset.m5002getYimpl(offset));
                node.m637setRawOffsetgyyYBs(IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m4997copyiSbpLlY$default) + IntOffset.m5001getXimpl(IntOffset), IntOffset.m5002getYimpl(m4997copyiSbpLlY$default) + IntOffset.m5002getYimpl(IntOffset)));
            }
        }
    }

    private final LazyLayoutAnimateItemModifierNode getNode(Object obj) {
        if (obj instanceof LazyLayoutAnimateItemModifierNode) {
            return (LazyLayoutAnimateItemModifierNode) obj;
        }
        return null;
    }

    private final void forEachNode(LazyGridMeasuredItem lazyGridMeasuredItem, Function1<? super LazyLayoutAnimateItemModifierNode, Unit> function1) {
        int placeablesCount = lazyGridMeasuredItem.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            LazyLayoutAnimateItemModifierNode node = getNode(lazyGridMeasuredItem.getParentData(i));
            if (node != null) {
                function1.invoke(node);
            }
        }
    }

    public final void onMeasured(int consumedScroll, int layoutWidth, int layoutHeight, List<LazyGridMeasuredItem> positionedItems, LazyGridMeasuredItemProvider itemProvider, LazyGridSpanLayoutProvider spanLayoutProvider, boolean isVertical) {
        long IntOffset;
        int i;
        long m4848fixedHeightOenEA2s;
        int i2;
        int i3;
        List<LazyGridMeasuredItem> positionedItems2 = positionedItems;
        Intrinsics.checkNotNullParameter(positionedItems2, "positionedItems");
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Intrinsics.checkNotNullParameter(spanLayoutProvider, "spanLayoutProvider");
        int size = positionedItems.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                if (this.keyToItemInfoMap.isEmpty()) {
                    reset();
                    return;
                }
            } else if (getHasAnimations(positionedItems2.get(i4))) {
                break;
            } else {
                i4++;
            }
        }
        int i5 = this.firstVisibleIndex;
        LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.firstOrNull((List) positionedItems);
        this.firstVisibleIndex = lazyGridMeasuredItem != null ? lazyGridMeasuredItem.getIndex() : 0;
        final LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap = this.keyIndexMap;
        this.keyIndexMap = itemProvider.getKeyIndexMap();
        int i6 = isVertical ? layoutHeight : layoutWidth;
        if (isVertical) {
            IntOffset = IntOffsetKt.IntOffset(0, consumedScroll);
        } else {
            IntOffset = IntOffsetKt.IntOffset(consumedScroll, 0);
        }
        this.movingAwayKeys.addAll(this.keyToItemInfoMap.keySet());
        int size2 = positionedItems.size();
        int i7 = 0;
        while (i7 < size2) {
            LazyGridMeasuredItem lazyGridMeasuredItem2 = positionedItems2.get(i7);
            this.movingAwayKeys.remove(lazyGridMeasuredItem2.getKey());
            if (getHasAnimations(lazyGridMeasuredItem2)) {
                ItemInfo itemInfo = this.keyToItemInfoMap.get(lazyGridMeasuredItem2.getKey());
                if (itemInfo == null) {
                    i2 = size2;
                    this.keyToItemInfoMap.put(lazyGridMeasuredItem2.getKey(), new ItemInfo(lazyGridMeasuredItem2.getCrossAxisSize(), lazyGridMeasuredItem2.getCrossAxisOffset()));
                    int index = lazyLayoutKeyIndexMap.getIndex(lazyGridMeasuredItem2.getKey());
                    if (index == -1 || lazyGridMeasuredItem2.getIndex() == index) {
                        long offset = lazyGridMeasuredItem2.getOffset();
                        initializeNode(lazyGridMeasuredItem2, lazyGridMeasuredItem2.getIsVertical() ? IntOffset.m5002getYimpl(offset) : IntOffset.m5001getXimpl(offset));
                    } else if (index < i5) {
                        this.movingInFromStartBound.add(lazyGridMeasuredItem2);
                    } else {
                        this.movingInFromEndBound.add(lazyGridMeasuredItem2);
                    }
                } else {
                    i2 = size2;
                    int placeablesCount = lazyGridMeasuredItem2.getPlaceablesCount();
                    int i8 = 0;
                    while (i8 < placeablesCount) {
                        LazyLayoutAnimateItemModifierNode node = getNode(lazyGridMeasuredItem2.getParentData(i8));
                        if (node != null) {
                            i3 = placeablesCount;
                            if (!IntOffset.m5000equalsimpl0(node.getRawOffset(), LazyLayoutAnimateItemModifierNode.INSTANCE.m638getNotInitializednOccac())) {
                                long rawOffset = node.getRawOffset();
                                node.m637setRawOffsetgyyYBs(IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(rawOffset) + IntOffset.m5001getXimpl(IntOffset), IntOffset.m5002getYimpl(rawOffset) + IntOffset.m5002getYimpl(IntOffset)));
                            }
                        } else {
                            i3 = placeablesCount;
                        }
                        i8++;
                        placeablesCount = i3;
                    }
                    itemInfo.setCrossAxisSize(lazyGridMeasuredItem2.getCrossAxisSize());
                    itemInfo.setCrossAxisOffset(lazyGridMeasuredItem2.getCrossAxisOffset());
                    startAnimationsIfNeeded(lazyGridMeasuredItem2);
                }
            } else {
                i2 = size2;
                this.keyToItemInfoMap.remove(lazyGridMeasuredItem2.getKey());
            }
            i7++;
            positionedItems2 = positionedItems;
            size2 = i2;
        }
        List<LazyGridMeasuredItem> list = this.movingInFromStartBound;
        if (list.size() > 1) {
            CollectionsKt.sortWith(list, new Comparator() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(LazyLayoutKeyIndexMap.this.getIndex(((LazyGridMeasuredItem) t2).getKey())), Integer.valueOf(LazyLayoutKeyIndexMap.this.getIndex(((LazyGridMeasuredItem) t).getKey())));
                }
            });
        }
        List<LazyGridMeasuredItem> list2 = this.movingInFromStartBound;
        int size3 = list2.size();
        int i9 = -1;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < size3; i12++) {
            LazyGridMeasuredItem lazyGridMeasuredItem3 = list2.get(i12);
            int row = isVertical ? lazyGridMeasuredItem3.getRow() : lazyGridMeasuredItem3.getColumn();
            if (row != -1 && row == i9) {
                i11 = Math.max(i11, lazyGridMeasuredItem3.getMainAxisSize());
            } else {
                i10 += i11;
                i11 = lazyGridMeasuredItem3.getMainAxisSize();
                i9 = row;
            }
            initializeNode(lazyGridMeasuredItem3, (0 - i10) - lazyGridMeasuredItem3.getMainAxisSize());
            startAnimationsIfNeeded(lazyGridMeasuredItem3);
        }
        List<LazyGridMeasuredItem> list3 = this.movingInFromEndBound;
        if (list3.size() > 1) {
            CollectionsKt.sortWith(list3, new Comparator() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(LazyLayoutKeyIndexMap.this.getIndex(((LazyGridMeasuredItem) t).getKey())), Integer.valueOf(LazyLayoutKeyIndexMap.this.getIndex(((LazyGridMeasuredItem) t2).getKey())));
                }
            });
        }
        List<LazyGridMeasuredItem> list4 = this.movingInFromEndBound;
        int size4 = list4.size();
        int i13 = 0;
        int i14 = 0;
        int i15 = -1;
        for (int i16 = 0; i16 < size4; i16++) {
            LazyGridMeasuredItem lazyGridMeasuredItem4 = list4.get(i16);
            int row2 = isVertical ? lazyGridMeasuredItem4.getRow() : lazyGridMeasuredItem4.getColumn();
            if (row2 != -1 && row2 == i15) {
                i14 = Math.max(i14, lazyGridMeasuredItem4.getMainAxisSize());
            } else {
                i13 += i14;
                i14 = lazyGridMeasuredItem4.getMainAxisSize();
                i15 = row2;
            }
            initializeNode(lazyGridMeasuredItem4, i6 + i13);
            startAnimationsIfNeeded(lazyGridMeasuredItem4);
        }
        for (Object obj : this.movingAwayKeys) {
            ItemInfo itemInfo2 = (ItemInfo) MapsKt.getValue(this.keyToItemInfoMap, obj);
            int index2 = this.keyIndexMap.getIndex(obj);
            if (index2 == -1) {
                this.keyToItemInfoMap.remove(obj);
            } else {
                if (isVertical) {
                    m4848fixedHeightOenEA2s = Constraints.INSTANCE.m4849fixedWidthOenEA2s(itemInfo2.getCrossAxisSize());
                } else {
                    m4848fixedHeightOenEA2s = Constraints.INSTANCE.m4848fixedHeightOenEA2s(itemInfo2.getCrossAxisSize());
                }
                LazyGridMeasuredItem m628getAndMeasure3p2s80s$default = LazyGridMeasuredItemProvider.m628getAndMeasure3p2s80s$default(itemProvider, index2, 0, m4848fixedHeightOenEA2s, 2, null);
                int placeablesCount2 = m628getAndMeasure3p2s80s$default.getPlaceablesCount();
                boolean z = false;
                for (int i17 = 0; i17 < placeablesCount2; i17++) {
                    LazyLayoutAnimateItemModifierNode node2 = getNode(m628getAndMeasure3p2s80s$default.getParentData(i17));
                    if (node2 != null && node2.isAnimationInProgress()) {
                        z = true;
                    }
                }
                if (!z && index2 == lazyLayoutKeyIndexMap.getIndex(obj)) {
                    this.keyToItemInfoMap.remove(obj);
                } else if (index2 < this.firstVisibleIndex) {
                    this.movingAwayToStartBound.add(m628getAndMeasure3p2s80s$default);
                } else {
                    this.movingAwayToEndBound.add(m628getAndMeasure3p2s80s$default);
                }
            }
        }
        List<LazyGridMeasuredItem> list5 = this.movingAwayToStartBound;
        if (list5.size() > 1) {
            CollectionsKt.sortWith(list5, new Comparator() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap2;
                    LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap3;
                    lazyLayoutKeyIndexMap2 = LazyGridItemPlacementAnimator.this.keyIndexMap;
                    Integer valueOf = Integer.valueOf(lazyLayoutKeyIndexMap2.getIndex(((LazyGridMeasuredItem) t2).getKey()));
                    lazyLayoutKeyIndexMap3 = LazyGridItemPlacementAnimator.this.keyIndexMap;
                    return ComparisonsKt.compareValues(valueOf, Integer.valueOf(lazyLayoutKeyIndexMap3.getIndex(((LazyGridMeasuredItem) t).getKey())));
                }
            });
        }
        List<LazyGridMeasuredItem> list6 = this.movingAwayToStartBound;
        int size5 = list6.size();
        int i18 = 0;
        int i19 = 0;
        int i20 = -1;
        for (int i21 = 0; i21 < size5; i21++) {
            LazyGridMeasuredItem lazyGridMeasuredItem5 = list6.get(i21);
            int lineIndexOfItem = spanLayoutProvider.getLineIndexOfItem(lazyGridMeasuredItem5.getIndex());
            if (lineIndexOfItem != -1 && lineIndexOfItem == i20) {
                i19 = Math.max(i19, lazyGridMeasuredItem5.getMainAxisSize());
            } else {
                i18 += i19;
                i19 = lazyGridMeasuredItem5.getMainAxisSize();
                i20 = lineIndexOfItem;
            }
            lazyGridMeasuredItem5.position((0 - i18) - lazyGridMeasuredItem5.getMainAxisSize(), ((ItemInfo) MapsKt.getValue(this.keyToItemInfoMap, lazyGridMeasuredItem5.getKey())).getCrossAxisOffset(), layoutWidth, layoutHeight, (r16 & 16) != 0 ? -1 : 0, (r16 & 32) != 0 ? -1 : 0);
            positionedItems.add(lazyGridMeasuredItem5);
            startAnimationsIfNeeded(lazyGridMeasuredItem5);
        }
        List<LazyGridMeasuredItem> list7 = this.movingAwayToEndBound;
        if (list7.size() > 1) {
            CollectionsKt.sortWith(list7, new Comparator() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap2;
                    LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap3;
                    lazyLayoutKeyIndexMap2 = LazyGridItemPlacementAnimator.this.keyIndexMap;
                    Integer valueOf = Integer.valueOf(lazyLayoutKeyIndexMap2.getIndex(((LazyGridMeasuredItem) t).getKey()));
                    lazyLayoutKeyIndexMap3 = LazyGridItemPlacementAnimator.this.keyIndexMap;
                    return ComparisonsKt.compareValues(valueOf, Integer.valueOf(lazyLayoutKeyIndexMap3.getIndex(((LazyGridMeasuredItem) t2).getKey())));
                }
            });
        }
        List<LazyGridMeasuredItem> list8 = this.movingAwayToEndBound;
        int size6 = list8.size();
        int i22 = -1;
        int i23 = 0;
        i = 0;
        for (int i24 = 0; i24 < size6; i24++) {
            LazyGridMeasuredItem lazyGridMeasuredItem6 = list8.get(i24);
            int lineIndexOfItem2 = spanLayoutProvider.getLineIndexOfItem(lazyGridMeasuredItem6.getIndex());
            if (lineIndexOfItem2 != -1 && lineIndexOfItem2 == i22) {
                i23 = Math.max(i23, lazyGridMeasuredItem6.getMainAxisSize());
            } else {
                i += i23;
                i23 = lazyGridMeasuredItem6.getMainAxisSize();
                i22 = lineIndexOfItem2;
            }
            lazyGridMeasuredItem6.position(i6 + i, ((ItemInfo) MapsKt.getValue(this.keyToItemInfoMap, lazyGridMeasuredItem6.getKey())).getCrossAxisOffset(), layoutWidth, layoutHeight, (r16 & 16) != 0 ? -1 : 0, (r16 & 32) != 0 ? -1 : 0);
            positionedItems.add(lazyGridMeasuredItem6);
            startAnimationsIfNeeded(lazyGridMeasuredItem6);
        }
        this.movingInFromStartBound.clear();
        this.movingInFromEndBound.clear();
        this.movingAwayToStartBound.clear();
        this.movingAwayToEndBound.clear();
        this.movingAwayKeys.clear();
    }

    private final void startAnimationsIfNeeded(LazyGridMeasuredItem item) {
        int placeablesCount = item.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            LazyLayoutAnimateItemModifierNode node = getNode(item.getParentData(i));
            if (node != null) {
                long offset = item.getOffset();
                long rawOffset = node.getRawOffset();
                if (!IntOffset.m5000equalsimpl0(rawOffset, LazyLayoutAnimateItemModifierNode.INSTANCE.m638getNotInitializednOccac()) && !IntOffset.m5000equalsimpl0(rawOffset, offset)) {
                    node.m634animatePlacementDeltagyyYBs(IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(offset) - IntOffset.m5001getXimpl(rawOffset), IntOffset.m5002getYimpl(offset) - IntOffset.m5002getYimpl(rawOffset)));
                }
                node.m637setRawOffsetgyyYBs(offset);
            }
        }
    }

    private final boolean getHasAnimations(LazyGridMeasuredItem lazyGridMeasuredItem) {
        int placeablesCount = lazyGridMeasuredItem.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            if (getNode(lazyGridMeasuredItem.getParentData(i)) != null) {
                return true;
            }
        }
        return false;
    }
}
