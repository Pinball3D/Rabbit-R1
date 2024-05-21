package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class FilteredKeyMultimap<K, V> extends AbstractMultimap<K, V> implements FilteredMultimap<K, V> {
    final Predicate<? super K> keyPredicate;
    final Multimap<K, V> unfiltered;

    public Multimap<K, V> unfiltered() {
        return this.unfiltered;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FilteredKeyMultimap(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        this.unfiltered = (Multimap) Preconditions.checkNotNull(multimap);
        this.keyPredicate = (Predicate) Preconditions.checkNotNull(predicate);
    }

    @Override // com.google.common.collect.FilteredMultimap
    public Predicate<? super Map.Entry<K, V>> entryPredicate() {
        return Maps.keyPredicateOnEntries(this.keyPredicate);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        Iterator<Collection<V>> it = asMap().values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().size();
        }
        return i;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@CheckForNull Object obj) {
        if (this.unfiltered.containsKey(obj)) {
            return this.keyPredicate.apply(obj);
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@CheckForNull Object obj) {
        return containsKey(obj) ? this.unfiltered.removeAll(obj) : unmodifiableEmptyCollection();
    }

    Collection<V> unmodifiableEmptyCollection() {
        if (this.unfiltered instanceof SetMultimap) {
            return Collections.emptySet();
        }
        return Collections.emptyList();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        keySet().clear();
    }

    @Override // com.google.common.collect.AbstractMultimap
    Set<K> createKeySet() {
        return Sets.filter(this.unfiltered.keySet(), this.keyPredicate);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(@ParametricNullness K k) {
        if (this.keyPredicate.apply(k)) {
            return this.unfiltered.get(k);
        }
        if (this.unfiltered instanceof SetMultimap) {
            return new AddRejectingSet(k);
        }
        return new AddRejectingList(k);
    }

    /* loaded from: classes3.dex */
    static class AddRejectingSet<K, V> extends ForwardingSet<V> {

        @ParametricNullness
        final K key;

        AddRejectingSet(@ParametricNullness K k) {
            this.key = k;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@ParametricNullness V v) {
            String valueOf = String.valueOf(this.key);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 32).append("Key does not satisfy predicate: ").append(valueOf).toString());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            String valueOf = String.valueOf(this.key);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 32).append("Key does not satisfy predicate: ").append(valueOf).toString());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<V> delegate() {
            return Collections.emptySet();
        }
    }

    /* loaded from: classes3.dex */
    static class AddRejectingList<K, V> extends ForwardingList<V> {

        @ParametricNullness
        final K key;

        AddRejectingList(@ParametricNullness K k) {
            this.key = k;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@ParametricNullness V v) {
            add(0, v);
            return true;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public void add(int i, @ParametricNullness V v) {
            Preconditions.checkPositionIndex(i, 0);
            String valueOf = String.valueOf(this.key);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 32).append("Key does not satisfy predicate: ").append(valueOf).toString());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            Preconditions.checkPositionIndex(i, 0);
            String valueOf = String.valueOf(this.key);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 32).append("Key does not satisfy predicate: ").append(valueOf).toString());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public List<V> delegate() {
            return Collections.emptyList();
        }
    }

    @Override // com.google.common.collect.AbstractMultimap
    Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractMultimap
    Collection<Map.Entry<K, V>> createEntries() {
        return new Entries();
    }

    /* loaded from: classes3.dex */
    class Entries extends ForwardingCollection<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public Entries() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            return Collections2.filter(FilteredKeyMultimap.this.unfiltered.entries(), FilteredKeyMultimap.this.entryPredicate());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (FilteredKeyMultimap.this.unfiltered.containsKey(entry.getKey()) && FilteredKeyMultimap.this.keyPredicate.apply((Object) entry.getKey())) {
                return FilteredKeyMultimap.this.unfiltered.remove(entry.getKey(), entry.getValue());
            }
            return false;
        }
    }

    @Override // com.google.common.collect.AbstractMultimap
    Collection<V> createValues() {
        return new FilteredMultimapValues(this);
    }

    @Override // com.google.common.collect.AbstractMultimap
    Map<K, Collection<V>> createAsMap() {
        return Maps.filterKeys(this.unfiltered.asMap(), this.keyPredicate);
    }

    @Override // com.google.common.collect.AbstractMultimap
    Multiset<K> createKeys() {
        return Multisets.filter(this.unfiltered.keys(), this.keyPredicate);
    }
}
