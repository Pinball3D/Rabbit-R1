package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateRecord;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SnapshotLongState.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001!B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0015\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00190\u0018H\u0096\u0002J\"\u0010\u001a\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\bH\u0016J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\bH\u0016J\b\u0010\u001f\u001a\u00020 H\u0016R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u0006R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Landroidx/compose/runtime/SnapshotMutableLongStateImpl;", "Landroidx/compose/runtime/snapshots/StateObject;", "Landroidx/compose/runtime/MutableLongState;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "", "value", "(J)V", "firstStateRecord", "Landroidx/compose/runtime/snapshots/StateRecord;", "getFirstStateRecord", "()Landroidx/compose/runtime/snapshots/StateRecord;", "longValue", "getLongValue", "()J", "setLongValue", "next", "Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;", "policy", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "getPolicy", "()Landroidx/compose/runtime/SnapshotMutationPolicy;", "component1", "()Ljava/lang/Long;", "component2", "Lkotlin/Function1;", "", "mergeRecords", "previous", SentryThread.JsonKeys.CURRENT, "applied", "prependStateRecord", "toString", "", "LongStateStateRecord", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class SnapshotMutableLongStateImpl implements StateObject, MutableLongState, SnapshotMutableState<Long> {
    private LongStateStateRecord next;

    public SnapshotMutableLongStateImpl(long j) {
        this.next = new LongStateStateRecord(j);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.MutableLongState, androidx.compose.runtime.LongState
    public long getLongValue() {
        return ((LongStateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.MutableLongState
    public void setLongValue(long j) {
        Snapshot current;
        LongStateStateRecord longStateStateRecord = (LongStateStateRecord) SnapshotKt.current(this.next);
        if (longStateStateRecord.getValue() != j) {
            LongStateStateRecord longStateStateRecord2 = this.next;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                ((LongStateStateRecord) SnapshotKt.overwritableRecord(longStateStateRecord2, this, current, longStateStateRecord)).setValue(j);
                Unit unit = Unit.INSTANCE;
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public SnapshotMutationPolicy<Long> getPolicy() {
        return SnapshotStateKt.structuralEqualityPolicy();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.MutableState
    public Long component1() {
        return Long.valueOf(getLongValue());
    }

    @Override // androidx.compose.runtime.MutableState
    public Function1<Long, Unit> component2() {
        return new Function1<Long, Unit>() { // from class: androidx.compose.runtime.SnapshotMutableLongStateImpl$component2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                SnapshotMutableLongStateImpl.this.setLongValue(j);
            }
        };
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.next = (LongStateStateRecord) value;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord mergeRecords(StateRecord previous, StateRecord current, StateRecord applied) {
        Intrinsics.checkNotNullParameter(previous, "previous");
        Intrinsics.checkNotNullParameter(current, "current");
        Intrinsics.checkNotNullParameter(applied, "applied");
        if (((LongStateStateRecord) current).getValue() == ((LongStateStateRecord) applied).getValue()) {
            return current;
        }
        return null;
    }

    public String toString() {
        return "MutableLongState(value=" + ((LongStateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotLongState.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0001H\u0016J\b\u0010\n\u001a\u00020\u0001H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;", "Landroidx/compose/runtime/snapshots/StateRecord;", "value", "", "(J)V", "getValue", "()J", "setValue", "assign", "", "create", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class LongStateStateRecord extends StateRecord {
        private long value;

        public final long getValue() {
            return this.value;
        }

        public final void setValue(long j) {
            this.value = j;
        }

        public LongStateStateRecord(long j) {
            this.value = j;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = ((LongStateStateRecord) value).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return new LongStateStateRecord(this.value);
        }
    }
}
