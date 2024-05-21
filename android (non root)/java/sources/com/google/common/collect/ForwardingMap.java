package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Map<K, V> delegate();

    public int size() {
        return delegate().size();
    }

    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        return delegate().remove(obj);
    }

    public void clear() {
        delegate().clear();
    }

    public boolean containsKey(@CheckForNull Object obj) {
        return delegate().containsKey(obj);
    }

    public boolean containsValue(@CheckForNull Object obj) {
        return delegate().containsValue(obj);
    }

    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return delegate().get(obj);
    }

    @CheckForNull
    public V put(@ParametricNullness K k, @ParametricNullness V v) {
        return delegate().put(k, v);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    public Set<K> keySet() {
        return delegate().keySet();
    }

    public Collection<V> values() {
        return delegate().values();
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    public boolean equals(@CheckForNull Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    protected void standardPutAll(Map<? extends K, ? extends V> map) {
        Maps.putAllImpl(this, map);
    }

    @CheckForNull
    protected V standardRemove(@CheckForNull Object obj) {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (Objects.equal(next.getKey(), obj)) {
                V value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    protected void standardClear() {
        Iterators.clear(entrySet().iterator());
    }

    /* loaded from: classes3.dex */
    protected class StandardKeySet extends Maps.KeySet<K, V> {
        public StandardKeySet(ForwardingMap forwardingMap) {
            super(forwardingMap);
        }
    }

    protected boolean standardContainsKey(@CheckForNull Object obj) {
        return Maps.containsKeyImpl(this, obj);
    }

    /* loaded from: classes3.dex */
    protected class StandardValues extends Maps.Values<K, V> {
        public StandardValues(ForwardingMap forwardingMap) {
            super(forwardingMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardContainsValue(@CheckForNull Object obj) {
        return Maps.containsValueImpl(this, obj);
    }

    /* loaded from: classes3.dex */
    protected abstract class StandardEntrySet extends Maps.EntrySet<K, V> {
        @Override // com.google.common.collect.Maps.EntrySet
        Map<K, V> map() {
            return ForwardingMap.this;
        }

        public StandardEntrySet() {
        }
    }

    protected boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardEquals(@CheckForNull Object obj) {
        return Maps.equalsImpl(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int standardHashCode() {
        return Sets.hashCodeImpl(entrySet());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String standardToString() {
        return Maps.toStringImpl(this);
    }
}
