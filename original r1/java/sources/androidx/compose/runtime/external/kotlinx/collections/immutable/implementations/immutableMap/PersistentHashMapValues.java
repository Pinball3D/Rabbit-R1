package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractCollection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PersistentHashMapContentViews.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010(\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u000fJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u0011H\u0096\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapValues;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableCollection;", "Lkotlin/collections/AbstractCollection;", "map", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V", "size", "", "getSize", "()I", "contains", "", "element", "(Ljava/lang/Object;)Z", "iterator", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PersistentHashMapValues<K, V> extends AbstractCollection<V> implements ImmutableCollection<V> {
    private final PersistentHashMap<K, V> map;

    public PersistentHashMapValues(PersistentHashMap<K, V> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.map = map;
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        return this.map.size();
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return this.map.containsValue(element);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<V> iterator() {
        return new PersistentHashMapValuesIterator(this.map.getNode$runtime_release());
    }
}
