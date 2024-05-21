package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SlotTable.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u0015\n\u0002\b\u0010\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010;\u001a\u00020<2\b\b\u0002\u0010=\u001a\u00020\nJ\u0006\u0010>\u001a\u00020?J\u0006\u0010@\u001a\u00020?J\u000e\u0010A\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\nJ\u0006\u0010B\u001a\u00020?J\u0006\u0010C\u001a\u00020?J\f\u0010D\u001a\b\u0012\u0004\u0012\u00020F0EJO\u0010G\u001a\u00020?2\u0006\u0010H\u001a\u00020\n28\u0010I\u001a4\u0012\u0013\u0012\u00110\n¢\u0006\f\bK\u0012\b\bL\u0012\u0004\b\b(=\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\bK\u0012\b\bL\u0012\u0004\b\b(M\u0012\u0004\u0012\u00020?0JH\u0000¢\u0006\u0002\bNJ\u0010\u0010O\u001a\u0004\u0018\u00010\u00012\u0006\u0010=\u001a\u00020\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0006\u0010=\u001a\u00020\nJ\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u0010\u0010P\u001a\u0004\u0018\u00010\u00012\u0006\u0010=\u001a\u00020\nJ\u0018\u0010P\u001a\u0004\u0018\u00010\u00012\u0006\u0010H\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010;\u001a\u00020<J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0006\u0010=\u001a\u00020\nJ\u000e\u0010\u001e\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\nJ\u000e\u0010R\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\nJ\u000e\u0010*\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\nJ\b\u0010S\u001a\u0004\u0018\u00010\u0001J\u0010\u0010T\u001a\u0004\u0018\u00010\u00012\u0006\u0010=\u001a\u00020\nJ\u000e\u0010+\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010-\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010U\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010V\u001a\u00020?2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010W\u001a\u00020?2\u0006\u0010=\u001a\u00020\nJ\u0006\u0010X\u001a\u00020\nJ\u0006\u0010Y\u001a\u00020?J\u0006\u0010Z\u001a\u00020?J\u0006\u0010[\u001a\u00020?J\b\u0010\\\u001a\u00020]H\u0016J\u0016\u0010^\u001a\u0004\u0018\u00010\u0001*\u00020%2\u0006\u0010=\u001a\u00020\nH\u0002J\u0016\u0010T\u001a\u0004\u0018\u00010\u0001*\u00020%2\u0006\u0010=\u001a\u00020\nH\u0002J\u0016\u0010_\u001a\u0004\u0018\u00010\u0001*\u00020%2\u0006\u0010=\u001a\u00020\nH\u0002R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00018F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\rR\u0011\u0010\u0018\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\rR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00018F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0015R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00018F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0015R\u0011\u0010\u001e\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\rR\u0011\u0010 \u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b!\u0010\rR\u0011\u0010\"\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b#\u0010\rR\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010'\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b(\u0010\tR\u0011\u0010)\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b)\u0010\tR\u0011\u0010*\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b*\u0010\tR\u0011\u0010+\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b,\u0010\rR\u001e\u0010-\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\rR\u0011\u0010/\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b0\u0010\rR\u0011\u00101\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b2\u0010\rR\u0011\u00103\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b4\u0010\rR\u0018\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000106X\u0082\u0004¢\u0006\u0004\n\u0002\u00107R\u000e\u00108\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:¨\u0006`"}, d2 = {"Landroidx/compose/runtime/SlotReader;", "", "table", "Landroidx/compose/runtime/SlotTable;", "(Landroidx/compose/runtime/SlotTable;)V", "<set-?>", "", "closed", "getClosed", "()Z", "", "currentEnd", "getCurrentEnd", "()I", "currentGroup", "getCurrentGroup", "currentSlot", "currentSlotEnd", "emptyCount", "groupAux", "getGroupAux", "()Ljava/lang/Object;", "groupEnd", "getGroupEnd", "groupKey", "getGroupKey", "groupNode", "getGroupNode", "groupObjectKey", "getGroupObjectKey", "groupSize", "getGroupSize", "groupSlotCount", "getGroupSlotCount", "groupSlotIndex", "getGroupSlotIndex", "groups", "", "groupsSize", "inEmpty", "getInEmpty", "isGroupEnd", "isNode", "nodeCount", "getNodeCount", "parent", "getParent", "parentNodes", "getParentNodes", "size", "getSize", "slot", "getSlot", "slots", "", "[Ljava/lang/Object;", "slotsSize", "getTable$runtime_release", "()Landroidx/compose/runtime/SlotTable;", "anchor", "Landroidx/compose/runtime/Anchor;", "index", "beginEmpty", "", "close", "containsMark", "endEmpty", "endGroup", "extractKeys", "", "Landroidx/compose/runtime/KeyInfo;", "forEachData", "group", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "data", "forEachData$runtime_release", "get", "groupGet", "hasMark", "hasObjectKey", "next", "node", "parentOf", "reposition", "restoreParent", "skipGroup", "skipToGroupEnd", "startGroup", "startNode", "toString", "", "aux", "objectKey", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SlotReader {
    private boolean closed;
    private int currentEnd;
    private int currentGroup;
    private int currentSlot;
    private int currentSlotEnd;
    private int emptyCount;
    private final int[] groups;
    private final int groupsSize;
    private int parent;
    private final Object[] slots;
    private final int slotsSize;
    private final SlotTable table;

    public final void beginEmpty() {
        this.emptyCount++;
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final int getCurrentEnd() {
        return this.currentEnd;
    }

    public final int getCurrentGroup() {
        return this.currentGroup;
    }

    public final int getGroupEnd() {
        return this.currentEnd;
    }

    public final boolean getInEmpty() {
        return this.emptyCount > 0;
    }

    public final int getParent() {
        return this.parent;
    }

    /* renamed from: getSize, reason: from getter */
    public final int getGroupsSize() {
        return this.groupsSize;
    }

    /* renamed from: getTable$runtime_release, reason: from getter */
    public final SlotTable getTable() {
        return this.table;
    }

    public SlotReader(SlotTable table) {
        Intrinsics.checkNotNullParameter(table, "table");
        this.table = table;
        this.groups = table.getGroups();
        int groupsSize = table.getGroupsSize();
        this.groupsSize = groupsSize;
        this.slots = table.getSlots();
        this.slotsSize = table.getSlotsSize();
        this.currentEnd = groupsSize;
        this.parent = -1;
    }

    public final int getSlot() {
        int slotAnchor;
        int i = this.currentSlot;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, this.parent);
        return i - slotAnchor;
    }

    public final int parent(int index) {
        int parentAnchor;
        parentAnchor = SlotTableKt.parentAnchor(this.groups, index);
        return parentAnchor;
    }

    public final boolean isNode() {
        boolean isNode;
        isNode = SlotTableKt.isNode(this.groups, this.currentGroup);
        return isNode;
    }

    public final boolean isNode(int index) {
        boolean isNode;
        isNode = SlotTableKt.isNode(this.groups, index);
        return isNode;
    }

    public final int getNodeCount() {
        int nodeCount;
        nodeCount = SlotTableKt.nodeCount(this.groups, this.currentGroup);
        return nodeCount;
    }

    public final int nodeCount(int index) {
        int nodeCount;
        nodeCount = SlotTableKt.nodeCount(this.groups, index);
        return nodeCount;
    }

    public final Object node(int index) {
        boolean isNode;
        isNode = SlotTableKt.isNode(this.groups, index);
        if (isNode) {
            return node(this.groups, index);
        }
        return null;
    }

    public final boolean isGroupEnd() {
        return getInEmpty() || this.currentGroup == this.currentEnd;
    }

    public final int getGroupSize() {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, this.currentGroup);
        return groupSize;
    }

    public final int groupSize(int index) {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, index);
        return groupSize;
    }

    public final int groupEnd(int index) {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, index);
        return index + groupSize;
    }

    public final int getGroupKey() {
        int key;
        int i = this.currentGroup;
        if (i >= this.currentEnd) {
            return 0;
        }
        key = SlotTableKt.key(this.groups, i);
        return key;
    }

    public final int groupKey(int index) {
        int key;
        key = SlotTableKt.key(this.groups, index);
        return key;
    }

    public final int getGroupSlotIndex() {
        int slotAnchor;
        int i = this.currentSlot;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, this.parent);
        return i - slotAnchor;
    }

    public final boolean hasObjectKey(int index) {
        boolean hasObjectKey;
        hasObjectKey = SlotTableKt.hasObjectKey(this.groups, index);
        return hasObjectKey;
    }

    public final Object getGroupObjectKey() {
        int i = this.currentGroup;
        if (i < this.currentEnd) {
            return objectKey(this.groups, i);
        }
        return null;
    }

    public final Object groupObjectKey(int index) {
        return objectKey(this.groups, index);
    }

    public final Object getGroupAux() {
        int i = this.currentGroup;
        if (i < this.currentEnd) {
            return aux(this.groups, i);
        }
        return 0;
    }

    public final Object groupAux(int index) {
        return aux(this.groups, index);
    }

    public final Object getGroupNode() {
        int i = this.currentGroup;
        if (i < this.currentEnd) {
            return node(this.groups, i);
        }
        return null;
    }

    public final int groupKey(Anchor anchor) {
        int key;
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        if (!anchor.getValid()) {
            return 0;
        }
        key = SlotTableKt.key(this.groups, this.table.anchorIndex(anchor));
        return key;
    }

    public final boolean hasMark(int index) {
        boolean hasMark;
        hasMark = SlotTableKt.hasMark(this.groups, index);
        return hasMark;
    }

    public final boolean containsMark(int index) {
        boolean containsMark;
        containsMark = SlotTableKt.containsMark(this.groups, index);
        return containsMark;
    }

    public final int getParentNodes() {
        int nodeCount;
        int i = this.parent;
        if (i < 0) {
            return 0;
        }
        nodeCount = SlotTableKt.nodeCount(this.groups, i);
        return nodeCount;
    }

    public final int parentOf(int index) {
        int parentAnchor;
        if (index >= 0 && index < this.groupsSize) {
            parentAnchor = SlotTableKt.parentAnchor(this.groups, index);
            return parentAnchor;
        }
        throw new IllegalArgumentException(("Invalid group index " + index).toString());
    }

    public final int getGroupSlotCount() {
        int slotAnchor;
        int i = this.currentGroup;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, i);
        int i2 = i + 1;
        return (i2 < this.groupsSize ? SlotTableKt.dataAnchor(this.groups, i2) : this.slotsSize) - slotAnchor;
    }

    public final Object get(int index) {
        int i = this.currentSlot + index;
        return i < this.currentSlotEnd ? this.slots[i] : Composer.INSTANCE.getEmpty();
    }

    public final Object groupGet(int index) {
        return groupGet(this.currentGroup, index);
    }

    public final Object groupGet(int group, int index) {
        int slotAnchor;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, group);
        int i = group + 1;
        int i2 = slotAnchor + index;
        return i2 < (i < this.groupsSize ? SlotTableKt.dataAnchor(this.groups, i) : this.slotsSize) ? this.slots[i2] : Composer.INSTANCE.getEmpty();
    }

    public final Object next() {
        int i;
        if (this.emptyCount > 0 || (i = this.currentSlot) >= this.currentSlotEnd) {
            return Composer.INSTANCE.getEmpty();
        }
        Object[] objArr = this.slots;
        this.currentSlot = i + 1;
        return objArr[i];
    }

    public final void endEmpty() {
        int i = this.emptyCount;
        if (i <= 0) {
            throw new IllegalArgumentException("Unbalanced begin/end empty".toString());
        }
        this.emptyCount = i - 1;
    }

    public final void close() {
        this.closed = true;
        this.table.close$runtime_release(this);
    }

    public final void startGroup() {
        int parentAnchor;
        int groupSize;
        int slotAnchor;
        if (this.emptyCount <= 0) {
            parentAnchor = SlotTableKt.parentAnchor(this.groups, this.currentGroup);
            if (parentAnchor == this.parent) {
                int i = this.currentGroup;
                this.parent = i;
                groupSize = SlotTableKt.groupSize(this.groups, i);
                this.currentEnd = i + groupSize;
                int i2 = this.currentGroup;
                int i3 = i2 + 1;
                this.currentGroup = i3;
                slotAnchor = SlotTableKt.slotAnchor(this.groups, i2);
                this.currentSlot = slotAnchor;
                this.currentSlotEnd = i2 >= this.groupsSize + (-1) ? this.slotsSize : SlotTableKt.dataAnchor(this.groups, i3);
                return;
            }
            throw new IllegalArgumentException("Invalid slot table detected".toString());
        }
    }

    public final void startNode() {
        boolean isNode;
        if (this.emptyCount <= 0) {
            isNode = SlotTableKt.isNode(this.groups, this.currentGroup);
            if (!isNode) {
                throw new IllegalArgumentException("Expected a node group".toString());
            }
            startGroup();
        }
    }

    public final int skipGroup() {
        boolean isNode;
        int groupSize;
        if (this.emptyCount == 0) {
            isNode = SlotTableKt.isNode(this.groups, this.currentGroup);
            int nodeCount = isNode ? 1 : SlotTableKt.nodeCount(this.groups, this.currentGroup);
            int i = this.currentGroup;
            groupSize = SlotTableKt.groupSize(this.groups, i);
            this.currentGroup = i + groupSize;
            return nodeCount;
        }
        ComposerKt.composeRuntimeError("Cannot skip while in an empty region".toString());
        throw new KotlinNothingValueException();
    }

    public final void reposition(int index) {
        int groupSize;
        if (this.emptyCount == 0) {
            this.currentGroup = index;
            int parentAnchor = index < this.groupsSize ? SlotTableKt.parentAnchor(this.groups, index) : -1;
            this.parent = parentAnchor;
            if (parentAnchor < 0) {
                this.currentEnd = this.groupsSize;
            } else {
                groupSize = SlotTableKt.groupSize(this.groups, parentAnchor);
                this.currentEnd = parentAnchor + groupSize;
            }
            this.currentSlot = 0;
            this.currentSlotEnd = 0;
            return;
        }
        ComposerKt.composeRuntimeError("Cannot reposition while in an empty region".toString());
        throw new KotlinNothingValueException();
    }

    public final void restoreParent(int index) {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, index);
        int i = groupSize + index;
        int i2 = this.currentGroup;
        if (!(i2 >= index && i2 <= i)) {
            ComposerKt.composeRuntimeError(("Index " + index + " is not a parent of " + i2).toString());
            throw new KotlinNothingValueException();
        }
        this.parent = index;
        this.currentEnd = i;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
    }

    public final void endGroup() {
        int parentAnchor;
        int groupSize;
        int i;
        if (this.emptyCount == 0) {
            if (this.currentGroup == this.currentEnd) {
                parentAnchor = SlotTableKt.parentAnchor(this.groups, this.parent);
                this.parent = parentAnchor;
                if (parentAnchor < 0) {
                    i = this.groupsSize;
                } else {
                    groupSize = SlotTableKt.groupSize(this.groups, parentAnchor);
                    i = parentAnchor + groupSize;
                }
                this.currentEnd = i;
                return;
            }
            ComposerKt.composeRuntimeError("endGroup() not called at the end of a group".toString());
            throw new KotlinNothingValueException();
        }
    }

    public final List<KeyInfo> extractKeys() {
        int key;
        boolean isNode;
        int groupSize;
        ArrayList arrayList = new ArrayList();
        if (this.emptyCount > 0) {
            return arrayList;
        }
        int i = this.currentGroup;
        int i2 = 0;
        while (i < this.currentEnd) {
            key = SlotTableKt.key(this.groups, i);
            Object objectKey = objectKey(this.groups, i);
            isNode = SlotTableKt.isNode(this.groups, i);
            arrayList.add(new KeyInfo(key, objectKey, i, isNode ? 1 : SlotTableKt.nodeCount(this.groups, i), i2));
            groupSize = SlotTableKt.groupSize(this.groups, i);
            i += groupSize;
            i2++;
        }
        return arrayList;
    }

    public final void forEachData$runtime_release(int group, Function2<? super Integer, Object, Unit> block) {
        int slotAnchor;
        Intrinsics.checkNotNullParameter(block, "block");
        slotAnchor = SlotTableKt.slotAnchor(this.groups, group);
        int i = group + 1;
        int dataAnchor = i < this.table.getGroupsSize() ? SlotTableKt.dataAnchor(this.table.getGroups(), i) : this.table.getSlotsSize();
        for (int i2 = slotAnchor; i2 < dataAnchor; i2++) {
            block.invoke(Integer.valueOf(i2 - slotAnchor), this.slots[i2]);
        }
    }

    public String toString() {
        return "SlotReader(current=" + this.currentGroup + ", key=" + getGroupKey() + ", parent=" + this.parent + ", end=" + this.currentEnd + ')';
    }

    public static /* synthetic */ Anchor anchor$default(SlotReader slotReader, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = slotReader.currentGroup;
        }
        return slotReader.anchor(i);
    }

    public final Anchor anchor(int index) {
        ArrayList<Anchor> anchors$runtime_release = this.table.getAnchors$runtime_release();
        int search = SlotTableKt.search(anchors$runtime_release, index, this.groupsSize);
        if (search < 0) {
            Anchor anchor = new Anchor(index);
            anchors$runtime_release.add(-(search + 1), anchor);
            return anchor;
        }
        Anchor anchor2 = anchors$runtime_release.get(search);
        Intrinsics.checkNotNullExpressionValue(anchor2, "get(location)");
        return anchor2;
    }

    private final Object node(int[] iArr, int i) {
        boolean isNode;
        int nodeIndex;
        isNode = SlotTableKt.isNode(iArr, i);
        if (isNode) {
            Object[] objArr = this.slots;
            nodeIndex = SlotTableKt.nodeIndex(iArr, i);
            return objArr[nodeIndex];
        }
        return Composer.INSTANCE.getEmpty();
    }

    private final Object aux(int[] iArr, int i) {
        boolean hasAux;
        int auxIndex;
        hasAux = SlotTableKt.hasAux(iArr, i);
        if (hasAux) {
            Object[] objArr = this.slots;
            auxIndex = SlotTableKt.auxIndex(iArr, i);
            return objArr[auxIndex];
        }
        return Composer.INSTANCE.getEmpty();
    }

    private final Object objectKey(int[] iArr, int i) {
        boolean hasObjectKey;
        int objectKeyIndex;
        hasObjectKey = SlotTableKt.hasObjectKey(iArr, i);
        if (!hasObjectKey) {
            return null;
        }
        Object[] objArr = this.slots;
        objectKeyIndex = SlotTableKt.objectKeyIndex(iArr, i);
        return objArr[objectKeyIndex];
    }

    public final void skipToGroupEnd() {
        if (this.emptyCount == 0) {
            this.currentGroup = this.currentEnd;
        } else {
            ComposerKt.composeRuntimeError("Cannot skip the enclosing group while in an empty region".toString());
            throw new KotlinNothingValueException();
        }
    }
}
