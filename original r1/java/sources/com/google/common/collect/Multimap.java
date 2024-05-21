package com.google.common.collect;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@DoNotMock("Use ImmutableMultimap, HashMultimap, or another implementation")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    void clear();

    boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2);

    boolean containsKey(@CheckForNull Object obj);

    boolean containsValue(@CheckForNull Object obj);

    Collection<Map.Entry<K, V>> entries();

    boolean equals(@CheckForNull Object obj);

    Collection<V> get(@ParametricNullness K k);

    int hashCode();

    boolean isEmpty();

    Set<K> keySet();

    Multiset<K> keys();

    boolean put(@ParametricNullness K k, @ParametricNullness V v);

    boolean putAll(Multimap<? extends K, ? extends V> multimap);

    boolean putAll(@ParametricNullness K k, Iterable<? extends V> iterable);

    boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2);

    Collection<V> removeAll(@CheckForNull Object obj);

    Collection<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable);

    int size();

    Collection<V> values();
}
