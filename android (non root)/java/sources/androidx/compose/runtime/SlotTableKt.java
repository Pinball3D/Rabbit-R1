package androidx.compose.runtime;

import io.sentry.SentryLockReason;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: SlotTable.kt */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u001c\n\u0002\b\n\u001a\u0010\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u0015\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u0019\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u001a\u001a\u00020\u001b*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u001c\u001a\u00020\u001b*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u001d\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f*\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u0001H\u0002\u001a;\u0010!\u001a\u00020\"*\u0012\u0012\u0004\u0012\u00020\"0#j\b\u0012\u0004\u0012\u00020\"`$2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u00012\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\"0(H\u0082\b\u001a\u0014\u0010)\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010*\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f*\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u0001H\u0002\u001a\u0014\u0010,\u001a\u00020\u001b*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010-\u001a\u00020\u001b*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010.\u001a\u00020\u001b*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001aD\u0010/\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u00020\u001b2\u0006\u00104\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0002\u001a\u0014\u00101\u001a\u00020\u001b*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u00100\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u001c\u00105\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f*\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u0001H\u0002\u001a,\u00106\u001a\u00020\u0001*\u0012\u0012\u0004\u0012\u00020\"0#j\b\u0012\u0004\u0012\u00020\"`$2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0001H\u0002\u001a\u0014\u00107\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u001c\u00108\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f*\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u0001H\u0002\u001a\u0014\u00109\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u0010:\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u0014\u00104\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u001c\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f*\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u0001H\u0002\u001a,\u0010<\u001a\u00020\u0001*\u0012\u0012\u0004\u0012\u00020\"0#j\b\u0012\u0004\u0012\u00020\"`$2\u0006\u0010=\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0001H\u0002\u001a \u0010>\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f*\u00020\u00172\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00010@H\u0002\u001a\u0014\u0010A\u001a\u00020\u0001*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001H\u0002\u001a\u001c\u0010B\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u001bH\u0002\u001a\u001c\u0010C\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010D\u001a\u00020\u0001H\u0002\u001a\u001c\u0010E\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u0001H\u0002\u001a\u001c\u0010F\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0002\u001a\u001c\u0010G\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u001bH\u0002\u001a\u001c\u0010H\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0002\u001a\u001c\u0010I\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006J"}, d2 = {"Aux_Mask", "", "Aux_Shift", "ContainsMark_Mask", "DataAnchor_Offset", "GroupInfo_Offset", "Group_Fields_Size", "Key_Offset", "Mark_Mask", "MinGroupGrowthSize", "MinSlotsGrowthSize", "NodeBit_Mask", "NodeCount_Mask", "ObjectKey_Mask", "ObjectKey_Shift", "ParentAnchor_Offset", "Size_Offset", "Slots_Shift", "parentAnchorPivot", "countOneBits", "value", "addAux", "", "", SentryLockReason.JsonKeys.ADDRESS, "auxIndex", "containsAnyMark", "", "containsMark", "dataAnchor", "dataAnchors", "", "len", "getOrAdd", "Landroidx/compose/runtime/Anchor;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "index", "effectiveSize", "block", "Lkotlin/Function0;", "groupInfo", "groupSize", "groupSizes", "hasAux", "hasMark", "hasObjectKey", "initGroup", "key", "isNode", "hasDataKey", "hasData", "parentAnchor", "keys", "locationOf", "nodeCount", "nodeCounts", "nodeIndex", "objectKeyIndex", "parentAnchors", "search", "location", "slice", "indices", "", "slotAnchor", "updateContainsMark", "updateDataAnchor", "anchor", "updateGroupKey", "updateGroupSize", "updateMark", "updateNodeCount", "updateParentAnchor", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SlotTableKt {
    private static final int Aux_Mask = 268435456;
    private static final int Aux_Shift = 28;
    private static final int ContainsMark_Mask = 67108864;
    private static final int DataAnchor_Offset = 4;
    private static final int GroupInfo_Offset = 1;
    private static final int Group_Fields_Size = 5;
    private static final int Key_Offset = 0;
    private static final int Mark_Mask = 134217728;
    private static final int MinGroupGrowthSize = 32;
    private static final int MinSlotsGrowthSize = 32;
    private static final int NodeBit_Mask = 1073741824;
    private static final int NodeCount_Mask = 67108863;
    private static final int ObjectKey_Mask = 536870912;
    private static final int ObjectKey_Shift = 29;
    private static final int ParentAnchor_Offset = 2;
    private static final int Size_Offset = 3;
    private static final int Slots_Shift = 28;
    private static final int parentAnchorPivot = -2;

    public static final /* synthetic */ int access$auxIndex(int[] iArr, int i) {
        return auxIndex(iArr, i);
    }

    public static final /* synthetic */ boolean access$containsAnyMark(int[] iArr, int i) {
        return containsAnyMark(iArr, i);
    }

    public static final /* synthetic */ boolean access$containsMark(int[] iArr, int i) {
        return containsMark(iArr, i);
    }

    public static final /* synthetic */ int access$dataAnchor(int[] iArr, int i) {
        return dataAnchor(iArr, i);
    }

    public static final /* synthetic */ List access$dataAnchors(int[] iArr, int i) {
        return dataAnchors(iArr, i);
    }

    public static final /* synthetic */ int access$groupSize(int[] iArr, int i) {
        return groupSize(iArr, i);
    }

    public static final /* synthetic */ List access$groupSizes(int[] iArr, int i) {
        return groupSizes(iArr, i);
    }

    public static final /* synthetic */ boolean access$hasAux(int[] iArr, int i) {
        return hasAux(iArr, i);
    }

    public static final /* synthetic */ boolean access$hasMark(int[] iArr, int i) {
        return hasMark(iArr, i);
    }

    public static final /* synthetic */ boolean access$hasObjectKey(int[] iArr, int i) {
        return hasObjectKey(iArr, i);
    }

    public static final /* synthetic */ boolean access$isNode(int[] iArr, int i) {
        return isNode(iArr, i);
    }

    public static final /* synthetic */ int access$key(int[] iArr, int i) {
        return key(iArr, i);
    }

    public static final /* synthetic */ List access$keys(int[] iArr, int i) {
        return keys(iArr, i);
    }

    public static final /* synthetic */ int access$nodeCount(int[] iArr, int i) {
        return nodeCount(iArr, i);
    }

    public static final /* synthetic */ List access$nodeCounts(int[] iArr, int i) {
        return nodeCounts(iArr, i);
    }

    public static final /* synthetic */ int access$nodeIndex(int[] iArr, int i) {
        return nodeIndex(iArr, i);
    }

    public static final /* synthetic */ int access$objectKeyIndex(int[] iArr, int i) {
        return objectKeyIndex(iArr, i);
    }

    public static final /* synthetic */ int access$parentAnchor(int[] iArr, int i) {
        return parentAnchor(iArr, i);
    }

    public static final /* synthetic */ List access$parentAnchors(int[] iArr, int i) {
        return parentAnchors(iArr, i);
    }

    public static final /* synthetic */ int access$search(ArrayList arrayList, int i, int i2) {
        return search(arrayList, i, i2);
    }

    public static final /* synthetic */ int access$slotAnchor(int[] iArr, int i) {
        return slotAnchor(iArr, i);
    }

    public static final int countOneBits(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
            case 2:
            case 4:
                return 1;
            case 3:
            case 5:
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    public static final int groupInfo(int[] iArr, int i) {
        return iArr[(i * 5) + 1];
    }

    public static final boolean isNode(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 1073741824) != 0;
    }

    public static final int nodeIndex(int[] iArr, int i) {
        return iArr[(i * 5) + 4];
    }

    public static final boolean hasObjectKey(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 536870912) != 0;
    }

    public static final int objectKeyIndex(int[] iArr, int i) {
        int i2 = i * 5;
        return iArr[i2 + 4] + countOneBits(iArr[i2 + 1] >> 30);
    }

    public static final boolean hasAux(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 268435456) != 0;
    }

    public static final void addAux(int[] iArr, int i) {
        int i2 = (i * 5) + 1;
        iArr[i2] = iArr[i2] | 268435456;
    }

    public static final boolean hasMark(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 134217728) != 0;
    }

    public static final void updateMark(int[] iArr, int i, boolean z) {
        int i2 = (i * 5) + 1;
        if (z) {
            iArr[i2] = iArr[i2] | 134217728;
        } else {
            iArr[i2] = iArr[i2] & (-134217729);
        }
    }

    public static final boolean containsMark(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 67108864) != 0;
    }

    public static final void updateContainsMark(int[] iArr, int i, boolean z) {
        int i2 = (i * 5) + 1;
        if (z) {
            iArr[i2] = iArr[i2] | 67108864;
        } else {
            iArr[i2] = iArr[i2] & (-67108865);
        }
    }

    public static final boolean containsAnyMark(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 201326592) != 0;
    }

    public static final int auxIndex(int[] iArr, int i) {
        int i2 = i * 5;
        if (i2 >= iArr.length) {
            return iArr.length;
        }
        return countOneBits(iArr[i2 + 1] >> 29) + iArr[i2 + 4];
    }

    public static final int slotAnchor(int[] iArr, int i) {
        int i2 = i * 5;
        return iArr[i2 + 4] + countOneBits(iArr[i2 + 1] >> 28);
    }

    public static final int key(int[] iArr, int i) {
        return iArr[i * 5];
    }

    public static /* synthetic */ List keys$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return keys(iArr, i);
    }

    public static final List<Integer> keys(int[] iArr, int i) {
        return slice(iArr, RangesKt.step(RangesKt.until(0, i), 5));
    }

    public static final int nodeCount(int[] iArr, int i) {
        return iArr[(i * 5) + 1] & NodeCount_Mask;
    }

    public static final void updateNodeCount(int[] iArr, int i, int i2) {
        ComposerKt.runtimeCheck(i2 >= 0 && i2 < NodeCount_Mask);
        int i3 = (i * 5) + 1;
        iArr[i3] = i2 | (iArr[i3] & (-67108864));
    }

    static /* synthetic */ List nodeCounts$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return nodeCounts(iArr, i);
    }

    public static final List<Integer> nodeCounts(int[] iArr, int i) {
        List<Integer> slice = slice(iArr, RangesKt.step(RangesKt.until(1, i), 5));
        ArrayList arrayList = new ArrayList(slice.size());
        int size = slice.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(Integer.valueOf(slice.get(i2).intValue() & NodeCount_Mask));
        }
        return arrayList;
    }

    public static final int parentAnchor(int[] iArr, int i) {
        return iArr[(i * 5) + 2];
    }

    public static final void updateParentAnchor(int[] iArr, int i, int i2) {
        iArr[(i * 5) + 2] = i2;
    }

    static /* synthetic */ List parentAnchors$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return parentAnchors(iArr, i);
    }

    public static final List<Integer> parentAnchors(int[] iArr, int i) {
        return slice(iArr, RangesKt.step(RangesKt.until(2, i), 5));
    }

    public static final int groupSize(int[] iArr, int i) {
        return iArr[(i * 5) + 3];
    }

    public static final void updateGroupSize(int[] iArr, int i, int i2) {
        ComposerKt.runtimeCheck(i2 >= 0);
        iArr[(i * 5) + 3] = i2;
    }

    private static final List<Integer> slice(int[] iArr, Iterable<Integer> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(iArr[it.next().intValue()]));
        }
        return arrayList;
    }

    static /* synthetic */ List groupSizes$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return groupSizes(iArr, i);
    }

    public static final List<Integer> groupSizes(int[] iArr, int i) {
        return slice(iArr, RangesKt.step(RangesKt.until(3, i), 5));
    }

    public static final int dataAnchor(int[] iArr, int i) {
        return iArr[(i * 5) + 4];
    }

    public static final void updateDataAnchor(int[] iArr, int i, int i2) {
        iArr[(i * 5) + 4] = i2;
    }

    public static /* synthetic */ List dataAnchors$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return dataAnchors(iArr, i);
    }

    public static final List<Integer> dataAnchors(int[] iArr, int i) {
        return slice(iArr, RangesKt.step(RangesKt.until(4, i), 5));
    }

    public static final void initGroup(int[] iArr, int i, int i2, boolean z, boolean z2, boolean z3, int i3, int i4) {
        int i5 = z ? 1073741824 : 0;
        int i6 = z2 ? 536870912 : 0;
        int i7 = z3 ? 268435456 : 0;
        int i8 = i * 5;
        iArr[i8] = i2;
        iArr[i8 + 1] = i5 | i6 | i7;
        iArr[i8 + 2] = i3;
        iArr[i8 + 3] = 0;
        iArr[i8 + 4] = i4;
    }

    private static final void updateGroupKey(int[] iArr, int i, int i2) {
        iArr[i * 5] = i2;
    }

    private static final Anchor getOrAdd(ArrayList<Anchor> arrayList, int i, int i2, Function0<Anchor> function0) {
        int search = search(arrayList, i, i2);
        if (search < 0) {
            Anchor invoke = function0.invoke();
            arrayList.add(-(search + 1), invoke);
            return invoke;
        }
        Anchor anchor = arrayList.get(search);
        Intrinsics.checkNotNullExpressionValue(anchor, "get(location)");
        return anchor;
    }

    public static final int search(ArrayList<Anchor> arrayList, int i, int i2) {
        int size = arrayList.size() - 1;
        int i3 = 0;
        while (i3 <= size) {
            int i4 = (i3 + size) >>> 1;
            int location = arrayList.get(i4).getLocation();
            if (location < 0) {
                location += i2;
            }
            int compare = Intrinsics.compare(location, i);
            if (compare < 0) {
                i3 = i4 + 1;
            } else {
                if (compare <= 0) {
                    return i4;
                }
                size = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public static final int locationOf(ArrayList<Anchor> arrayList, int i, int i2) {
        int search = search(arrayList, i, i2);
        return search >= 0 ? search : -(search + 1);
    }
}
