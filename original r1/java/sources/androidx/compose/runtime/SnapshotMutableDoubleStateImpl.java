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

/* compiled from: SnapshotDoubleState.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001!B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0015\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00190\u0018H\u0096\u0002J\"\u0010\u001a\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\fH\u0016J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\fH\u0016J\b\u0010\u001f\u001a\u00020 H\u0016R$\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;", "Landroidx/compose/runtime/snapshots/StateObject;", "Landroidx/compose/runtime/MutableDoubleState;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "", "value", "(D)V", "doubleValue", "getDoubleValue", "()D", "setDoubleValue", "firstStateRecord", "Landroidx/compose/runtime/snapshots/StateRecord;", "getFirstStateRecord", "()Landroidx/compose/runtime/snapshots/StateRecord;", "next", "Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;", "policy", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "getPolicy", "()Landroidx/compose/runtime/SnapshotMutationPolicy;", "component1", "()Ljava/lang/Double;", "component2", "Lkotlin/Function1;", "", "mergeRecords", "previous", SentryThread.JsonKeys.CURRENT, "applied", "prependStateRecord", "toString", "", "DoubleStateStateRecord", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class SnapshotMutableDoubleStateImpl implements StateObject, MutableDoubleState, SnapshotMutableState<Double> {
    private DoubleStateStateRecord next;

    public SnapshotMutableDoubleStateImpl(double d) {
        this.next = new DoubleStateStateRecord(d);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.MutableDoubleState, androidx.compose.runtime.DoubleState
    public double getDoubleValue() {
        return ((DoubleStateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.MutableDoubleState
    public void setDoubleValue(double d) {
        Snapshot current;
        DoubleStateStateRecord doubleStateStateRecord = (DoubleStateStateRecord) SnapshotKt.current(this.next);
        if (doubleStateStateRecord.getValue() == d) {
            return;
        }
        DoubleStateStateRecord doubleStateStateRecord2 = this.next;
        SnapshotKt.getSnapshotInitializer();
        synchronized (SnapshotKt.getLock()) {
            current = Snapshot.INSTANCE.getCurrent();
            ((DoubleStateStateRecord) SnapshotKt.overwritableRecord(doubleStateStateRecord2, this, current, doubleStateStateRecord)).setValue(d);
            Unit unit = Unit.INSTANCE;
        }
        SnapshotKt.notifyWrite(current, this);
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public SnapshotMutationPolicy<Double> getPolicy() {
        return SnapshotStateKt.structuralEqualityPolicy();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.MutableState
    public Double component1() {
        return Double.valueOf(getDoubleValue());
    }

    @Override // androidx.compose.runtime.MutableState
    public Function1<Double, Unit> component2() {
        return new Function1<Double, Unit>() { // from class: androidx.compose.runtime.SnapshotMutableDoubleStateImpl$component2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Double d) {
                invoke(d.doubleValue());
                return Unit.INSTANCE;
            }

            public final void invoke(double d) {
                SnapshotMutableDoubleStateImpl.this.setDoubleValue(d);
            }
        };
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.next = (DoubleStateStateRecord) value;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord mergeRecords(StateRecord previous, StateRecord current, StateRecord applied) {
        Intrinsics.checkNotNullParameter(previous, "previous");
        Intrinsics.checkNotNullParameter(current, "current");
        Intrinsics.checkNotNullParameter(applied, "applied");
        if (((DoubleStateStateRecord) current).getValue() == ((DoubleStateStateRecord) applied).getValue()) {
            return current;
        }
        return null;
    }

    public String toString() {
        return "MutableDoubleState(value=" + ((DoubleStateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotDoubleState.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0001H\u0016J\b\u0010\n\u001a\u00020\u0001H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;", "Landroidx/compose/runtime/snapshots/StateRecord;", "value", "", "(D)V", "getValue", "()D", "setValue", "assign", "", "create", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DoubleStateStateRecord extends StateRecord {
        private double value;

        public final double getValue() {
            return this.value;
        }

        public final void setValue(double d) {
            this.value = d;
        }

        public DoubleStateStateRecord(double d) {
            this.value = d;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = ((DoubleStateStateRecord) value).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return new DoubleStateStateRecord(this.value);
        }
    }
}
