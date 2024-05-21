package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingMultimap<K, V> extends ForwardingObject implements Multimap<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Multimap<K, V> delegate();

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return delegate().asMap();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        delegate().clear();
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return delegate().containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@CheckForNull Object obj) {
        return delegate().containsKey(obj);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsValue(@CheckForNull Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        return delegate().entries();
    }

    public Collection<V> get(@ParametricNullness K k) {
        return delegate().get(k);
    }

    @Override // com.google.common.collect.Multimap
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // com.google.common.collect.Multimap
    public Multiset<K> keys() {
        return delegate().keys();
    }

    @Override // com.google.common.collect.Multimap
    public Set<K> keySet() {
        return delegate().keySet();
    }

    @Override // com.google.common.collect.Multimap
    public boolean put(@ParametricNullness K k, @ParametricNullness V v) {
        return delegate().put(k, v);
    }

    @Override // com.google.common.collect.Multimap
    public boolean putAll(@ParametricNullness K k, Iterable<? extends V> iterable) {
        return delegate().putAll(k, iterable);
    }

    @Override // com.google.common.collect.Multimap
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        return delegate().putAll(multimap);
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return delegate().remove(obj, obj2);
    }

    public Collection<V> removeAll(@CheckForNull Object obj) {
        return delegate().removeAll(obj);
    }

    public Collection<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        return delegate().replaceValues(k, iterable);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return delegate().size();
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> values() {
        return delegate().values();
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // com.google.common.collect.Multimap
    public int hashCode() {
        return delegate().hashCode();
    }
}
