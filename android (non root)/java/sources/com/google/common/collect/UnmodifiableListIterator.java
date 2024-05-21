package com.google.common.collect;

import java.util.ListIterator;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class UnmodifiableListIterator<E> extends UnmodifiableIterator<E> implements ListIterator<E> {
    @Override // java.util.ListIterator
    @Deprecated
    public final void add(@ParametricNullness E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(@ParametricNullness E e) {
        throw new UnsupportedOperationException();
    }
}
