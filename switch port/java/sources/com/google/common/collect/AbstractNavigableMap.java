package com.google.common.collect;

import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class AbstractNavigableMap<K, V> extends Maps.IteratorBasedAbstractMap<K, V> implements NavigableMap<K, V> {
    abstract Iterator<Map.Entry<K, V>> descendingEntryIterator();

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public abstract V get(@CheckForNull Object obj);

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> firstEntry() {
        return (Map.Entry) Iterators.getNext(entryIterator(), null);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> lastEntry() {
        return (Map.Entry) Iterators.getNext(descendingEntryIterator(), null);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> pollFirstEntry() {
        return (Map.Entry) Iterators.pollNext(entryIterator());
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> pollLastEntry() {
        return (Map.Entry) Iterators.pollNext(descendingEntryIterator());
    }

    @Override // java.util.SortedMap
    @ParametricNullness
    public K firstKey() {
        Map.Entry<K, V> firstEntry = firstEntry();
        if (firstEntry == null) {
            throw new NoSuchElementException();
        }
        return firstEntry.getKey();
    }

    @Override // java.util.SortedMap
    @ParametricNullness
    public K lastKey() {
        Map.Entry<K, V> lastEntry = lastEntry();
        if (lastEntry == null) {
            throw new NoSuchElementException();
        }
        return lastEntry.getKey();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> lowerEntry(@ParametricNullness K k) {
        return headMap(k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> floorEntry(@ParametricNullness K k) {
        return headMap(k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> ceilingEntry(@ParametricNullness K k) {
        return tailMap(k, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> higherEntry(@ParametricNullness K k) {
        return tailMap(k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K lowerKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(lowerEntry(k));
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K floorKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(floorEntry(k));
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K ceilingKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(ceilingEntry(k));
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K higherKey(@ParametricNullness K k) {
        return (K) Maps.keyOrNull(higherEntry(k));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap<K, V> subMap(@ParametricNullness K k, @ParametricNullness K k2) {
        return subMap(k, true, k2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap<K, V> headMap(@ParametricNullness K k) {
        return headMap(k, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap<K, V> tailMap(@ParametricNullness K k) {
        return tailMap(k, true);
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> navigableKeySet() {
        return new Maps.NavigableKeySet(this);
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public Set<K> keySet() {
        return navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> descendingMap() {
        return new DescendingMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class DescendingMap extends Maps.DescendingMap<K, V> {
        @Override // com.google.common.collect.Maps.DescendingMap
        NavigableMap<K, V> forward() {
            return AbstractNavigableMap.this;
        }

        private DescendingMap() {
        }

        @Override // com.google.common.collect.Maps.DescendingMap
        Iterator<Map.Entry<K, V>> entryIterator() {
            return AbstractNavigableMap.this.descendingEntryIterator();
        }
    }
}
