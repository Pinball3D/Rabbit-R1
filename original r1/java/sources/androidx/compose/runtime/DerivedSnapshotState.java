package androidx.compose.runtime;

import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.collection.IdentityArrayMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateRecord;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DerivedState.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001'B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eJ:\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00132\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0002J\b\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\b\u0010&\u001a\u00020#H\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\r\u001a\u0004\u0018\u00018\u00008G¢\u0006\f\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0011¨\u0006("}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/snapshots/StateObject;", "Landroidx/compose/runtime/DerivedState;", "calculation", "Lkotlin/Function0;", "policy", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/SnapshotMutationPolicy;)V", "currentRecord", "Landroidx/compose/runtime/DerivedState$Record;", "getCurrentRecord", "()Landroidx/compose/runtime/DerivedState$Record;", "debuggerDisplayValue", "getDebuggerDisplayValue$annotations", "()V", "getDebuggerDisplayValue", "()Ljava/lang/Object;", "first", "Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;", "firstStateRecord", "Landroidx/compose/runtime/snapshots/StateRecord;", "getFirstStateRecord", "()Landroidx/compose/runtime/snapshots/StateRecord;", "getPolicy", "()Landroidx/compose/runtime/SnapshotMutationPolicy;", "value", "getValue", SentryThread.JsonKeys.CURRENT, SentryStackTrace.JsonKeys.SNAPSHOT, "Landroidx/compose/runtime/snapshots/Snapshot;", "readable", "forceDependencyReads", "", "displayValue", "", "prependStateRecord", "", "toString", "ResultRecord", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DerivedSnapshotState<T> implements StateObject, DerivedState<T> {
    private final Function0<T> calculation;
    private ResultRecord<T> first;
    private final SnapshotMutationPolicy<T> policy;

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    @Override // androidx.compose.runtime.DerivedState
    public SnapshotMutationPolicy<T> getPolicy() {
        return this.policy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DerivedSnapshotState(Function0<? extends T> calculation, SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        Intrinsics.checkNotNullParameter(calculation, "calculation");
        this.calculation = calculation;
        this.policy = snapshotMutationPolicy;
        this.first = new ResultRecord<>();
    }

    /* compiled from: DerivedState.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 /*\u0004\b\u0001\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001/B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0002H\u0016J\b\u0010'\u001a\u00020\u0002H\u0016J\u001a\u0010(\u001a\u00020)2\n\u0010*\u001a\u0006\u0012\u0002\b\u00030+2\u0006\u0010,\u001a\u00020-J\u001a\u0010.\u001a\u00020\b2\n\u0010*\u001a\u0006\u0012\u0002\b\u00030+2\u0006\u0010,\u001a\u00020-R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00028\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u001a\u0010!\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001d¨\u00060"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/snapshots/StateRecord;", "Landroidx/compose/runtime/DerivedState$Record;", "()V", "_dependencies", "Landroidx/compose/runtime/collection/IdentityArrayMap;", "Landroidx/compose/runtime/snapshots/StateObject;", "", "get_dependencies", "()Landroidx/compose/runtime/collection/IdentityArrayMap;", "set_dependencies", "(Landroidx/compose/runtime/collection/IdentityArrayMap;)V", "currentValue", "getCurrentValue", "()Ljava/lang/Object;", "dependencies", "", "", "getDependencies", "()[Ljava/lang/Object;", "result", "getResult", "setResult", "(Ljava/lang/Object;)V", "resultHash", "getResultHash", "()I", "setResultHash", "(I)V", "validSnapshotId", "getValidSnapshotId", "setValidSnapshotId", "validSnapshotWriteCount", "getValidSnapshotWriteCount", "setValidSnapshotWriteCount", "assign", "", "value", "create", "isValid", "", "derivedState", "Landroidx/compose/runtime/DerivedState;", SentryStackTrace.JsonKeys.SNAPSHOT, "Landroidx/compose/runtime/snapshots/Snapshot;", "readableHash", "Companion", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ResultRecord<T> extends StateRecord implements DerivedState.Record<T> {
        private IdentityArrayMap<StateObject, Integer> _dependencies;
        private Object result = Unset;
        private int resultHash;
        private int validSnapshotId;
        private int validSnapshotWriteCount;

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final int $stable = 8;
        private static final Object Unset = new Object();

        @Override // androidx.compose.runtime.DerivedState.Record
        public T getCurrentValue() {
            return (T) this.result;
        }

        public final Object getResult() {
            return this.result;
        }

        public final int getResultHash() {
            return this.resultHash;
        }

        public final int getValidSnapshotId() {
            return this.validSnapshotId;
        }

        public final int getValidSnapshotWriteCount() {
            return this.validSnapshotWriteCount;
        }

        public final IdentityArrayMap<StateObject, Integer> get_dependencies() {
            return this._dependencies;
        }

        public final void setResult(Object obj) {
            this.result = obj;
        }

        public final void setResultHash(int i) {
            this.resultHash = i;
        }

        public final void setValidSnapshotId(int i) {
            this.validSnapshotId = i;
        }

        public final void setValidSnapshotWriteCount(int i) {
            this.validSnapshotWriteCount = i;
        }

        public final void set_dependencies(IdentityArrayMap<StateObject, Integer> identityArrayMap) {
            this._dependencies = identityArrayMap;
        }

        /* compiled from: DerivedState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;", "", "()V", "Unset", "getUnset", "()Ljava/lang/Object;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Object getUnset() {
                return ResultRecord.Unset;
            }
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord value) {
            Intrinsics.checkNotNullParameter(value, "value");
            ResultRecord resultRecord = (ResultRecord) value;
            this._dependencies = resultRecord._dependencies;
            this.result = resultRecord.result;
            this.resultHash = resultRecord.resultHash;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return new ResultRecord();
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public Object[] getDependencies() {
            Object[] keys;
            IdentityArrayMap<StateObject, Integer> identityArrayMap = this._dependencies;
            return (identityArrayMap == null || (keys = identityArrayMap.getKeys()) == null) ? new Object[0] : keys;
        }

        public final boolean isValid(DerivedState<?> derivedState, Snapshot snapshot) {
            boolean z;
            boolean z2;
            Intrinsics.checkNotNullParameter(derivedState, "derivedState");
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            synchronized (SnapshotKt.getLock()) {
                z = false;
                if (this.validSnapshotId == snapshot.getId()) {
                    if (this.validSnapshotWriteCount == snapshot.getWriteCount()) {
                        z2 = false;
                    }
                }
                z2 = true;
            }
            if (this.result != Unset && (!z2 || this.resultHash == readableHash(derivedState, snapshot))) {
                z = true;
            }
            if (z && z2) {
                synchronized (SnapshotKt.getLock()) {
                    this.validSnapshotId = snapshot.getId();
                    this.validSnapshotWriteCount = snapshot.getWriteCount();
                    Unit unit = Unit.INSTANCE;
                }
            }
            return z;
        }

        public final int readableHash(DerivedState<?> derivedState, Snapshot snapshot) {
            IdentityArrayMap<StateObject, Integer> identityArrayMap;
            StateRecord current;
            Intrinsics.checkNotNullParameter(derivedState, "derivedState");
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            synchronized (SnapshotKt.getLock()) {
                identityArrayMap = this._dependencies;
            }
            int i = 7;
            if (identityArrayMap != null) {
                MutableVector<DerivedStateObserver> derivedStateObservers = SnapshotStateKt.derivedStateObservers();
                int size = derivedStateObservers.getSize();
                int i2 = 0;
                if (size > 0) {
                    DerivedStateObserver[] content = derivedStateObservers.getContent();
                    int i3 = 0;
                    do {
                        content[i3].start(derivedState);
                        i3++;
                    } while (i3 < size);
                }
                try {
                    int size2 = identityArrayMap.getSize();
                    for (int i4 = 0; i4 < size2; i4++) {
                        Object obj = identityArrayMap.getKeys()[i4];
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap");
                        StateObject stateObject = (StateObject) obj;
                        if (((Number) identityArrayMap.getValues()[i4]).intValue() == 1) {
                            if (stateObject instanceof DerivedSnapshotState) {
                                current = ((DerivedSnapshotState) stateObject).current(snapshot);
                            } else {
                                current = SnapshotKt.current(stateObject.getFirstStateRecord(), snapshot);
                            }
                            i = (((i * 31) + ActualJvm_jvmKt.identityHashCode(current)) * 31) + current.getSnapshotId();
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    int size3 = derivedStateObservers.getSize();
                    if (size3 > 0) {
                        DerivedStateObserver[] content2 = derivedStateObservers.getContent();
                        do {
                            content2[i2].done(derivedState);
                            i2++;
                        } while (i2 < size3);
                    }
                } catch (Throwable th) {
                    int size4 = derivedStateObservers.getSize();
                    if (size4 > 0) {
                        DerivedStateObserver[] content3 = derivedStateObservers.getContent();
                        do {
                            content3[i2].done(derivedState);
                            i2++;
                        } while (i2 < size4);
                    }
                    throw th;
                }
            }
            return i;
        }
    }

    public final StateRecord current(Snapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, snapshot), snapshot, false, this.calculation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ResultRecord<T> currentRecord(ResultRecord<T> readable, Snapshot snapshot, boolean forceDependencyReads, Function0<? extends T> calculation) {
        SnapshotThreadLocal snapshotThreadLocal;
        SnapshotThreadLocal snapshotThreadLocal2;
        SnapshotThreadLocal snapshotThreadLocal3;
        SnapshotMutationPolicy<T> policy;
        SnapshotThreadLocal snapshotThreadLocal4;
        SnapshotThreadLocal snapshotThreadLocal5;
        SnapshotThreadLocal snapshotThreadLocal6;
        DerivedSnapshotState<T> derivedSnapshotState = this;
        int i = 0;
        if (readable.isValid(derivedSnapshotState, snapshot)) {
            if (forceDependencyReads) {
                MutableVector<DerivedStateObserver> derivedStateObservers = SnapshotStateKt.derivedStateObservers();
                int size = derivedStateObservers.getSize();
                if (size > 0) {
                    DerivedStateObserver[] content = derivedStateObservers.getContent();
                    int i2 = 0;
                    do {
                        content[i2].start(derivedSnapshotState);
                        i2++;
                    } while (i2 < size);
                }
                try {
                    IdentityArrayMap<StateObject, Integer> identityArrayMap = readable.get_dependencies();
                    snapshotThreadLocal4 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                    Integer num = (Integer) snapshotThreadLocal4.get();
                    int intValue = num != null ? num.intValue() : 0;
                    if (identityArrayMap != null) {
                        int size2 = identityArrayMap.getSize();
                        for (int i3 = 0; i3 < size2; i3++) {
                            Object obj = identityArrayMap.getKeys()[i3];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap");
                            int intValue2 = ((Number) identityArrayMap.getValues()[i3]).intValue();
                            StateObject stateObject = (StateObject) obj;
                            snapshotThreadLocal6 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                            snapshotThreadLocal6.set(Integer.valueOf(intValue2 + intValue));
                            Function1<Object, Unit> readObserver$runtime_release = snapshot.getReadObserver$runtime_release();
                            if (readObserver$runtime_release != null) {
                                readObserver$runtime_release.invoke(stateObject);
                            }
                        }
                    }
                    snapshotThreadLocal5 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                    snapshotThreadLocal5.set(Integer.valueOf(intValue));
                    Unit unit = Unit.INSTANCE;
                    int size3 = derivedStateObservers.getSize();
                    if (size3 > 0) {
                        DerivedStateObserver[] content2 = derivedStateObservers.getContent();
                        do {
                            content2[i].done(derivedSnapshotState);
                            i++;
                        } while (i < size3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return readable;
        }
        snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
        Integer num2 = (Integer) snapshotThreadLocal.get();
        final int intValue3 = num2 != null ? num2.intValue() : 0;
        final IdentityArrayMap<StateObject, Integer> identityArrayMap2 = new IdentityArrayMap<>(0, 1, null);
        MutableVector<DerivedStateObserver> derivedStateObservers2 = SnapshotStateKt.derivedStateObservers();
        int size4 = derivedStateObservers2.getSize();
        if (size4 > 0) {
            DerivedStateObserver[] content3 = derivedStateObservers2.getContent();
            int i4 = 0;
            do {
                content3[i4].start(derivedSnapshotState);
                i4++;
            } while (i4 < size4);
        }
        try {
            snapshotThreadLocal2 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
            snapshotThreadLocal2.set(Integer.valueOf(intValue3 + 1));
            Object observe = Snapshot.INSTANCE.observe(new Function1<Object, Unit>(this) { // from class: androidx.compose.runtime.DerivedSnapshotState$currentRecord$result$1$result$1
                final /* synthetic */ DerivedSnapshotState<T> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                    invoke2(obj2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object it) {
                    SnapshotThreadLocal snapshotThreadLocal7;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it == this.this$0) {
                        throw new IllegalStateException("A derived state calculation cannot read itself".toString());
                    }
                    if (it instanceof StateObject) {
                        snapshotThreadLocal7 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                        Object obj2 = snapshotThreadLocal7.get();
                        Intrinsics.checkNotNull(obj2);
                        int intValue4 = ((Number) obj2).intValue();
                        IdentityArrayMap<StateObject, Integer> identityArrayMap3 = identityArrayMap2;
                        int i5 = intValue4 - intValue3;
                        Integer num3 = identityArrayMap3.get(it);
                        identityArrayMap3.set(it, Integer.valueOf(Math.min(i5, num3 != null ? num3.intValue() : Integer.MAX_VALUE)));
                    }
                }
            }, null, calculation);
            snapshotThreadLocal3 = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
            snapshotThreadLocal3.set(Integer.valueOf(intValue3));
            int size5 = derivedStateObservers2.getSize();
            if (size5 > 0) {
                DerivedStateObserver[] content4 = derivedStateObservers2.getContent();
                do {
                    content4[i].done(derivedSnapshotState);
                    i++;
                } while (i < size5);
            }
            synchronized (SnapshotKt.getLock()) {
                Snapshot current = Snapshot.INSTANCE.getCurrent();
                if (readable.getResult() != ResultRecord.INSTANCE.getUnset() && (policy = getPolicy()) != 0 && policy.equivalent(observe, readable.getResult())) {
                    readable.set_dependencies(identityArrayMap2);
                    readable.setResultHash(readable.readableHash(this, current));
                    readable.setValidSnapshotId(snapshot.getId());
                    readable.setValidSnapshotWriteCount(snapshot.getWriteCount());
                } else {
                    readable = (ResultRecord) SnapshotKt.newWritableRecord(this.first, this, current);
                    readable.set_dependencies(identityArrayMap2);
                    readable.setResultHash(readable.readableHash(this, current));
                    readable.setValidSnapshotId(snapshot.getId());
                    readable.setValidSnapshotWriteCount(snapshot.getWriteCount());
                    readable.setResult(observe);
                }
            }
            if (intValue3 == 0) {
                Snapshot.INSTANCE.notifyObjectsInitialized();
            }
            return readable;
        } finally {
            int size6 = derivedStateObservers2.getSize();
            if (size6 > 0) {
                DerivedStateObserver[] content5 = derivedStateObservers2.getContent();
                do {
                    content5[i].done(derivedSnapshotState);
                    i++;
                } while (i < size6);
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.first;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.first = (ResultRecord) value;
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        Function1<Object, Unit> readObserver$runtime_release = Snapshot.INSTANCE.getCurrent().getReadObserver$runtime_release();
        if (readObserver$runtime_release != null) {
            readObserver$runtime_release.invoke(this);
        }
        return (T) currentRecord((ResultRecord) SnapshotKt.current(this.first), Snapshot.INSTANCE.getCurrent(), true, this.calculation).getResult();
    }

    @Override // androidx.compose.runtime.DerivedState
    public DerivedState.Record<T> getCurrentRecord() {
        return currentRecord((ResultRecord) SnapshotKt.current(this.first), Snapshot.INSTANCE.getCurrent(), false, this.calculation);
    }

    public String toString() {
        return "DerivedState(value=" + displayValue() + ")@" + hashCode();
    }

    public final T getDebuggerDisplayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        if (resultRecord.isValid(this, Snapshot.INSTANCE.getCurrent())) {
            return (T) resultRecord.getResult();
        }
        return null;
    }

    private final String displayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        return resultRecord.isValid(this, Snapshot.INSTANCE.getCurrent()) ? String.valueOf(resultRecord.getResult()) : "<Not calculated>";
    }
}
