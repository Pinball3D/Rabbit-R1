package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractSet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PersistentOrderedMapContentViews.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010(\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u000fJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapKeys;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;", "Lkotlin/collections/AbstractSet;", "map", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;)V", "size", "", "getSize", "()I", "contains", "", "element", "(Ljava/lang/Object;)Z", "iterator", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PersistentOrderedMapKeys<K, V> extends AbstractSet<K> implements ImmutableSet<K> {
    private final PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapKeys(PersistentOrderedMap<K, V> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.map = map;
    }

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public int get_size() {
        return this.map.size();
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return this.map.containsKey(element);
    }

    @Override // kotlin.collections.AbstractSet, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<K> iterator() {
        return new PersistentOrderedMapKeysIterator(this.map);
    }
}
