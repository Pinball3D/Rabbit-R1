package com.google.common.collect;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Iterator;

@DoNotMock("Use Iterators.peekingIterator")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface PeekingIterator<E> extends Iterator<E> {
    @Override // java.util.Iterator
    @ParametricNullness
    E next();

    @ParametricNullness
    E peek();

    @Override // java.util.Iterator
    void remove();
}
