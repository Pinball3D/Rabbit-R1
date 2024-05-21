package com.google.common.collect;

import com.google.common.collect.AbstractMapBasedMultimap;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class AbstractSortedSetMultimap<K, V> extends AbstractSetMultimap<K, V> implements SortedSetMultimap<K, V> {
    private static final long serialVersionUID = 430848587173315748L;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public abstract SortedSet<V> createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@ParametricNullness Object obj) {
        return get((AbstractSortedSetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set get(@ParametricNullness Object obj) {
        return get((AbstractSortedSetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((AbstractSortedSetMultimap<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((AbstractSortedSetMultimap<K, V>) obj, iterable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSortedSetMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public SortedSet<V> createUnmodifiableEmptyCollection() {
        return (SortedSet<V>) unmodifiableCollectionSubclass((Collection) createCollection());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public <E> SortedSet<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        if (collection instanceof NavigableSet) {
            return Sets.unmodifiableNavigableSet((NavigableSet) collection);
        }
        return Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    Collection<V> wrapCollection(@ParametricNullness K k, Collection<V> collection) {
        if (collection instanceof NavigableSet) {
            return new AbstractMapBasedMultimap.WrappedNavigableSet(k, (NavigableSet) collection, null);
        }
        return new AbstractMapBasedMultimap.WrappedSortedSet(k, (SortedSet) collection, null);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedSet<V> get(@ParametricNullness K k) {
        return (SortedSet) super.get((AbstractSortedSetMultimap<K, V>) k);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedSet<V> removeAll(@CheckForNull Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedSet<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((AbstractSortedSetMultimap<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }
}
