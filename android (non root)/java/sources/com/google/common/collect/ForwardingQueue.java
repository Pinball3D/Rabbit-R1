package com.google.common.collect;

import java.util.NoSuchElementException;
import java.util.Queue;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingQueue<E> extends ForwardingCollection<E> implements Queue<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract Queue<E> delegate();

    public boolean offer(@ParametricNullness E e) {
        return delegate().offer(e);
    }

    @Override // java.util.Queue
    @CheckForNull
    public E poll() {
        return delegate().poll();
    }

    @Override // java.util.Queue
    @ParametricNullness
    public E remove() {
        return delegate().remove();
    }

    @Override // java.util.Queue
    @CheckForNull
    public E peek() {
        return delegate().peek();
    }

    @Override // java.util.Queue
    @ParametricNullness
    public E element() {
        return delegate().element();
    }

    protected boolean standardOffer(@ParametricNullness E e) {
        try {
            return add(e);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    @CheckForNull
    protected E standardPeek() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    @CheckForNull
    protected E standardPoll() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }
}
