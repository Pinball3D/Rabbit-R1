package com.google.common.collect;

import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class FilteredEntrySetMultimap<K, V> extends FilteredEntryMultimap<K, V> implements FilteredSetMultimap<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.FilteredEntryMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@ParametricNullness Object obj) {
        return get((FilteredEntrySetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((FilteredEntrySetMultimap<K, V>) obj, iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FilteredEntrySetMultimap(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        super(setMultimap, predicate);
    }

    @Override // com.google.common.collect.FilteredEntryMultimap, com.google.common.collect.FilteredMultimap
    public SetMultimap<K, V> unfiltered() {
        return (SetMultimap) this.unfiltered;
    }

    @Override // com.google.common.collect.FilteredEntryMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(@ParametricNullness K k) {
        return (Set) super.get((FilteredEntrySetMultimap<K, V>) k);
    }

    @Override // com.google.common.collect.FilteredEntryMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(@CheckForNull Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((FilteredEntrySetMultimap<K, V>) k, (Iterable) iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.FilteredEntryMultimap, com.google.common.collect.AbstractMultimap
    public Set<Map.Entry<K, V>> createEntries() {
        return Sets.filter(unfiltered().entries(), entryPredicate());
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }
}
