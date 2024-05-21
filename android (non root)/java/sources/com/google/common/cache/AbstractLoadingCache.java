package com.google.common.cache;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class AbstractLoadingCache<K, V> extends AbstractCache<K, V> implements LoadingCache<K, V> {
    protected AbstractLoadingCache() {
    }

    @Override // com.google.common.cache.LoadingCache
    public V getUnchecked(K k) {
        try {
            return get(k);
        } catch (ExecutionException e) {
            throw new UncheckedExecutionException(e.getCause());
        }
    }

    @Override // com.google.common.cache.LoadingCache
    public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        for (K k : iterable) {
            if (!newLinkedHashMap.containsKey(k)) {
                newLinkedHashMap.put(k, get(k));
            }
        }
        return ImmutableMap.copyOf((Map) newLinkedHashMap);
    }

    @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
    public final V apply(K k) {
        return getUnchecked(k);
    }

    @Override // com.google.common.cache.LoadingCache
    public void refresh(K k) {
        throw new UnsupportedOperationException();
    }
}
