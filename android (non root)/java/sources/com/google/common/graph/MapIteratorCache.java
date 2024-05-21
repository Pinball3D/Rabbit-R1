package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.UnmodifiableIterator;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class MapIteratorCache<K, V> {
    private final Map<K, V> backingMap;

    @CheckForNull
    private volatile transient Map.Entry<K, V> cacheEntry;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearCache() {
        this.cacheEntry = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapIteratorCache(Map<K, V> map) {
        this.backingMap = (Map) Preconditions.checkNotNull(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public final V put(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        clearCache();
        return this.backingMap.put(k, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public final V remove(Object obj) {
        Preconditions.checkNotNull(obj);
        clearCache();
        return this.backingMap.remove(obj);
    }

    final void clear() {
        clearCache();
        this.backingMap.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public V get(Object obj) {
        Preconditions.checkNotNull(obj);
        V ifCached = getIfCached(obj);
        return ifCached == null ? getWithoutCaching(obj) : ifCached;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public final V getWithoutCaching(Object obj) {
        Preconditions.checkNotNull(obj);
        return this.backingMap.get(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean containsKey(@CheckForNull Object obj) {
        return getIfCached(obj) != null || this.backingMap.containsKey(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<K> unmodifiableKeySet() {
        return new AbstractSet<K>() { // from class: com.google.common.graph.MapIteratorCache.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<K> iterator() {
                final Iterator<Map.Entry<K, V>> it = MapIteratorCache.this.backingMap.entrySet().iterator();
                return new UnmodifiableIterator<K>() { // from class: com.google.common.graph.MapIteratorCache.1.1
                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override // java.util.Iterator
                    public K next() {
                        Map.Entry entry = (Map.Entry) it.next();
                        MapIteratorCache.this.cacheEntry = entry;
                        return (K) entry.getKey();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return MapIteratorCache.this.backingMap.size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return MapIteratorCache.this.containsKey(obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public V getIfCached(@CheckForNull Object obj) {
        Map.Entry<K, V> entry = this.cacheEntry;
        if (entry == null || entry.getKey() != obj) {
            return null;
        }
        return entry.getValue();
    }
}
