package com.google.common.collect;

import com.google.common.collect.Sets;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract NavigableSet<E> delegate();

    @Override // java.util.NavigableSet
    @CheckForNull
    public E lower(@ParametricNullness E e) {
        return delegate().lower(e);
    }

    @CheckForNull
    protected E standardLower(@ParametricNullness E e) {
        return (E) Iterators.getNext(headSet(e, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public E floor(@ParametricNullness E e) {
        return delegate().floor(e);
    }

    @CheckForNull
    protected E standardFloor(@ParametricNullness E e) {
        return (E) Iterators.getNext(headSet(e, true).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public E ceiling(@ParametricNullness E e) {
        return delegate().ceiling(e);
    }

    @CheckForNull
    protected E standardCeiling(@ParametricNullness E e) {
        return (E) Iterators.getNext(tailSet(e, true).iterator(), null);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public E higher(@ParametricNullness E e) {
        return delegate().higher(e);
    }

    @CheckForNull
    protected E standardHigher(@ParametricNullness E e) {
        return (E) Iterators.getNext(tailSet(e, false).iterator(), null);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public E pollFirst() {
        return delegate().pollFirst();
    }

    @CheckForNull
    protected E standardPollFirst() {
        return (E) Iterators.pollNext(iterator());
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public E pollLast() {
        return delegate().pollLast();
    }

    @CheckForNull
    protected E standardPollLast() {
        return (E) Iterators.pollNext(descendingIterator());
    }

    @ParametricNullness
    protected E standardFirst() {
        return iterator().next();
    }

    @ParametricNullness
    protected E standardLast() {
        return descendingIterator().next();
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> descendingSet() {
        return delegate().descendingSet();
    }

    /* loaded from: classes3.dex */
    protected class StandardDescendingSet extends Sets.DescendingSet<E> {
        public StandardDescendingSet(ForwardingNavigableSet forwardingNavigableSet) {
            super(forwardingNavigableSet);
        }
    }

    @Override // java.util.NavigableSet
    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> subSet(@ParametricNullness E e, boolean z, @ParametricNullness E e2, boolean z2) {
        return delegate().subSet(e, z, e2, z2);
    }

    protected NavigableSet<E> standardSubSet(@ParametricNullness E e, boolean z, @ParametricNullness E e2, boolean z2) {
        return tailSet(e, z).headSet(e2, z2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingSortedSet
    public SortedSet<E> standardSubSet(@ParametricNullness E e, @ParametricNullness E e2) {
        return subSet(e, true, e2, false);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> headSet(@ParametricNullness E e, boolean z) {
        return delegate().headSet(e, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SortedSet<E> standardHeadSet(@ParametricNullness E e) {
        return headSet(e, false);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> tailSet(@ParametricNullness E e, boolean z) {
        return delegate().tailSet(e, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SortedSet<E> standardTailSet(@ParametricNullness E e) {
        return tailSet(e, true);
    }
}
