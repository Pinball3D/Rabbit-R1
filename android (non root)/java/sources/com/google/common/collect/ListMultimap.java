package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface ListMultimap<K, V> extends Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    boolean equals(@CheckForNull Object obj);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    List<V> get(@ParametricNullness K k);

    @Override // 
    List<V> removeAll(@CheckForNull Object obj);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    List<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable);

    /* JADX WARN: Multi-variable type inference failed */
    /* bridge */ /* synthetic */ default Collection get(@ParametricNullness Object obj) {
        return get((ListMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* bridge */ /* synthetic */ default Collection replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((ListMultimap<K, V>) obj, iterable);
    }
}
