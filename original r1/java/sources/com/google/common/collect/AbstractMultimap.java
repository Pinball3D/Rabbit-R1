package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multimaps;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class AbstractMultimap<K, V> implements Multimap<K, V> {

    @CheckForNull
    @LazyInit
    private transient Map<K, Collection<V>> asMap;

    @CheckForNull
    @LazyInit
    private transient Collection<Map.Entry<K, V>> entries;

    @CheckForNull
    @LazyInit
    private transient Set<K> keySet;

    @CheckForNull
    @LazyInit
    private transient Multiset<K> keys;

    @CheckForNull
    @LazyInit
    private transient Collection<V> values;

    abstract Map<K, Collection<V>> createAsMap();

    abstract Collection<Map.Entry<K, V>> createEntries();

    abstract Set<K> createKeySet();

    abstract Multiset<K> createKeys();

    abstract Collection<V> createValues();

    abstract Iterator<Map.Entry<K, V>> entryIterator();

    @Override // com.google.common.collect.Multimap
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsValue(@CheckForNull Object obj) {
        Iterator<Collection<V>> it = asMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean put(@ParametricNullness K k, @ParametricNullness V v) {
        return get(k).add(v);
    }

    @Override // com.google.common.collect.Multimap
    public boolean putAll(@ParametricNullness K k, Iterable<? extends V> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            Collection<? extends V> collection = (Collection) iterable;
            return !collection.isEmpty() && get(k).addAll(collection);
        }
        Iterator<? extends V> it = iterable.iterator();
        return it.hasNext() && Iterators.addAll(get(k), it);
    }

    @Override // com.google.common.collect.Multimap
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        boolean z = false;
        for (Map.Entry<? extends K, ? extends V> entry : multimap.entries()) {
            z |= put(entry.getKey(), entry.getValue());
        }
        return z;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        Preconditions.checkNotNull(iterable);
        Collection<V> removeAll = removeAll(k);
        putAll(k, iterable);
        return removeAll;
    }

    @Override // com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.entries;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> createEntries = createEntries();
        this.entries = createEntries;
        return createEntries;
    }

    /* loaded from: classes3.dex */
    class Entries extends Multimaps.Entries<K, V> {
        @Override // com.google.common.collect.Multimaps.Entries
        Multimap<K, V> multimap() {
            return AbstractMultimap.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Entries() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractMultimap.this.entryIterator();
        }
    }

    /* loaded from: classes3.dex */
    class EntrySet extends AbstractMultimap<K, V>.Entries implements Set<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public EntrySet(AbstractMultimap abstractMultimap) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.hashCodeImpl(this);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return Sets.equalsImpl(this, obj);
        }
    }

    @Override // com.google.common.collect.Multimap
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        Set<K> createKeySet = createKeySet();
        this.keySet = createKeySet;
        return createKeySet;
    }

    @Override // com.google.common.collect.Multimap
    public Multiset<K> keys() {
        Multiset<K> multiset = this.keys;
        if (multiset != null) {
            return multiset;
        }
        Multiset<K> createKeys = createKeys();
        this.keys = createKeys;
        return createKeys;
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection<V> createValues = createValues();
        this.values = createValues;
        return createValues;
    }

    /* loaded from: classes3.dex */
    class Values extends AbstractCollection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return AbstractMultimap.this.valueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractMultimap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            return AbstractMultimap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractMultimap.this.clear();
        }
    }

    Iterator<V> valueIterator() {
        return Maps.valueIterator(entries().iterator());
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.asMap;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> createAsMap = createAsMap();
        this.asMap = createAsMap;
        return createAsMap;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public boolean equals(@CheckForNull Object obj) {
        return Multimaps.equalsImpl(this, obj);
    }

    @Override // com.google.common.collect.Multimap
    public int hashCode() {
        return asMap().hashCode();
    }

    public String toString() {
        return asMap().toString();
    }
}
