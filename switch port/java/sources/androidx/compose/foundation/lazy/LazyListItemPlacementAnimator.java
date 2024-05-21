package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemModifierNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: LazyListItemPlacementAnimator.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u0006H\u0002J<\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020\u001bJ\u0010\u0010'\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002JE\u0010(\u001a\u00020\u001b*\u00020\u000e26\u0010)\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u001b0*H\u0082\bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00010\nj\b\u0012\u0004\u0012\u00020\u0001`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u0004\u0018\u00010\u00018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006."}, d2 = {"Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;", "", "()V", "activeKeys", "", "firstVisibleIndex", "", "keyIndexMap", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "movingAwayKeys", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "movingAwayToEndBound", "", "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "movingAwayToStartBound", "movingInFromEndBound", "movingInFromStartBound", "hasAnimations", "", "getHasAnimations", "(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z", "node", "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "getNode", "(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "initializeNode", "", "item", "mainAxisOffset", "onMeasured", "consumedScroll", "layoutWidth", "layoutHeight", "positionedItems", "itemProvider", "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;", "isVertical", "reset", "startAnimationsIfNeeded", "forEachNode", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "placeableIndex", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListItemPlacementAnimator {
    private int firstVisibleIndex;
    private final Set<Object> activeKeys = new LinkedHashSet();
    private LazyLayoutKeyIndexMap keyIndexMap = LazyLayoutKeyIndexMap.INSTANCE;
    private final LinkedHashSet<Object> movingAwayKeys = new LinkedHashSet<>();
    private final List<LazyListMeasuredItem> movingInFromStartBound = new ArrayList();
    private final List<LazyListMeasuredItem> movingInFromEndBound = new ArrayList();
    private final List<LazyListMeasuredItem> movingAwayToStartBound = new ArrayList();
    private final List<LazyListMeasuredItem> movingAwayToEndBound = new ArrayList();

    public final void reset() {
        this.activeKeys.clear();
        this.keyIndexMap = LazyLayoutKeyIndexMap.INSTANCE;
        this.firstVisibleIndex = -1;
    }

    private final void initializeNode(LazyListMeasuredItem item, int mainAxisOffset) {
        long m4997copyiSbpLlY$default;
        long m600getOffsetBjo55l4 = item.m600getOffsetBjo55l4(0);
        if (item.getIsVertical()) {
            m4997copyiSbpLlY$default = IntOffset.m4997copyiSbpLlY$default(m600getOffsetBjo55l4, 0, mainAxisOffset, 1, null);
        } else {
            m4997copyiSbpLlY$default = IntOffset.m4997copyiSbpLlY$default(m600getOffsetBjo55l4, mainAxisOffset, 0, 2, null);
        }
        int placeablesCount = item.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            LazyLayoutAnimateItemModifierNode node = getNode(item.getParentData(i));
            if (node != null) {
                long m600getOffsetBjo55l42 = item.m600getOffsetBjo55l4(i);
                long IntOffset = IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m600getOffsetBjo55l42) - IntOffset.m5001getXimpl(m600getOffsetBjo55l4), IntOffset.m5002getYimpl(m600getOffsetBjo55l42) - IntOffset.m5002getYimpl(m600getOffsetBjo55l4));
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

    private final void forEachNode(LazyListMeasuredItem lazyListMeasuredItem, Function2<? super Integer, ? super LazyLayoutAnimateItemModifierNode, Unit> function2) {
        int placeablesCount = lazyListMeasuredItem.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            LazyLayoutAnimateItemModifierNode node = getNode(lazyListMeasuredItem.getParentData(i));
            if (node != null) {
                function2.invoke(Integer.valueOf(i), node);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f1, code lost:
    
        r18.activeKeys.remove(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c3, code lost:
    
        r18.activeKeys.remove(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0207, code lost:
    
        r1 = r18.movingAwayToStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x020d, code lost:
    
        if (r1.size() <= 1) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x020f, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2(r18));
     */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
    
        r18.firstVisibleIndex = r8;
        r8 = r18.keyIndexMap;
        r18.keyIndexMap = r23.getKeyIndexMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0219, code lost:
    
        r1 = r18.movingAwayToStartBound;
        r2 = r1.size();
        r4 = 0;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0221, code lost:
    
        if (r4 >= r2) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0223, code lost:
    
        r6 = r1.get(r4);
        r5 = r5 + r6.getSize();
        r6.position(0 - r5, r20, r21);
        r22.add(r6);
        startAnimationsIfNeeded(r6);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0242, code lost:
    
        r1 = r18.movingAwayToEndBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x024e, code lost:
    
        if (r1.size() <= 1) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0250, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.LazyListItemPlacementAnimator$onMeasured$$inlined$sortBy$2(r18));
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x025a, code lost:
    
        r1 = r18.movingAwayToEndBound;
        r2 = r1.size();
        r3 = 0;
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0263, code lost:
    
        if (r3 >= r2) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0265, code lost:
    
        r4 = r1.get(r3);
        r5 = r9 + r16;
        r16 = r16 + r4.getSize();
        r4.position(r5, r20, r21);
        r22.add(r4);
        startAnimationsIfNeeded(r4);
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0054, code lost:
    
        if (r24 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x027f, code lost:
    
        r18.movingInFromStartBound.clear();
        r18.movingInFromEndBound.clear();
        r18.movingAwayToStartBound.clear();
        r18.movingAwayToEndBound.clear();
        r18.movingAwayKeys.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0298, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0060, code lost:
    
        r10 = androidx.compose.ui.unit.IntOffsetKt.IntOffset(r19, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0058, code lost:
    
        r9 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0049, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
    
        r9 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0059, code lost:
    
        if (r24 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        r10 = androidx.compose.ui.unit.IntOffsetKt.IntOffset(0, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
    
        r18.movingAwayKeys.addAll(r18.activeKeys);
        r1 = r22.size();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0073, code lost:
    
        if (r12 >= r1) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0075, code lost:
    
        r14 = r4.get(r12);
        r18.movingAwayKeys.remove(r14.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0088, code lost:
    
        if (getHasAnimations(r14) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0094, code lost:
    
        if (r18.activeKeys.contains(r14.getKey()) != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0096, code lost:
    
        r18.activeKeys.add(r14.getKey());
        r7 = r8.getIndex(r14.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
    
        if (r7 == (-1)) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00af, code lost:
    
        if (r14.getIndex() == r7) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b1, code lost:
    
        if (r7 >= r6) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
    
        r18.movingInFromStartBound.add(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d6, code lost:
    
        r19 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0137, code lost:
    
        r12 = r12 + 1;
        r1 = r19;
        r4 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b9, code lost:
    
        r18.movingInFromEndBound.add(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bf, code lost:
    
        r15 = r14.m600getOffsetBjo55l4(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c8, code lost:
    
        if (r14.getIsVertical() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ca, code lost:
    
        r13 = androidx.compose.ui.unit.IntOffset.m5002getYimpl(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d3, code lost:
    
        initializeNode(r14, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cf, code lost:
    
        r13 = androidx.compose.ui.unit.IntOffset.m5001getXimpl(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d9, code lost:
    
        r13 = r14.getPlaceablesCount();
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00df, code lost:
    
        if (r15 >= r13) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e1, code lost:
    
        r7 = getNode(r14.getParentData(r15));
        r19 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00eb, code lost:
    
        if (r7 == null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fb, code lost:
    
        if (androidx.compose.ui.unit.IntOffset.m5000equalsimpl0(r7.getRawOffset(), androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemModifierNode.INSTANCE.m638getNotInitializednOccac()) != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fd, code lost:
    
        r1 = r7.getRawOffset();
        r7.m637setRawOffsetgyyYBs(androidx.compose.ui.unit.IntOffsetKt.IntOffset(androidx.compose.ui.unit.IntOffset.m5001getXimpl(r1) + androidx.compose.ui.unit.IntOffset.m5001getXimpl(r10), androidx.compose.ui.unit.IntOffset.m5002getYimpl(r1) + androidx.compose.ui.unit.IntOffset.m5002getYimpl(r10)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011a, code lost:
    
        r15 = r15 + 1;
        r1 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0126, code lost:
    
        r19 = r1;
        startAnimationsIfNeeded(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x012c, code lost:
    
        r19 = r1;
        r18.activeKeys.remove(r14.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0144, code lost:
    
        r1 = r18.movingInFromStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x014b, code lost:
    
        if (r1.size() <= 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014d, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0157, code lost:
    
        r1 = r18.movingInFromStartBound;
        r2 = r1.size();
        r4 = 0;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x015f, code lost:
    
        if (r4 >= r2) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0161, code lost:
    
        r7 = r1.get(r4);
        r6 = r6 + r7.getSize();
        initializeNode(r7, 0 - r6);
        startAnimationsIfNeeded(r7);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0177, code lost:
    
        r1 = r18.movingInFromEndBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x017d, code lost:
    
        if (r1.size() <= 1) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x017f, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r1, new androidx.compose.foundation.lazy.LazyListItemPlacementAnimator$onMeasured$$inlined$sortBy$1(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0189, code lost:
    
        r1 = r18.movingInFromEndBound;
        r2 = r1.size();
        r4 = 0;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0191, code lost:
    
        if (r4 >= r2) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0193, code lost:
    
        r7 = r1.get(r4);
        r10 = r9 + r6;
        r6 = r6 + r7.getSize();
        initializeNode(r7, r10);
        startAnimationsIfNeeded(r7);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a9, code lost:
    
        r1 = r18.movingAwayKeys.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01b5, code lost:
    
        if (r1.hasNext() == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b7, code lost:
    
        r2 = r1.next();
        r4 = r18.keyIndexMap.getIndex(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01c1, code lost:
    
        if (r4 != (-1)) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01c9, code lost:
    
        r6 = r23.getAndMeasure(r4);
        r7 = r6.getPlaceablesCount();
        r10 = 0;
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01d3, code lost:
    
        if (r10 >= r7) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d5, code lost:
    
        r12 = getNode(r6.getParentData(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01dd, code lost:
    
        if (r12 == null) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01e3, code lost:
    
        if (r12.isAnimationInProgress() != true) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003a, code lost:
    
        r6 = r18.firstVisibleIndex;
        r8 = (androidx.compose.foundation.lazy.LazyListMeasuredItem) kotlin.collections.CollectionsKt.firstOrNull((java.util.List) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e5, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e6, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01e9, code lost:
    
        if (r11 != false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ef, code lost:
    
        if (r4 != r8.getIndex(r2)) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0042, code lost:
    
        if (r8 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01f9, code lost:
    
        if (r4 >= r18.firstVisibleIndex) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0201, code lost:
    
        r18.movingAwayToEndBound.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01fb, code lost:
    
        r18.movingAwayToStartBound.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0044, code lost:
    
        r8 = r8.getIndex();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasured(int r19, int r20, int r21, java.util.List<androidx.compose.foundation.lazy.LazyListMeasuredItem> r22, androidx.compose.foundation.lazy.LazyListMeasuredItemProvider r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListItemPlacementAnimator.onMeasured(int, int, int, java.util.List, androidx.compose.foundation.lazy.LazyListMeasuredItemProvider, boolean):void");
    }

    private final void startAnimationsIfNeeded(LazyListMeasuredItem item) {
        int placeablesCount = item.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            LazyLayoutAnimateItemModifierNode node = getNode(item.getParentData(i));
            if (node != null) {
                long m600getOffsetBjo55l4 = item.m600getOffsetBjo55l4(i);
                long rawOffset = node.getRawOffset();
                if (!IntOffset.m5000equalsimpl0(rawOffset, LazyLayoutAnimateItemModifierNode.INSTANCE.m638getNotInitializednOccac()) && !IntOffset.m5000equalsimpl0(rawOffset, m600getOffsetBjo55l4)) {
                    node.m634animatePlacementDeltagyyYBs(IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(m600getOffsetBjo55l4) - IntOffset.m5001getXimpl(rawOffset), IntOffset.m5002getYimpl(m600getOffsetBjo55l4) - IntOffset.m5002getYimpl(rawOffset)));
                }
                node.m637setRawOffsetgyyYBs(m600getOffsetBjo55l4);
            }
        }
    }

    private final boolean getHasAnimations(LazyListMeasuredItem lazyListMeasuredItem) {
        int placeablesCount = lazyListMeasuredItem.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            if (getNode(lazyListMeasuredItem.getParentData(i)) != null) {
                return true;
            }
        }
        return false;
    }
}
