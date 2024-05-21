package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemModifierNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: LazyStaggeredGridItemPlacementAnimator.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002JD\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\u0004J\u0006\u0010(\u001a\u00020\u001cJ\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J!\u0010*\u001a\u00020\u001c*\u00020\u000f2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001c0,H\u0082\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u000bj\b\u0012\u0004\u0012\u00020\u0001`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018*\u0004\u0018\u00010\u00018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006-"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;", "", "()V", "firstVisibleIndex", "", "keyIndexMap", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "keyToItemInfoMap", "", "Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;", "movingAwayKeys", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "movingAwayToEndBound", "", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "movingAwayToStartBound", "movingInFromEndBound", "movingInFromStartBound", "hasAnimations", "", "getHasAnimations", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z", "node", "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "getNode", "(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "initializeNode", "", "item", "mainAxisOffset", "onMeasured", "consumedScroll", "layoutWidth", "layoutHeight", "positionedItems", "itemProvider", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;", "isVertical", "laneCount", "reset", "startAnimationsIfNeeded", "forEachNode", "block", "Lkotlin/Function1;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridItemPlacementAnimator {
    private int firstVisibleIndex;
    private final Map<Object, ItemInfo> keyToItemInfoMap = new LinkedHashMap();
    private LazyLayoutKeyIndexMap keyIndexMap = LazyLayoutKeyIndexMap.INSTANCE;
    private final LinkedHashSet<Object> movingAwayKeys = new LinkedHashSet<>();
    private final List<LazyStaggeredGridMeasuredItem> movingInFromStartBound = new ArrayList();
    private final List<LazyStaggeredGridMeasuredItem> movingInFromEndBound = new ArrayList();
    private final List<LazyStaggeredGridMeasuredItem> movingAwayToStartBound = new ArrayList();
    private final List<LazyStaggeredGridMeasuredItem> movingAwayToEndBound = new ArrayList();

    public final void reset() {
        this.keyToItemInfoMap.clear();
        this.keyIndexMap = LazyLayoutKeyIndexMap.INSTANCE;
        this.firstVisibleIndex = -1;
    }

    private final void initializeNode(LazyStaggeredGridMeasuredItem item, int mainAxisOffset) {
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

    private final void forEachNode(LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem, Function1<? super LazyLayoutAnimateItemModifierNode, Unit> function1) {
        int placeablesCount = lazyStaggeredGridMeasuredItem.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            LazyLayoutAnimateItemModifierNode node = getNode(lazyStaggeredGridMeasuredItem.getParentData(i));
            if (node != null) {
                function1.invoke(node);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02a9, code lost:
    
        if (r7 >= r22.firstVisibleIndex) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02b1, code lost:
    
        r22.movingAwayToEndBound.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02ab, code lost:
    
        r22.movingAwayToStartBound.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02a1, code lost:
    
        r22.keyToItemInfoMap.remove(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
    
        r22.firstVisibleIndex = r7;
        r7 = r22.keyIndexMap;
        r22.keyIndexMap = r27.getKeyIndexMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0263, code lost:
    
        r22.keyToItemInfoMap.remove(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02c0, code lost:
    
        if ((!r22.movingAwayToStartBound.isEmpty()) == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02c2, code lost:
    
        r1 = r22.movingAwayToStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02c8, code lost:
    
        if (r1.size() <= 1) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
    
        if (r28 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02ca, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2(r22));
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02d4, code lost:
    
        r1 = r22.movingAwayToStartBound;
        r4 = r1.size();
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02db, code lost:
    
        if (r5 >= r4) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02dd, code lost:
    
        r6 = r1.get(r5);
        r7 = r6.getLane();
        r2[r7] = r2[r7] + r6.getMainAxisSize();
        r6.position(0 - r2[r6.getLane()], ((androidx.compose.foundation.lazy.staggeredgrid.ItemInfo) kotlin.collections.MapsKt.getValue(r22.keyToItemInfoMap, r6.getKey())).getCrossAxisOffset(), r25);
        r26.add(r6);
        startAnimationsIfNeeded(r6);
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0319, code lost:
    
        r10 = r25;
        r7 = r26;
        r8 = 0;
        kotlin.collections.ArraysKt.fill$default(r2, 0, 0, 0, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x033c, code lost:
    
        if ((!r22.movingAwayToEndBound.isEmpty()) == false) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x033e, code lost:
    
        r1 = r22.movingAwayToEndBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0344, code lost:
    
        if (r1.size() <= 1) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0054, code lost:
    
        r8 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0346, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2(r22));
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0350, code lost:
    
        r1 = r22.movingAwayToEndBound;
        r3 = r1.size();
        r6 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0357, code lost:
    
        if (r6 >= r3) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0359, code lost:
    
        r4 = r1.get(r6);
        r8 = r10 + r2[r4.getLane()];
        r5 = r4.getLane();
        r2[r5] = r2[r5] + r4.getMainAxisSize();
        r4.position(r8, ((androidx.compose.foundation.lazy.staggeredgrid.ItemInfo) kotlin.collections.MapsKt.getValue(r22.keyToItemInfoMap, r4.getKey())).getCrossAxisOffset(), r10);
        r7.add(r4);
        startAnimationsIfNeeded(r4);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0390, code lost:
    
        r22.movingInFromStartBound.clear();
        r22.movingInFromEndBound.clear();
        r22.movingAwayToStartBound.clear();
        r22.movingAwayToEndBound.clear();
        r22.movingAwayKeys.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x03a9, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x032e, code lost:
    
        r10 = r25;
        r7 = r26;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01a7, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0059, code lost:
    
        if (r28 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01e6, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0060, code lost:
    
        r9 = androidx.compose.ui.unit.IntOffsetKt.IntOffset(r23, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0057, code lost:
    
        r8 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0047, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        r9 = androidx.compose.ui.unit.IntOffsetKt.IntOffset(0, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
    
        r22.movingAwayKeys.addAll(r22.keyToItemInfoMap.keySet());
        r1 = r26.size();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0076, code lost:
    
        if (r11 >= r1) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0078, code lost:
    
        r13 = r2.get(r11);
        r22.movingAwayKeys.remove(r13.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008b, code lost:
    
        if (getHasAnimations(r13) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008d, code lost:
    
        r14 = r22.keyToItemInfoMap.get(r13.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0099, code lost:
    
        if (r14 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        r24 = r1;
        r22.keyToItemInfoMap.put(r13.getKey(), new androidx.compose.foundation.lazy.staggeredgrid.ItemInfo(r13.getLane(), r13.getSpan(), r13.getCrossAxisOffset()));
        r1 = r7.getIndex(r13.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c0, code lost:
    
        if (r1 == (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c6, code lost:
    
        if (r13.getIndex() == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c8, code lost:
    
        if (r1 >= r5) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ca, code lost:
    
        r22.movingInFromStartBound.add(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ec, code lost:
    
        r12 = r7;
        r25 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0168, code lost:
    
        r11 = r11 + 1;
        r1 = r24;
        r8 = r25;
        r2 = r26;
        r4 = r29;
        r7 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d0, code lost:
    
        r22.movingInFromEndBound.add(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d6, code lost:
    
        r1 = r13.getOffset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00de, code lost:
    
        if (r13.getIsVertical() == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e0, code lost:
    
        r1 = androidx.compose.ui.unit.IntOffset.m5002getYimpl(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e9, code lost:
    
        initializeNode(r13, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e5, code lost:
    
        r1 = androidx.compose.ui.unit.IntOffset.m5001getXimpl(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f1, code lost:
    
        r24 = r1;
        r1 = r13.getPlaceablesCount();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f8, code lost:
    
        if (r2 >= r1) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fa, code lost:
    
        r6 = getNode(r13.getParentData(r2));
        r12 = r7;
        r25 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0105, code lost:
    
        if (r6 == null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0115, code lost:
    
        if (androidx.compose.ui.unit.IntOffset.m5000equalsimpl0(r6.getRawOffset(), androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemModifierNode.INSTANCE.m638getNotInitializednOccac()) != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0117, code lost:
    
        r3 = r6.getRawOffset();
        r6.m637setRawOffsetgyyYBs(androidx.compose.ui.unit.IntOffsetKt.IntOffset(androidx.compose.ui.unit.IntOffset.m5001getXimpl(r3) + androidx.compose.ui.unit.IntOffset.m5001getXimpl(r9), androidx.compose.ui.unit.IntOffset.m5002getYimpl(r3) + androidx.compose.ui.unit.IntOffset.m5002getYimpl(r9)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0134, code lost:
    
        r2 = r2 + 1;
        r8 = r25;
        r7 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013e, code lost:
    
        r12 = r7;
        r25 = r8;
        r14.setLane(r13.getLane());
        r14.setSpan(r13.getSpan());
        r14.setCrossAxisOffset(r13.getCrossAxisOffset());
        startAnimationsIfNeeded(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x015a, code lost:
    
        r24 = r1;
        r12 = r7;
        r25 = r8;
        r22.keyToItemInfoMap.remove(r13.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0178, code lost:
    
        r1 = r4;
        r12 = r7;
        r25 = r8;
        r2 = new int[r1];
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x017f, code lost:
    
        if (r3 >= r1) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0181, code lost:
    
        r2[r3] = 0;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0191, code lost:
    
        if ((!r22.movingInFromStartBound.isEmpty()) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0193, code lost:
    
        r1 = r22.movingInFromStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0199, code lost:
    
        if (r1.size() <= 1) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x019b, code lost:
    
        r5 = r12;
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a8, code lost:
    
        r1 = r22.movingInFromStartBound;
        r4 = r1.size();
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01af, code lost:
    
        if (r6 >= r4) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01b1, code lost:
    
        r7 = r1.get(r6);
        r8 = r7.getLane();
        r2[r8] = r2[r8] + r7.getMainAxisSize();
        initializeNode(r7, 0 - r2[r7.getLane()]);
        startAnimationsIfNeeded(r7);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01d6, code lost:
    
        kotlin.collections.ArraysKt.fill$default(r2, 0, 0, 0, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01f0, code lost:
    
        if ((!r22.movingInFromEndBound.isEmpty()) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01f2, code lost:
    
        r1 = r22.movingInFromEndBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f8, code lost:
    
        if (r1.size() <= 1) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01fa, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0204, code lost:
    
        r1 = r22.movingInFromEndBound;
        r4 = r1.size();
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x020b, code lost:
    
        if (r6 >= r4) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x020d, code lost:
    
        r7 = r1.get(r6);
        r8 = r25 + r2[r7.getLane()];
        r9 = r7.getLane();
        r2[r9] = r2[r9] + r7.getMainAxisSize();
        initializeNode(r7, r8);
        startAnimationsIfNeeded(r7);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0231, code lost:
    
        kotlin.collections.ArraysKt.fill$default(r2, 0, 0, 0, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0240, code lost:
    
        r1 = r22.movingAwayKeys.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x024c, code lost:
    
        if (r1.hasNext() == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0038, code lost:
    
        r5 = r22.firstVisibleIndex;
        r7 = (androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasuredItem) kotlin.collections.CollectionsKt.firstOrNull((java.util.List) r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x024e, code lost:
    
        r4 = r1.next();
        r6 = (androidx.compose.foundation.lazy.staggeredgrid.ItemInfo) kotlin.collections.MapsKt.getValue(r22.keyToItemInfoMap, r4);
        r7 = r22.keyIndexMap.getIndex(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0261, code lost:
    
        if (r7 != (-1)) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x026b, code lost:
    
        r9 = r27.m678getAndMeasurejy6DScQ(r7, androidx.compose.foundation.lazy.staggeredgrid.SpanRange.m683constructorimpl(r6.getLane(), r6.getSpan()));
        r10 = r9.getPlaceablesCount();
        r11 = 0;
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0283, code lost:
    
        if (r11 >= r10) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0285, code lost:
    
        r13 = getNode(r9.getParentData(r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x028d, code lost:
    
        if (r13 == null) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0293, code lost:
    
        if (r13.isAnimationInProgress() != true) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0295, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
    
        if (r7 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0296, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0299, code lost:
    
        if (r12 != false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x029f, code lost:
    
        if (r7 != r5.getIndex(r4)) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
    
        r7 = r7.getIndex();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasured(int r23, int r24, int r25, java.util.List<androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasuredItem> r26, androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureProvider r27, boolean r28, int r29) {
        /*
            Method dump skipped, instructions count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemPlacementAnimator.onMeasured(int, int, int, java.util.List, androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureProvider, boolean, int):void");
    }

    private final void startAnimationsIfNeeded(LazyStaggeredGridMeasuredItem item) {
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

    private final boolean getHasAnimations(LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem) {
        int placeablesCount = lazyStaggeredGridMeasuredItem.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            if (getNode(lazyStaggeredGridMeasuredItem.getParentData(i)) != null) {
                return true;
            }
        }
        return false;
    }
}
