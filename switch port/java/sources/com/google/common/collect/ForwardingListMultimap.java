package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingListMultimap<K, V> extends ForwardingMultimap<K, V> implements ListMultimap<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
    public abstract ListMultimap<K, V> delegate();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@ParametricNullness Object obj) {
        return get((ForwardingListMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((ForwardingListMultimap<K, V>) obj, iterable);
    }

    protected ForwardingListMultimap() {
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@ParametricNullness K k) {
        return delegate().get((ListMultimap<K, V>) k);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> removeAll(@CheckForNull Object obj) {
        return delegate().removeAll(obj);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        return delegate().replaceValues((ListMultimap<K, V>) k, (Iterable) iterable);
    }
}
