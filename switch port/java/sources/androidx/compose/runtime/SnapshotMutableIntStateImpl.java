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

/* compiled from: SnapshotIntState.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001%B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0019\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001d0\u001cH\u0096\u0002J\"\u0010\u001e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\rH\u0016J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\rH\u0016J\b\u0010#\u001a\u00020$H\u0016R\u001a\u0010\u0007\u001a\u00020\u00048GX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\u0006R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableIntStateImpl;", "Landroidx/compose/runtime/snapshots/StateObject;", "Landroidx/compose/runtime/MutableIntState;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "", "value", "(I)V", "debuggerDisplayValue", "getDebuggerDisplayValue$annotations", "()V", "getDebuggerDisplayValue", "()I", "firstStateRecord", "Landroidx/compose/runtime/snapshots/StateRecord;", "getFirstStateRecord", "()Landroidx/compose/runtime/snapshots/StateRecord;", "intValue", "getIntValue", "setIntValue", "next", "Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;", "policy", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "getPolicy", "()Landroidx/compose/runtime/SnapshotMutationPolicy;", "component1", "()Ljava/lang/Integer;", "component2", "Lkotlin/Function1;", "", "mergeRecords", "previous", SentryThread.JsonKeys.CURRENT, "applied", "prependStateRecord", "toString", "", "IntStateStateRecord", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class SnapshotMutableIntStateImpl implements StateObject, MutableIntState, SnapshotMutableState<Integer> {
    private IntStateStateRecord next;

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    public SnapshotMutableIntStateImpl(int i) {
        this.next = new IntStateStateRecord(i);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.MutableIntState, androidx.compose.runtime.IntState
    public int getIntValue() {
        return ((IntStateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.MutableIntState
    public void setIntValue(int i) {
        Snapshot current;
        IntStateStateRecord intStateStateRecord = (IntStateStateRecord) SnapshotKt.current(this.next);
        if (intStateStateRecord.getValue() != i) {
            IntStateStateRecord intStateStateRecord2 = this.next;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                ((IntStateStateRecord) SnapshotKt.overwritableRecord(intStateStateRecord2, this, current, intStateStateRecord)).setValue(i);
                Unit unit = Unit.INSTANCE;
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public SnapshotMutationPolicy<Integer> getPolicy() {
        return SnapshotStateKt.structuralEqualityPolicy();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.MutableState
    public Integer component1() {
        return Integer.valueOf(getIntValue());
    }

    @Override // androidx.compose.runtime.MutableState
    public Function1<Integer, Unit> component2() {
        return new Function1<Integer, Unit>() { // from class: androidx.compose.runtime.SnapshotMutableIntStateImpl$component2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                SnapshotMutableIntStateImpl.this.setIntValue(i);
            }
        };
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.next = (IntStateStateRecord) value;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord mergeRecords(StateRecord previous, StateRecord current, StateRecord applied) {
        Intrinsics.checkNotNullParameter(previous, "previous");
        Intrinsics.checkNotNullParameter(current, "current");
        Intrinsics.checkNotNullParameter(applied, "applied");
        if (((IntStateStateRecord) current).getValue() == ((IntStateStateRecord) applied).getValue()) {
            return current;
        }
        return null;
    }

    public String toString() {
        return "MutableIntState(value=" + ((IntStateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    public final int getDebuggerDisplayValue() {
        return ((IntStateStateRecord) SnapshotKt.current(this.next)).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotIntState.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0001H\u0016J\b\u0010\n\u001a\u00020\u0001H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;", "Landroidx/compose/runtime/snapshots/StateRecord;", "value", "", "(I)V", "getValue", "()I", "setValue", "assign", "", "create", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class IntStateStateRecord extends StateRecord {
        private int value;

        public final int getValue() {
            return this.value;
        }

        public final void setValue(int i) {
            this.value = i;
        }

        public IntStateStateRecord(int i) {
            this.value = i;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = ((IntStateStateRecord) value).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return new IntStateStateRecord(this.value);
        }
    }
}
