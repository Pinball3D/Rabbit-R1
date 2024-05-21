package androidx.compose.runtime.snapshots;

import kotlin.Metadata;

/* compiled from: Snapshot.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0000H&J\b\u0010\u0011\u001a\u00020\u0000H&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0000X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Landroidx/compose/runtime/snapshots/StateRecord;", "", "()V", "next", "getNext$runtime_release", "()Landroidx/compose/runtime/snapshots/StateRecord;", "setNext$runtime_release", "(Landroidx/compose/runtime/snapshots/StateRecord;)V", "snapshotId", "", "getSnapshotId$runtime_release", "()I", "setSnapshotId$runtime_release", "(I)V", "assign", "", "value", "create", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class StateRecord {
    public static final int $stable = 8;
    private StateRecord next;
    private int snapshotId = SnapshotKt.currentSnapshot().getId();

    public abstract void assign(StateRecord value);

    public abstract StateRecord create();

    /* renamed from: getNext$runtime_release, reason: from getter */
    public final StateRecord getNext() {
        return this.next;
    }

    /* renamed from: getSnapshotId$runtime_release, reason: from getter */
    public final int getSnapshotId() {
        return this.snapshotId;
    }

    public final void setNext$runtime_release(StateRecord stateRecord) {
        this.next = stateRecord;
    }

    public final void setSnapshotId$runtime_release(int i) {
        this.snapshotId = i;
    }
}
