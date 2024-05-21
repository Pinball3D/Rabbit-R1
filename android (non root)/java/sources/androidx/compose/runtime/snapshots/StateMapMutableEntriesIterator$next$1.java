package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: SnapshotStateMap.kt */
@Metadata(d1 = {"\u0000\r\n\u0000\n\u0002\u0010'\n\u0002\b\u000b*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J\u0015\u0010\b\u001a\u00028\u00012\u0006\u0010\n\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u000bR\u0016\u0010\u0002\u001a\u00028\u0000X\u0096\u0004¢\u0006\n\n\u0002\u0010\u0005\u001a\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0006\u001a\u00028\u0001X\u0096\u000e¢\u0006\u0010\n\u0002\u0010\u0005\u001a\u0004\b\u0007\u0010\u0004\"\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"androidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1", "", "key", "getKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "value", "getValue", "setValue", "(Ljava/lang/Object;)V", "newValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StateMapMutableEntriesIterator$next$1<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
    private final K key;
    final /* synthetic */ StateMapMutableEntriesIterator<K, V> this$0;
    private V value;

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public void setValue(V v) {
        this.value = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMapMutableEntriesIterator$next$1(StateMapMutableEntriesIterator<K, V> stateMapMutableEntriesIterator) {
        this.this$0 = stateMapMutableEntriesIterator;
        Map.Entry<K, V> current = stateMapMutableEntriesIterator.getCurrent();
        Intrinsics.checkNotNull(current);
        this.key = current.getKey();
        Map.Entry<K, V> current2 = stateMapMutableEntriesIterator.getCurrent();
        Intrinsics.checkNotNull(current2);
        this.value = current2.getValue();
    }

    @Override // java.util.Map.Entry
    public V setValue(V newValue) {
        StateMapMutableEntriesIterator<K, V> stateMapMutableEntriesIterator = this.this$0;
        StateMapMutableEntriesIterator<K, V> stateMapMutableEntriesIterator2 = stateMapMutableEntriesIterator;
        if (stateMapMutableEntriesIterator2.getMap().getModification$runtime_release() == ((StateMapMutableIterator) stateMapMutableEntriesIterator2).modification) {
            V value = getValue();
            stateMapMutableEntriesIterator.getMap().put(getKey(), newValue);
            setValue((StateMapMutableEntriesIterator$next$1<K, V>) newValue);
            return value;
        }
        throw new ConcurrentModificationException();
    }
}
