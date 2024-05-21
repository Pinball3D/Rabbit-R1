package com.google.common.cache;

import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

@DoNotMock("Use CacheBuilder.newBuilder().build()")
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public interface Cache<K, V> {
    @CheckReturnValue
    ConcurrentMap<K, V> asMap();

    void cleanUp();

    V get(K k, Callable<? extends V> callable) throws ExecutionException;

    ImmutableMap<K, V> getAllPresent(Iterable<? extends Object> iterable);

    @CheckForNull
    V getIfPresent(Object obj);

    void invalidate(Object obj);

    void invalidateAll();

    void invalidateAll(Iterable<? extends Object> iterable);

    void put(K k, V v);

    void putAll(Map<? extends K, ? extends V> map);

    @CheckReturnValue
    long size();

    @CheckReturnValue
    CacheStats stats();
}
