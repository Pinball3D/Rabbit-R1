package com.google.common.cache;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public interface LoadingCache<K, V> extends Cache<K, V>, Function<K, V> {
    @Override // com.google.common.base.Function
    @Deprecated
    V apply(K k);

    @Override // com.google.common.cache.Cache
    ConcurrentMap<K, V> asMap();

    V get(K k) throws ExecutionException;

    ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException;

    V getUnchecked(K k);

    void refresh(K k);
}
