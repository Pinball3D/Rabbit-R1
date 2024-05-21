package com.google.common.collect;

import java.util.Deque;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingDeque<E> extends ForwardingQueue<E> implements Deque<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract Deque<E> delegate();

    @Override // java.util.Deque
    public void addFirst(@ParametricNullness E e) {
        delegate().addFirst(e);
    }

    @Override // java.util.Deque
    public void addLast(@ParametricNullness E e) {
        delegate().addLast(e);
    }

    @Override // java.util.Deque
    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    @Override // java.util.Deque
    @ParametricNullness
    public E getFirst() {
        return delegate().getFirst();
    }

    @Override // java.util.Deque
    @ParametricNullness
    public E getLast() {
        return delegate().getLast();
    }

    @Override // java.util.Deque
    public boolean offerFirst(@ParametricNullness E e) {
        return delegate().offerFirst(e);
    }

    @Override // java.util.Deque
    public boolean offerLast(@ParametricNullness E e) {
        return delegate().offerLast(e);
    }

    @Override // java.util.Deque
    @CheckForNull
    public E peekFirst() {
        return delegate().peekFirst();
    }

    @Override // java.util.Deque
    @CheckForNull
    public E peekLast() {
        return delegate().peekLast();
    }

    @Override // java.util.Deque
    @CheckForNull
    public E pollFirst() {
        return delegate().pollFirst();
    }

    @Override // java.util.Deque
    @CheckForNull
    public E pollLast() {
        return delegate().pollLast();
    }

    @Override // java.util.Deque
    @ParametricNullness
    public E pop() {
        return delegate().pop();
    }

    @Override // java.util.Deque
    public void push(@ParametricNullness E e) {
        delegate().push(e);
    }

    @Override // java.util.Deque
    @ParametricNullness
    public E removeFirst() {
        return delegate().removeFirst();
    }

    @Override // java.util.Deque
    @ParametricNullness
    public E removeLast() {
        return delegate().removeLast();
    }

    @Override // java.util.Deque
    public boolean removeFirstOccurrence(@CheckForNull Object obj) {
        return delegate().removeFirstOccurrence(obj);
    }

    @Override // java.util.Deque
    public boolean removeLastOccurrence(@CheckForNull Object obj) {
        return delegate().removeLastOccurrence(obj);
    }
}
