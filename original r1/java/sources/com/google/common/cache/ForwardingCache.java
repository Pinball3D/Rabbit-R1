package com.google.common.cache;

import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingObject;
import com.google.common.collect.ImmutableMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class ForwardingCache<K, V> extends ForwardingObject implements Cache<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Cache<K, V> delegate();

    @Override // com.google.common.cache.Cache
    @CheckForNull
    public V getIfPresent(Object obj) {
        return delegate().getIfPresent(obj);
    }

    @Override // com.google.common.cache.Cache
    public V get(K k, Callable<? extends V> callable) throws ExecutionException {
        return delegate().get(k, callable);
    }

    @Override // com.google.common.cache.Cache
    public ImmutableMap<K, V> getAllPresent(Iterable<? extends Object> iterable) {
        return delegate().getAllPresent(iterable);
    }

    @Override // com.google.common.cache.Cache
    public void put(K k, V v) {
        delegate().put(k, v);
    }

    @Override // com.google.common.cache.Cache
    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @Override // com.google.common.cache.Cache
    public void invalidate(Object obj) {
        delegate().invalidate(obj);
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll(Iterable<? extends Object> iterable) {
        delegate().invalidateAll(iterable);
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll() {
        delegate().invalidateAll();
    }

    @Override // com.google.common.cache.Cache
    public long size() {
        return delegate().size();
    }

    @Override // com.google.common.cache.Cache
    public CacheStats stats() {
        return delegate().stats();
    }

    @Override // com.google.common.cache.Cache
    public ConcurrentMap<K, V> asMap() {
        return delegate().asMap();
    }

    @Override // com.google.common.cache.Cache
    public void cleanUp() {
        delegate().cleanUp();
    }

    /* loaded from: classes2.dex */
    public static abstract class SimpleForwardingCache<K, V> extends ForwardingCache<K, V> {
        private final Cache<K, V> delegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public final Cache<K, V> delegate() {
            return this.delegate;
        }

        protected SimpleForwardingCache(Cache<K, V> cache) {
            this.delegate = (Cache) Preconditions.checkNotNull(cache);
        }
    }
}
