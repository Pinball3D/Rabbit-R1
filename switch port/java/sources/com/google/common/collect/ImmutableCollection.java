package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@DoNotMock("Use ImmutableList.of or another implementation")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] EMPTY_ARRAY = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(@CheckForNull Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public Object[] internalArray() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
    public abstract UnmodifiableIterator<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(EMPTY_ARRAY);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        Preconditions.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] internalArray = internalArray();
            if (internalArray != null) {
                return (T[]) Platform.copy(internalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr = (T[]) ObjectArrays.newArray(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> asList() {
        return isEmpty() ? ImmutableList.of() : ImmutableList.asImmutableList(toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int copyIntoArray(Object[] objArr, int i) {
        UnmodifiableIterator<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }

    @DoNotMock
    /* loaded from: classes3.dex */
    public static abstract class Builder<E> {
        static final int DEFAULT_INITIAL_CAPACITY = 4;

        public abstract Builder<E> add(E e);

        public abstract ImmutableCollection<E> build();

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int expandedCapacity(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int i3 = i + (i >> 1) + 1;
            if (i3 < i2) {
                i3 = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (i3 < 0) {
                return Integer.MAX_VALUE;
            }
            return i3;
        }

        public Builder<E> add(E... eArr) {
            for (E e : eArr) {
                add((Builder<E>) e);
            }
            return this;
        }

        public Builder<E> addAll(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                add((Builder<E>) it.next());
            }
            return this;
        }

        public Builder<E> addAll(Iterator<? extends E> it) {
            while (it.hasNext()) {
                add((Builder<E>) it.next());
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class ArrayBasedBuilder<E> extends Builder<E> {
        Object[] contents;
        boolean forceCopy;
        int size;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.Builder
        public /* bridge */ /* synthetic */ Builder add(Object obj) {
            return add((ArrayBasedBuilder<E>) obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ArrayBasedBuilder(int i) {
            CollectPreconditions.checkNonnegative(i, "initialCapacity");
            this.contents = new Object[i];
            this.size = 0;
        }

        private void getReadyToExpandTo(int i) {
            Object[] objArr = this.contents;
            if (objArr.length < i) {
                this.contents = Arrays.copyOf(objArr, expandedCapacity(objArr.length, i));
                this.forceCopy = false;
            } else if (this.forceCopy) {
                this.contents = (Object[]) objArr.clone();
                this.forceCopy = false;
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ArrayBasedBuilder<E> add(E e) {
            Preconditions.checkNotNull(e);
            getReadyToExpandTo(this.size + 1);
            Object[] objArr = this.contents;
            int i = this.size;
            this.size = i + 1;
            objArr[i] = e;
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E... eArr) {
            addAll(eArr, eArr.length);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void addAll(Object[] objArr, int i) {
            ObjectArrays.checkElementsNotNull(objArr, i);
            getReadyToExpandTo(this.size + i);
            System.arraycopy(objArr, 0, this.contents, this.size, i);
            this.size += i;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                getReadyToExpandTo(this.size + collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.size = ((ImmutableCollection) collection).copyIntoArray(this.contents, this.size);
                    return this;
                }
            }
            super.addAll(iterable);
            return this;
        }
    }
}
