package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class AbstractMultiset<E> extends AbstractCollection<E> implements Multiset<E> {

    @CheckForNull
    @LazyInit
    private transient Set<E> elementSet;

    @CheckForNull
    @LazyInit
    private transient Set<Multiset.Entry<E>> entrySet;

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract void clear();

    abstract int distinctElements();

    abstract Iterator<E> elementIterator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Iterator<Multiset.Entry<E>> entryIterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean contains(@CheckForNull Object obj) {
        return count(obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public final boolean add(@ParametricNullness E e) {
        add(e, 1);
        return true;
    }

    public int add(@ParametricNullness E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public final boolean remove(@CheckForNull Object obj) {
        return remove(obj, 1) > 0;
    }

    public int remove(@CheckForNull Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    public int setCount(@ParametricNullness E e, int i) {
        return Multisets.setCountImpl(this, e, i);
    }

    public boolean setCount(@ParametricNullness E e, int i, int i2) {
        return Multisets.setCountImpl(this, e, i, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        return Multisets.addAllImpl(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public final boolean removeAll(Collection<?> collection) {
        return Multisets.removeAllImpl(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public final boolean retainAll(Collection<?> collection) {
        return Multisets.retainAllImpl(this, collection);
    }

    @Override // com.google.common.collect.Multiset
    public Set<E> elementSet() {
        Set<E> set = this.elementSet;
        if (set != null) {
            return set;
        }
        Set<E> createElementSet = createElementSet();
        this.elementSet = createElementSet;
        return createElementSet;
    }

    Set<E> createElementSet() {
        return new ElementSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class ElementSet extends Multisets.ElementSet<E> {
        @Override // com.google.common.collect.Multisets.ElementSet
        Multiset<E> multiset() {
            return AbstractMultiset.this;
        }

        ElementSet() {
        }

        @Override // com.google.common.collect.Multisets.ElementSet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return AbstractMultiset.this.elementIterator();
        }
    }

    @Override // com.google.common.collect.Multiset
    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        Set<Multiset.Entry<E>> createEntrySet = createEntrySet();
        this.entrySet = createEntrySet;
        return createEntrySet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class EntrySet extends Multisets.EntrySet<E> {
        @Override // com.google.common.collect.Multisets.EntrySet
        Multiset<E> multiset() {
            return AbstractMultiset.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Multiset.Entry<E>> iterator() {
            return AbstractMultiset.this.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractMultiset.this.distinctElements();
        }
    }

    Set<Multiset.Entry<E>> createEntrySet() {
        return new EntrySet();
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final boolean equals(@CheckForNull Object obj) {
        return Multisets.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public final String toString() {
        return entrySet().toString();
    }
}
