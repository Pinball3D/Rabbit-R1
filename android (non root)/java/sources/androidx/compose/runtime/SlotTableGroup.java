package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SlotTable.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0012\u0010&\u001a\u0004\u0018\u00010\u00012\u0006\u0010'\u001a\u00020\rH\u0016J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00010)H\u0096\u0002J\b\u0010*\u001a\u00020+H\u0002R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0015R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0015R\u0014\u0010\u001d\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0010R\u0016\u0010\u001f\u001a\u0004\u0018\u00010 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0010¨\u0006,"}, d2 = {"Landroidx/compose/runtime/SlotTableGroup;", "Landroidx/compose/runtime/tooling/CompositionGroup;", "", "table", "Landroidx/compose/runtime/SlotTable;", "group", "", "version", "(Landroidx/compose/runtime/SlotTable;II)V", "compositionGroups", "getCompositionGroups", "()Ljava/lang/Iterable;", "data", "", "getData", "getGroup", "()I", "groupSize", "getGroupSize", "identity", "getIdentity", "()Ljava/lang/Object;", "isEmpty", "", "()Z", "key", "getKey", "node", "getNode", "slotsSize", "getSlotsSize", "sourceInfo", "", "getSourceInfo", "()Ljava/lang/String;", "getTable", "()Landroidx/compose/runtime/SlotTable;", "getVersion", "find", "identityToFind", "iterator", "", "validateRead", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SlotTableGroup implements CompositionGroup, Iterable<CompositionGroup>, KMappedMarker {
    private final int group;
    private final SlotTable table;
    private final int version;

    public final int getGroup() {
        return this.group;
    }

    public final SlotTable getTable() {
        return this.table;
    }

    public final int getVersion() {
        return this.version;
    }

    public SlotTableGroup(SlotTable table, int i, int i2) {
        Intrinsics.checkNotNullParameter(table, "table");
        this.table = table;
        this.group = i;
        this.version = i2;
    }

    public /* synthetic */ SlotTableGroup(SlotTable slotTable, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(slotTable, i, (i3 & 4) != 0 ? slotTable.getVersion() : i2);
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.table.getGroups(), this.group);
        return groupSize == 0;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getKey() {
        boolean hasObjectKey;
        int key;
        int objectKeyIndex;
        hasObjectKey = SlotTableKt.hasObjectKey(this.table.getGroups(), this.group);
        if (!hasObjectKey) {
            key = SlotTableKt.key(this.table.getGroups(), this.group);
            return Integer.valueOf(key);
        }
        Object[] slots = this.table.getSlots();
        objectKeyIndex = SlotTableKt.objectKeyIndex(this.table.getGroups(), this.group);
        Object obj = slots[objectKeyIndex];
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public String getSourceInfo() {
        boolean hasAux;
        int auxIndex;
        hasAux = SlotTableKt.hasAux(this.table.getGroups(), this.group);
        if (!hasAux) {
            return null;
        }
        Object[] slots = this.table.getSlots();
        auxIndex = SlotTableKt.auxIndex(this.table.getGroups(), this.group);
        Object obj = slots[auxIndex];
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getNode() {
        boolean isNode;
        int nodeIndex;
        isNode = SlotTableKt.isNode(this.table.getGroups(), this.group);
        if (!isNode) {
            return null;
        }
        Object[] slots = this.table.getSlots();
        nodeIndex = SlotTableKt.nodeIndex(this.table.getGroups(), this.group);
        return slots[nodeIndex];
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Iterable<Object> getData() {
        return new DataIterator(this.table, this.group);
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getIdentity() {
        validateRead();
        SlotReader openReader = this.table.openReader();
        try {
            return openReader.anchor(this.group);
        } finally {
            openReader.close();
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this;
    }

    @Override // java.lang.Iterable
    public Iterator<CompositionGroup> iterator() {
        int groupSize;
        validateRead();
        SlotTable slotTable = this.table;
        int i = this.group;
        groupSize = SlotTableKt.groupSize(slotTable.getGroups(), this.group);
        return new GroupIterator(slotTable, i + 1, i + groupSize);
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getGroupSize() {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.table.getGroups(), this.group);
        return groupSize;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getSlotsSize() {
        int slotsSize;
        int dataAnchor;
        int groupSize = this.group + getGroupSize();
        if (groupSize < this.table.getGroupsSize()) {
            slotsSize = SlotTableKt.dataAnchor(this.table.getGroups(), groupSize);
        } else {
            slotsSize = this.table.getSlotsSize();
        }
        dataAnchor = SlotTableKt.dataAnchor(this.table.getGroups(), this.group);
        return slotsSize - dataAnchor;
    }

    private final void validateRead() {
        if (this.table.getVersion() != this.version) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public CompositionGroup find(Object identityToFind) {
        int anchorIndex;
        int i;
        int groupSize;
        Intrinsics.checkNotNullParameter(identityToFind, "identityToFind");
        SlotTableGroup slotTableGroup = null;
        Anchor anchor = identityToFind instanceof Anchor ? (Anchor) identityToFind : null;
        if (anchor != null && this.table.ownsAnchor(anchor) && (anchorIndex = this.table.anchorIndex(anchor)) >= (i = this.group)) {
            int i2 = anchorIndex - i;
            groupSize = SlotTableKt.groupSize(this.table.getGroups(), this.group);
            if (i2 < groupSize) {
                slotTableGroup = new SlotTableGroup(this.table, anchorIndex, this.version);
            }
        }
        return slotTableGroup;
    }
}
