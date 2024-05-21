package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Iterator;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
abstract class TransformedIterator<F, T> implements Iterator<T> {
    final Iterator<? extends F> backingIterator;

    /* JADX INFO: Access modifiers changed from: package-private */
    @ParametricNullness
    public abstract T transform(@ParametricNullness F f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformedIterator(Iterator<? extends F> it) {
        this.backingIterator = (Iterator) Preconditions.checkNotNull(it);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.backingIterator.hasNext();
    }

    @Override // java.util.Iterator
    @ParametricNullness
    public final T next() {
        return transform(this.backingIterator.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.backingIterator.remove();
    }
}
