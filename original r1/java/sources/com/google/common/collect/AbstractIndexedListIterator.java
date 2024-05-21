package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.NoSuchElementException;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
abstract class AbstractIndexedListIterator<E> extends UnmodifiableListIterator<E> {
    private int position;
    private final int size;

    @ParametricNullness
    protected abstract E get(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.position < this.size;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.position > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.position;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.position - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractIndexedListIterator(int i) {
        this(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractIndexedListIterator(int i, int i2) {
        Preconditions.checkPositionIndex(i2, i);
        this.size = i;
        this.position = i2;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    @ParametricNullness
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.position;
        this.position = i + 1;
        return get(i);
    }

    @Override // java.util.ListIterator
    @ParametricNullness
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.position - 1;
        this.position = i;
        return get(i);
    }
}
