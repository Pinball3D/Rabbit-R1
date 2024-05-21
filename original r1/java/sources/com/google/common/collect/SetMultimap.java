package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface SetMultimap<K, V> extends Multimap<K, V> {
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    Map<K, Collection<V>> asMap();

    @Override // com.google.common.collect.Multimap
    Set<Map.Entry<K, V>> entries();

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    boolean equals(@CheckForNull Object obj);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    Set<V> get(@ParametricNullness K k);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    Set<V> removeAll(@CheckForNull Object obj);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    Set<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    /* bridge */ /* synthetic */ default Collection get(@ParametricNullness Object obj) {
        return get((SetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    /* bridge */ /* synthetic */ default Collection replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((SetMultimap<K, V>) obj, iterable);
    }
}
