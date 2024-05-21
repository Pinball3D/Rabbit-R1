package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class RegularImmutableList<E> extends ImmutableList<E> {
    static final ImmutableList<Object> EMPTY = new RegularImmutableList(new Object[0], 0);
    final transient Object[] array;
    private final transient int size;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.array;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayEnd() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RegularImmutableList(Object[] objArr, int i) {
        this.array = objArr;
        this.size = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.array, 0, objArr, i, this.size);
        return i + this.size;
    }

    @Override // java.util.List
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.size);
        return (E) Objects.requireNonNull(this.array[i]);
    }
}
