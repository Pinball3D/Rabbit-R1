package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: SnapshotStateMap.kt */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u00020\u0004:\u0001LB\u0005¢\u0006\u0002\u0010\u0005J1\u0010&\u001a\u00020'2\u001e\u0010(\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010*\u0012\u0004\u0012\u00020'0)H\u0080\bø\u0001\u0000¢\u0006\u0002\b+J1\u0010,\u001a\u00020'2\u001e\u0010(\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010*\u0012\u0004\u0012\u00020'0)H\u0080\bø\u0001\u0000¢\u0006\u0002\b-J\b\u0010.\u001a\u00020/H\u0016J\u0015\u00100\u001a\u00020'2\u0006\u00101\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00102J\u0015\u00103\u001a\u00020'2\u0006\u00104\u001a\u00028\u0001H\u0016¢\u0006\u0002\u00102J\u0018\u00105\u001a\u0004\u0018\u00018\u00012\u0006\u00101\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u00106J\b\u00107\u001a\u00020'H\u0016J4\u00108\u001a\u0002H9\"\u0004\b\u0002\u001092\u001e\u0010:\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0004\u0012\u0002H90)H\u0082\b¢\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020/2\u0006\u00104\u001a\u00020\u0011H\u0016J\u001f\u0010=\u001a\u0004\u0018\u00018\u00012\u0006\u00101\u001a\u00028\u00002\u0006\u00104\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010>J\u001e\u0010?\u001a\u00020/2\u0014\u0010@\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007H\u0016J\u0017\u0010A\u001a\u0004\u0018\u00018\u00012\u0006\u00101\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00106J1\u0010B\u001a\u00020'2\u001e\u0010(\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\u0012\u0004\u0012\u00020'0)H\u0080\bø\u0001\u0000¢\u0006\u0002\bCJ\u0017\u0010D\u001a\u00020'2\u0006\u00104\u001a\u00028\u0001H\u0000¢\u0006\u0004\bE\u00102J\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007J5\u0010G\u001a\u00020/2*\u0010:\u001a&\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010H\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010H0)H\u0082\bJ9\u0010I\u001a\u0002H9\"\u0004\b\u0002\u001092#\u0010:\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c\u0012\u0004\u0012\u0002H90)¢\u0006\u0002\bJH\u0082\b¢\u0006\u0002\u0010;J9\u0010K\u001a\u0002H9\"\u0004\b\u0002\u001092#\u0010:\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c\u0012\u0004\u0012\u0002H90)¢\u0006\u0002\bJH\u0082\b¢\u0006\u0002\u0010;R&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00078AX\u0080\u0004¢\u0006\f\u0012\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r0\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\u00188@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR&\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c8@X\u0080\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u0005\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001aR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00010#X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006M"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Landroidx/compose/runtime/snapshots/StateObject;", "()V", "debuggerDisplayValue", "", "getDebuggerDisplayValue$annotations", "getDebuggerDisplayValue", "()Ljava/util/Map;", "entries", "", "", "getEntries", "()Ljava/util/Set;", "<set-?>", "Landroidx/compose/runtime/snapshots/StateRecord;", "firstStateRecord", "getFirstStateRecord", "()Landroidx/compose/runtime/snapshots/StateRecord;", "keys", "getKeys", "modification", "", "getModification$runtime_release", "()I", "readable", "Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;", "getReadable$runtime_release$annotations", "getReadable$runtime_release", "()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;", "size", "getSize", "values", "", "getValues", "()Ljava/util/Collection;", "all", "", "predicate", "Lkotlin/Function1;", "", "all$runtime_release", "any", "any$runtime_release", "clear", "", "containsKey", "key", "(Ljava/lang/Object;)Z", "containsValue", "value", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "isEmpty", "mutate", "R", "block", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "prependStateRecord", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "from", "remove", "removeIf", "removeIf$runtime_release", "removeValue", "removeValue$runtime_release", "toMap", "update", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;", "withCurrent", "Lkotlin/ExtensionFunctionType;", "writable", "StateMapStateRecord", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapshotStateMap<K, V> implements Map<K, V>, StateObject, KMutableMap {
    public static final int $stable = 0;
    private StateRecord firstStateRecord = new StateMapStateRecord(ExtensionsKt.persistentHashMapOf());
    private final Set<Map.Entry<K, V>> entries = new SnapshotMapEntrySet(this);
    private final Set<K> keys = new SnapshotMapKeySet(this);
    private final Collection<V> values = new SnapshotMapValueSet(this);

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    public static /* synthetic */ void getReadable$runtime_release$annotations() {
    }

    public Set<Map.Entry<K, V>> getEntries() {
        return this.entries;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.firstStateRecord;
    }

    public Set<K> getKeys() {
        return this.keys;
    }

    public Collection<V> getValues() {
        return this.values;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.firstStateRecord = (StateMapStateRecord) value;
    }

    public final Map<K, V> toMap() {
        return getReadable$runtime_release().getMap$runtime_release();
    }

    public int getSize() {
        return getReadable$runtime_release().getMap$runtime_release().size();
    }

    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return getReadable$runtime_release().getMap$runtime_release().containsKey(key);
    }

    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return getReadable$runtime_release().getMap$runtime_release().containsValue(value);
    }

    @Override // java.util.Map
    public V get(Object key) {
        return (V) getReadable$runtime_release().getMap$runtime_release().get(key);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return getReadable$runtime_release().getMap$runtime_release().isEmpty();
    }

    public final int getModification$runtime_release() {
        return getReadable$runtime_release().getModification();
    }

    public final boolean removeValue$runtime_release(V value) {
        Object obj;
        Iterator<T> it = entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((Map.Entry) obj).getValue(), value)) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry == null) {
            return false;
        }
        remove(entry.getKey());
        return true;
    }

    public final StateMapStateRecord<K, V> getReadable$runtime_release() {
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        return (StateMapStateRecord) SnapshotKt.readable((StateMapStateRecord) firstStateRecord, this);
    }

    public final boolean any$runtime_release(Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Iterator<E> it = ((ImmutableSet) getReadable$runtime_release().getMap$runtime_release().entrySet()).iterator();
        while (it.hasNext()) {
            if (predicate.invoke((Map.Entry) it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final boolean all$runtime_release(Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Iterator<E> it = ((ImmutableSet) getReadable$runtime_release().getMap$runtime_release().entrySet()).iterator();
        while (it.hasNext()) {
            if (!predicate.invoke((Map.Entry) it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    private final <R> R withCurrent(Function1<? super StateMapStateRecord<K, V>, ? extends R> block) {
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        return block.invoke(SnapshotKt.current((StateMapStateRecord) firstStateRecord));
    }

    private final <R> R writable(Function1<? super StateMapStateRecord<K, V>, ? extends R> block) {
        Snapshot current;
        R invoke;
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) firstStateRecord;
        SnapshotKt.getSnapshotInitializer();
        synchronized (SnapshotKt.getLock()) {
            try {
                current = Snapshot.INSTANCE.getCurrent();
                invoke = block.invoke(SnapshotKt.writableRecord(stateMapStateRecord, this, current));
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        SnapshotKt.notifyWrite(current, this);
        return invoke;
    }

    private final <R> R mutate(Function1<? super Map<K, V>, ? extends R> block) {
        Object obj;
        PersistentMap<K, V> map$runtime_release;
        int modification;
        R invoke;
        Snapshot current;
        Object obj2;
        boolean z;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                try {
                    StateRecord firstStateRecord = getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                    StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                    map$runtime_release = stateMapStateRecord.getMap$runtime_release();
                    modification = stateMapStateRecord.getModification();
                    Unit unit = Unit.INSTANCE;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(map$runtime_release);
            PersistentMap.Builder<K, V> builder = map$runtime_release.builder();
            invoke = block.invoke(builder);
            PersistentMap<K, V> build = builder.build();
            if (Intrinsics.areEqual(build, map$runtime_release)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                try {
                    current = Snapshot.INSTANCE.getCurrent();
                    StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current);
                    obj2 = SnapshotStateMapKt.sync;
                    synchronized (obj2) {
                        try {
                            if (stateMapStateRecord3.getModification() == modification) {
                                stateMapStateRecord3.setMap$runtime_release(build);
                                stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                                z = true;
                            } else {
                                z = false;
                            }
                            InlineMarker.finallyStart(1);
                        } finally {
                        }
                    }
                    InlineMarker.finallyEnd(1);
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            SnapshotKt.notifyWrite(current, this);
        } while (!z);
        return invoke;
    }

    /* compiled from: SnapshotStateMap.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u001b\b\u0000\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003H\u0016J\b\u0010\u0013\u001a\u00020\u0003H\u0016R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006R\u001a\u0010\n\u001a\u00020\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/runtime/snapshots/StateRecord;", "map", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V", "getMap$runtime_release", "()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;", "setMap$runtime_release", "modification", "", "getModification$runtime_release", "()I", "setModification$runtime_release", "(I)V", "assign", "", "value", "create", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class StateMapStateRecord<K, V> extends StateRecord {
        private PersistentMap<K, ? extends V> map;
        private int modification;

        public final PersistentMap<K, V> getMap$runtime_release() {
            return this.map;
        }

        /* renamed from: getModification$runtime_release, reason: from getter */
        public final int getModification() {
            return this.modification;
        }

        public final void setMap$runtime_release(PersistentMap<K, ? extends V> persistentMap) {
            Intrinsics.checkNotNullParameter(persistentMap, "<set-?>");
            this.map = persistentMap;
        }

        public final void setModification$runtime_release(int i) {
            this.modification = i;
        }

        public StateMapStateRecord(PersistentMap<K, ? extends V> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.map = map;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord value) {
            Object obj;
            Intrinsics.checkNotNullParameter(value, "value");
            StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) value;
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                this.map = stateMapStateRecord.map;
                this.modification = stateMapStateRecord.modification;
                Unit unit = Unit.INSTANCE;
            }
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return new StateMapStateRecord(this.map);
        }
    }

    @Override // java.util.Map
    public void clear() {
        Snapshot current;
        Object obj;
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
        stateMapStateRecord.getMap$runtime_release();
        PersistentMap<K, V> persistentHashMapOf = ExtensionsKt.persistentHashMapOf();
        if (persistentHashMapOf != stateMapStateRecord.getMap$runtime_release()) {
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current);
                obj = SnapshotStateMapKt.sync;
                synchronized (obj) {
                    stateMapStateRecord3.setMap$runtime_release(persistentHashMapOf);
                    stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                }
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @Override // java.util.Map
    public V put(K key, V value) {
        Object obj;
        PersistentMap<K, V> map$runtime_release;
        int modification;
        V put;
        Snapshot current;
        Object obj2;
        boolean z;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime_release = stateMapStateRecord.getMap$runtime_release();
                modification = stateMapStateRecord.getModification();
                Unit unit = Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(map$runtime_release);
            PersistentMap.Builder<K, V> builder = map$runtime_release.builder();
            put = builder.put(key, value);
            PersistentMap<K, V> build = builder.build();
            if (Intrinsics.areEqual(build, map$runtime_release)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current);
                obj2 = SnapshotStateMapKt.sync;
                synchronized (obj2) {
                    if (stateMapStateRecord3.getModification() == modification) {
                        stateMapStateRecord3.setMap$runtime_release(build);
                        z = true;
                        stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                    } else {
                        z = false;
                    }
                }
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!z);
        return put;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> from) {
        Object obj;
        PersistentMap<K, V> map$runtime_release;
        int modification;
        Snapshot current;
        Object obj2;
        boolean z;
        Intrinsics.checkNotNullParameter(from, "from");
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime_release = stateMapStateRecord.getMap$runtime_release();
                modification = stateMapStateRecord.getModification();
                Unit unit = Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(map$runtime_release);
            PersistentMap.Builder<K, V> builder = map$runtime_release.builder();
            builder.putAll(from);
            Unit unit2 = Unit.INSTANCE;
            PersistentMap<K, V> build = builder.build();
            if (Intrinsics.areEqual(build, map$runtime_release)) {
                return;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current);
                obj2 = SnapshotStateMapKt.sync;
                synchronized (obj2) {
                    if (stateMapStateRecord3.getModification() == modification) {
                        stateMapStateRecord3.setMap$runtime_release(build);
                        z = true;
                        stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                    } else {
                        z = false;
                    }
                }
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!z);
    }

    @Override // java.util.Map
    public V remove(Object key) {
        Object obj;
        PersistentMap<K, V> map$runtime_release;
        int modification;
        V remove;
        Snapshot current;
        Object obj2;
        boolean z;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime_release = stateMapStateRecord.getMap$runtime_release();
                modification = stateMapStateRecord.getModification();
                Unit unit = Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(map$runtime_release);
            PersistentMap.Builder<K, V> builder = map$runtime_release.builder();
            remove = builder.remove(key);
            PersistentMap<K, V> build = builder.build();
            if (Intrinsics.areEqual(build, map$runtime_release)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current);
                obj2 = SnapshotStateMapKt.sync;
                synchronized (obj2) {
                    if (stateMapStateRecord3.getModification() == modification) {
                        stateMapStateRecord3.setMap$runtime_release(build);
                        z = true;
                        stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                    } else {
                        z = false;
                    }
                }
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!z);
        return remove;
    }

    public final boolean removeIf$runtime_release(Function1<? super Map.Entry<K, V>, Boolean> predicate) {
        Object obj;
        PersistentMap<K, V> map$runtime_release;
        int modification;
        Snapshot current;
        Object obj2;
        boolean z;
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        boolean z2 = false;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                try {
                    StateRecord firstStateRecord = getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                    StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                    map$runtime_release = stateMapStateRecord.getMap$runtime_release();
                    modification = stateMapStateRecord.getModification();
                    Unit unit = Unit.INSTANCE;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(map$runtime_release);
            PersistentMap.Builder<K, V> builder = map$runtime_release.builder();
            PersistentMap.Builder<K, V> builder2 = builder;
            for (Map.Entry<K, V> entry : entrySet()) {
                if (predicate.invoke(entry).booleanValue()) {
                    builder2.remove(entry.getKey());
                    z2 = true;
                }
            }
            Unit unit2 = Unit.INSTANCE;
            PersistentMap<K, V> build = builder.build();
            if (Intrinsics.areEqual(build, map$runtime_release)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                try {
                    current = Snapshot.INSTANCE.getCurrent();
                    StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current);
                    obj2 = SnapshotStateMapKt.sync;
                    synchronized (obj2) {
                        try {
                            if (stateMapStateRecord3.getModification() == modification) {
                                stateMapStateRecord3.setMap$runtime_release(build);
                                stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                                z = true;
                            } else {
                                z = false;
                            }
                            InlineMarker.finallyStart(1);
                        } finally {
                        }
                    }
                    InlineMarker.finallyEnd(1);
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            SnapshotKt.notifyWrite(current, this);
        } while (!z);
        return z2;
    }

    public final Map<K, V> getDebuggerDisplayValue() {
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        return ((StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord)).getMap$runtime_release();
    }

    private final void update(Function1<? super PersistentMap<K, ? extends V>, ? extends PersistentMap<K, ? extends V>> block) {
        Snapshot current;
        Object obj;
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
        StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
        PersistentMap<K, ? extends V> invoke = block.invoke(stateMapStateRecord.getMap$runtime_release());
        if (invoke != stateMapStateRecord.getMap$runtime_release()) {
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                try {
                    current = Snapshot.INSTANCE.getCurrent();
                    StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current);
                    obj = SnapshotStateMapKt.sync;
                    synchronized (obj) {
                        try {
                            stateMapStateRecord3.setMap$runtime_release(invoke);
                            stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                            InlineMarker.finallyStart(1);
                        } catch (Throwable th) {
                            InlineMarker.finallyStart(1);
                            InlineMarker.finallyEnd(1);
                            throw th;
                        }
                    }
                    InlineMarker.finallyEnd(1);
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            SnapshotKt.notifyWrite(current, this);
        }
    }
}
