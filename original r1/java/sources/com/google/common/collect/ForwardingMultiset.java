package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingMultiset<E> extends ForwardingCollection<E> implements Multiset<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract Multiset<E> delegate();

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        return delegate().count(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int add(@ParametricNullness E e, int i) {
        return delegate().add(e, i);
    }

    @Override // com.google.common.collect.Multiset
    public int remove(@CheckForNull Object obj, int i) {
        return delegate().remove(obj, i);
    }

    public Set<E> elementSet() {
        return delegate().elementSet();
    }

    public Set<Multiset.Entry<E>> entrySet() {
        return delegate().entrySet();
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // com.google.common.collect.Multiset
    public int setCount(@ParametricNullness E e, int i) {
        return delegate().setCount(e, i);
    }

    @Override // com.google.common.collect.Multiset
    public boolean setCount(@ParametricNullness E e, int i, int i2) {
        return delegate().setCount(e, i, i2);
    }

    @Override // com.google.common.collect.ForwardingCollection
    protected boolean standardContains(@CheckForNull Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.ForwardingCollection
    protected void standardClear() {
        Iterators.clear(entrySet().iterator());
    }

    protected int standardCount(@CheckForNull Object obj) {
        for (Multiset.Entry<E> entry : entrySet()) {
            if (Objects.equal(entry.getElement(), obj)) {
                return entry.getCount();
            }
        }
        return 0;
    }

    protected boolean standardAdd(@ParametricNullness E e) {
        add(e, 1);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingCollection
    public boolean standardAddAll(Collection<? extends E> collection) {
        return Multisets.addAllImpl(this, collection);
    }

    @Override // com.google.common.collect.ForwardingCollection
    protected boolean standardRemove(@CheckForNull Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // com.google.common.collect.ForwardingCollection
    protected boolean standardRemoveAll(Collection<?> collection) {
        return Multisets.removeAllImpl(this, collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingCollection
    public boolean standardRetainAll(Collection<?> collection) {
        return Multisets.retainAllImpl(this, collection);
    }

    protected int standardSetCount(@ParametricNullness E e, int i) {
        return Multisets.setCountImpl(this, e, i);
    }

    protected boolean standardSetCount(@ParametricNullness E e, int i, int i2) {
        return Multisets.setCountImpl(this, e, i, i2);
    }

    /* loaded from: classes3.dex */
    protected class StandardElementSet extends Multisets.ElementSet<E> {
        @Override // com.google.common.collect.Multisets.ElementSet
        Multiset<E> multiset() {
            return ForwardingMultiset.this;
        }

        public StandardElementSet() {
        }

        @Override // com.google.common.collect.Multisets.ElementSet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return Multisets.elementIterator(multiset().entrySet().iterator());
        }
    }

    protected Iterator<E> standardIterator() {
        return Multisets.iteratorImpl(this);
    }

    protected int standardSize() {
        return Multisets.linearTimeSizeImpl(this);
    }

    protected boolean standardEquals(@CheckForNull Object obj) {
        return Multisets.equalsImpl(this, obj);
    }

    protected int standardHashCode() {
        return entrySet().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingCollection
    public String standardToString() {
        return entrySet().toString();
    }
}
