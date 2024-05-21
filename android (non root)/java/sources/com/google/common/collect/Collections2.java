package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.IntMath;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Collections2 {
    private Collections2() {
    }

    public static <E> Collection<E> filter(Collection<E> collection, Predicate<? super E> predicate) {
        if (collection instanceof FilteredCollection) {
            return ((FilteredCollection) collection).createCombined(predicate);
        }
        return new FilteredCollection((Collection) Preconditions.checkNotNull(collection), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean safeContains(Collection<?> collection, @CheckForNull Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean safeRemove(Collection<?> collection, @CheckForNull Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class FilteredCollection<E> extends AbstractCollection<E> {
        final Predicate<? super E> predicate;
        final Collection<E> unfiltered;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FilteredCollection(Collection<E> collection, Predicate<? super E> predicate) {
            this.unfiltered = collection;
            this.predicate = predicate;
        }

        FilteredCollection<E> createCombined(Predicate<? super E> predicate) {
            return new FilteredCollection<>(this.unfiltered, Predicates.and(this.predicate, predicate));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(@ParametricNullness E e) {
            Preconditions.checkArgument(this.predicate.apply(e));
            return this.unfiltered.add(e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                Preconditions.checkArgument(this.predicate.apply(it.next()));
            }
            return this.unfiltered.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Iterables.removeIf(this.unfiltered, this.predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            if (Collections2.safeContains(this.unfiltered, obj)) {
                return this.predicate.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return Collections2.containsAllImpl(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !Iterables.any(this.unfiltered, this.predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.filter(this.unfiltered.iterator(), this.predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@CheckForNull Object obj) {
            return contains(obj) && this.unfiltered.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.unfiltered.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.predicate.apply(next) && collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.unfiltered.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.predicate.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator<E> it = this.unfiltered.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.predicate.apply(it.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    public static <F, T> Collection<T> transform(Collection<F> collection, Function<? super F, T> function) {
        return new TransformedCollection(collection, function);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class TransformedCollection<F, T> extends AbstractCollection<T> {
        final Collection<F> fromCollection;
        final Function<? super F, ? extends T> function;

        TransformedCollection(Collection<F> collection, Function<? super F, ? extends T> function) {
            this.fromCollection = (Collection) Preconditions.checkNotNull(collection);
            this.function = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.fromCollection.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.fromCollection.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.fromCollection.iterator(), this.function);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.fromCollection.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean containsAllImpl(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toStringImpl(Collection<?> collection) {
        StringBuilder append = newStringBuilderForCollection(collection.size()).append('[');
        boolean z = true;
        for (Object obj : collection) {
            if (!z) {
                append.append(", ");
            }
            if (obj == collection) {
                append.append("(this Collection)");
            } else {
                append.append(obj);
            }
            z = false;
        }
        return append.append(']').toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder newStringBuilderForCollection(int i) {
        CollectPreconditions.checkNonnegative(i, "size");
        return new StringBuilder((int) Math.min(i * 8, 1073741824L));
    }

    public static <E extends Comparable<? super E>> Collection<List<E>> orderedPermutations(Iterable<E> iterable) {
        return orderedPermutations(iterable, Ordering.natural());
    }

    public static <E> Collection<List<E>> orderedPermutations(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new OrderedPermutationCollection(iterable, comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class OrderedPermutationCollection<E> extends AbstractCollection<List<E>> {
        final Comparator<? super E> comparator;
        final ImmutableList<E> inputList;
        final int size;

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.size;
        }

        OrderedPermutationCollection(Iterable<E> iterable, Comparator<? super E> comparator) {
            ImmutableList<E> sortedCopyOf = ImmutableList.sortedCopyOf(comparator, iterable);
            this.inputList = sortedCopyOf;
            this.comparator = comparator;
            this.size = calculateSize(sortedCopyOf, comparator);
        }

        private static <E> int calculateSize(List<E> list, Comparator<? super E> comparator) {
            int i = 1;
            int i2 = 1;
            int i3 = 1;
            while (i < list.size()) {
                if (comparator.compare(list.get(i - 1), list.get(i)) < 0) {
                    i2 = IntMath.saturatedMultiply(i2, IntMath.binomial(i, i3));
                    if (i2 == Integer.MAX_VALUE) {
                        return Integer.MAX_VALUE;
                    }
                    i3 = 0;
                }
                i++;
                i3++;
            }
            return IntMath.saturatedMultiply(i2, IntMath.binomial(i, i3));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new OrderedPermutationIterator(this.inputList, this.comparator);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.isPermutation(this.inputList, (List) obj);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.inputList);
            return new StringBuilder(String.valueOf(valueOf).length() + 30).append("orderedPermutationCollection(").append(valueOf).append(")").toString();
        }
    }

    /* loaded from: classes3.dex */
    private static final class OrderedPermutationIterator<E> extends AbstractIterator<List<E>> {
        final Comparator<? super E> comparator;

        @CheckForNull
        List<E> nextPermutation;

        OrderedPermutationIterator(List<E> list, Comparator<? super E> comparator) {
            this.nextPermutation = Lists.newArrayList(list);
            this.comparator = comparator;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public List<E> computeNext() {
            List<E> list = this.nextPermutation;
            if (list == null) {
                return endOfData();
            }
            ImmutableList copyOf = ImmutableList.copyOf((Collection) list);
            calculateNextPermutation();
            return copyOf;
        }

        void calculateNextPermutation() {
            int findNextJ = findNextJ();
            if (findNextJ == -1) {
                this.nextPermutation = null;
                return;
            }
            Objects.requireNonNull(this.nextPermutation);
            Collections.swap(this.nextPermutation, findNextJ, findNextL(findNextJ));
            Collections.reverse(this.nextPermutation.subList(findNextJ + 1, this.nextPermutation.size()));
        }

        int findNextJ() {
            Objects.requireNonNull(this.nextPermutation);
            for (int size = this.nextPermutation.size() - 2; size >= 0; size--) {
                if (this.comparator.compare(this.nextPermutation.get(size), this.nextPermutation.get(size + 1)) < 0) {
                    return size;
                }
            }
            return -1;
        }

        int findNextL(int i) {
            Objects.requireNonNull(this.nextPermutation);
            E e = this.nextPermutation.get(i);
            for (int size = this.nextPermutation.size() - 1; size > i; size--) {
                if (this.comparator.compare(e, this.nextPermutation.get(size)) < 0) {
                    return size;
                }
            }
            throw new AssertionError("this statement should be unreachable");
        }
    }

    public static <E> Collection<List<E>> permutations(Collection<E> collection) {
        return new PermutationCollection(ImmutableList.copyOf((Collection) collection));
    }

    /* loaded from: classes3.dex */
    private static final class PermutationCollection<E> extends AbstractCollection<List<E>> {
        final ImmutableList<E> inputList;

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        PermutationCollection(ImmutableList<E> immutableList) {
            this.inputList = immutableList;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return IntMath.factorial(this.inputList.size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new PermutationIterator(this.inputList);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.isPermutation(this.inputList, (List) obj);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.inputList);
            return new StringBuilder(String.valueOf(valueOf).length() + 14).append("permutations(").append(valueOf).append(")").toString();
        }
    }

    /* loaded from: classes3.dex */
    private static class PermutationIterator<E> extends AbstractIterator<List<E>> {
        final int[] c;
        int j;
        final List<E> list;
        final int[] o;

        PermutationIterator(List<E> list) {
            this.list = new ArrayList(list);
            int size = list.size();
            int[] iArr = new int[size];
            this.c = iArr;
            int[] iArr2 = new int[size];
            this.o = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 1);
            this.j = Integer.MAX_VALUE;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public List<E> computeNext() {
            if (this.j <= 0) {
                return endOfData();
            }
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.list);
            calculateNextPermutation();
            return copyOf;
        }

        void calculateNextPermutation() {
            int size = this.list.size() - 1;
            this.j = size;
            if (size == -1) {
                return;
            }
            int i = 0;
            while (true) {
                int[] iArr = this.c;
                int i2 = this.j;
                int i3 = iArr[i2];
                int i4 = this.o[i2] + i3;
                if (i4 < 0) {
                    switchDirection();
                } else if (i4 != i2 + 1) {
                    Collections.swap(this.list, (i2 - i3) + i, (i2 - i4) + i);
                    this.c[this.j] = i4;
                    return;
                } else {
                    if (i2 == 0) {
                        return;
                    }
                    i++;
                    switchDirection();
                }
            }
        }

        void switchDirection() {
            int[] iArr = this.o;
            int i = this.j;
            iArr[i] = -iArr[i];
            this.j = i - 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPermutation(List<?> list, List<?> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        ObjectCountHashMap counts = counts(list);
        ObjectCountHashMap counts2 = counts(list2);
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (counts.getValue(i) != counts2.get(counts.getKey(i))) {
                return false;
            }
        }
        return true;
    }

    private static <E> ObjectCountHashMap<E> counts(Collection<E> collection) {
        ObjectCountHashMap<E> objectCountHashMap = new ObjectCountHashMap<>();
        for (E e : collection) {
            objectCountHashMap.put(e, objectCountHashMap.get(e) + 1);
        }
        return objectCountHashMap;
    }
}
