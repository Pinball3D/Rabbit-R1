package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SnapshotStateMap.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016J\u0015\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013H\u0096\u0002J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0010J\u0016\u0010\u0015\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016J\u0016\u0010\u0016\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/runtime/snapshots/SnapshotMapSet;", "map", "Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V", "add", "", "element", "(Ljava/lang/Object;)Ljava/lang/Void;", "addAll", "elements", "", "contains", "", "(Ljava/lang/Object;)Z", "containsAll", "iterator", "Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;", "remove", "removeAll", "retainAll", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class SnapshotMapValueSet<K, V> extends SnapshotMapSet<K, V, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) add((SnapshotMapValueSet<K, V>) obj)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) addAll(collection)).booleanValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotMapValueSet(SnapshotStateMap<K, V> map) {
        super(map);
        Intrinsics.checkNotNullParameter(map, "map");
    }

    @Override // java.util.Set, java.util.Collection
    public Void add(V element) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection
    public Void addAll(Collection<? extends V> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public StateMapMutableValuesIterator<K, V> iterator() {
        return new StateMapMutableValuesIterator<>(getMap(), ((ImmutableSet) getMap().getReadable$runtime_release().getMap$runtime_release().entrySet()).iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object element) {
        return getMap().removeValue$runtime_release(element);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> elements) {
        Object obj;
        PersistentMap<K, V> map$runtime_release;
        int modification;
        boolean z;
        Snapshot current;
        Object obj2;
        Intrinsics.checkNotNullParameter(elements, "elements");
        Set set = CollectionsKt.toSet(elements);
        SnapshotStateMap<K, V> map = getMap();
        boolean z2 = false;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                StateRecord firstStateRecord = map.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current((SnapshotStateMap.StateMapStateRecord) firstStateRecord);
                map$runtime_release = stateMapStateRecord.getMap$runtime_release();
                modification = stateMapStateRecord.getModification();
                Unit unit = Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(map$runtime_release);
            PersistentMap.Builder<K, V> builder2 = map$runtime_release.builder2();
            PersistentMap.Builder<K, V> builder = builder2;
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            while (true) {
                z = true;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<K, V> next = it.next();
                if (set.contains(next.getValue())) {
                    builder.remove(next.getKey());
                    z2 = true;
                }
            }
            Unit unit2 = Unit.INSTANCE;
            PersistentMap<K, V> build2 = builder2.build2();
            if (Intrinsics.areEqual(build2, map$runtime_release)) {
                break;
            }
            StateRecord firstStateRecord2 = map.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, map, current);
                obj2 = SnapshotStateMapKt.sync;
                synchronized (obj2) {
                    if (stateMapStateRecord3.getModification() == modification) {
                        stateMapStateRecord3.setMap$runtime_release(build2);
                        stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                    } else {
                        z = false;
                    }
                }
            }
            SnapshotKt.notifyWrite(current, map);
        } while (!z);
        return z2;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> elements) {
        Object obj;
        PersistentMap<K, V> map$runtime_release;
        int modification;
        boolean z;
        Snapshot current;
        Object obj2;
        Intrinsics.checkNotNullParameter(elements, "elements");
        Set set = CollectionsKt.toSet(elements);
        SnapshotStateMap<K, V> map = getMap();
        boolean z2 = false;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                StateRecord firstStateRecord = map.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current((SnapshotStateMap.StateMapStateRecord) firstStateRecord);
                map$runtime_release = stateMapStateRecord.getMap$runtime_release();
                modification = stateMapStateRecord.getModification();
                Unit unit = Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(map$runtime_release);
            PersistentMap.Builder<K, V> builder2 = map$runtime_release.builder2();
            PersistentMap.Builder<K, V> builder = builder2;
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            while (true) {
                z = true;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<K, V> next = it.next();
                if (!set.contains(next.getValue())) {
                    builder.remove(next.getKey());
                    z2 = true;
                }
            }
            Unit unit2 = Unit.INSTANCE;
            PersistentMap<K, V> build2 = builder2.build2();
            if (Intrinsics.areEqual(build2, map$runtime_release)) {
                break;
            }
            StateRecord firstStateRecord2 = map.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) firstStateRecord2;
            SnapshotKt.getSnapshotInitializer();
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.INSTANCE.getCurrent();
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, map, current);
                obj2 = SnapshotStateMapKt.sync;
                synchronized (obj2) {
                    if (stateMapStateRecord3.getModification() == modification) {
                        stateMapStateRecord3.setMap$runtime_release(build2);
                        stateMapStateRecord3.setModification$runtime_release(stateMapStateRecord3.getModification() + 1);
                    } else {
                        z = false;
                    }
                }
            }
            SnapshotKt.notifyWrite(current, map);
        } while (!z);
        return z2;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object element) {
        return getMap().containsValue(element);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!getMap().containsValue(it.next())) {
                return false;
            }
        }
        return true;
    }
}
