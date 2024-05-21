package com.google.common.collect;

import com.google.common.base.Objects;
import java.util.Map;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingMapEntry<K, V> extends ForwardingObject implements Map.Entry<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Map.Entry<K, V> delegate();

    @Override // java.util.Map.Entry
    @ParametricNullness
    public K getKey() {
        return delegate().getKey();
    }

    @Override // java.util.Map.Entry
    @ParametricNullness
    public V getValue() {
        return delegate().getValue();
    }

    @ParametricNullness
    public V setValue(@ParametricNullness V v) {
        return delegate().setValue(v);
    }

    @Override // java.util.Map.Entry
    public boolean equals(@CheckForNull Object obj) {
        return delegate().equals(obj);
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return delegate().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardEquals(@CheckForNull Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Objects.equal(getKey(), entry.getKey()) && Objects.equal(getValue(), entry.getValue());
    }

    protected int standardHashCode() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    protected String standardToString() {
        String valueOf = String.valueOf(getKey());
        String valueOf2 = String.valueOf(getValue());
        return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("=").append(valueOf2).toString();
    }
}
