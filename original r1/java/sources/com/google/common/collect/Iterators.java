package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.primitives.Ints;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;
import javax.annotation.CheckForNull;
import kotlin.text.Typography;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Iterators {
    private Iterators() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> UnmodifiableIterator<T> emptyIterator() {
        return emptyListIterator();
    }

    static <T> UnmodifiableListIterator<T> emptyListIterator() {
        return (UnmodifiableListIterator<T>) ArrayItr.EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum EmptyModifiableIterator implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            CollectPreconditions.checkRemove(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Iterator<T> emptyModifiableIterator() {
        return EmptyModifiableIterator.INSTANCE;
    }

    public static <T> UnmodifiableIterator<T> unmodifiableIterator(final Iterator<? extends T> it) {
        Preconditions.checkNotNull(it);
        if (it instanceof UnmodifiableIterator) {
            return (UnmodifiableIterator) it;
        }
        return new UnmodifiableIterator<T>() { // from class: com.google.common.collect.Iterators.1
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public T next() {
                return (T) it.next();
            }
        };
    }

    @Deprecated
    public static <T> UnmodifiableIterator<T> unmodifiableIterator(UnmodifiableIterator<T> unmodifiableIterator) {
        return (UnmodifiableIterator) Preconditions.checkNotNull(unmodifiableIterator);
    }

    public static int size(Iterator<?> it) {
        long j = 0;
        while (it.hasNext()) {
            it.next();
            j++;
        }
        return Ints.saturatedCast(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0014, code lost:
    
        if (r2.hasNext() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001e, code lost:
    
        if (r3.equals(r2.next()) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0020, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0001, code lost:
    
        if (r3 == null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0007, code lost:
    
        if (r2.hasNext() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (r2.next() != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean contains(java.util.Iterator<?> r2, @javax.annotation.CheckForNull java.lang.Object r3) {
        /*
            r0 = 1
            if (r3 != 0) goto L10
        L3:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L21
            java.lang.Object r3 = r2.next()
            if (r3 != 0) goto L3
            return r0
        L10:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L21
            java.lang.Object r1 = r2.next()
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L10
            return r0
        L21:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Iterators.contains(java.util.Iterator, java.lang.Object):boolean");
    }

    public static boolean removeAll(Iterator<?> it, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static <T> boolean removeIf(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean retainAll(Iterator<?> it, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean elementsEqual(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equal(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static String toString(Iterator<?> it) {
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it.next());
            z = false;
        }
        return sb.append(']').toString();
    }

    @ParametricNullness
    public static <T> T getOnlyElement(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder append = new StringBuilder("expected one element but was: <").append(next);
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            append.append(", ").append(it.next());
        }
        if (it.hasNext()) {
            append.append(", ...");
        }
        append.append(Typography.greater);
        throw new IllegalArgumentException(append.toString());
    }

    @ParametricNullness
    public static <T> T getOnlyElement(Iterator<? extends T> it, @ParametricNullness T t) {
        return it.hasNext() ? (T) getOnlyElement(it) : t;
    }

    public static <T> T[] toArray(Iterator<? extends T> it, Class<T> cls) {
        return (T[]) Iterables.toArray(Lists.newArrayList(it), cls);
    }

    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(it);
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    public static int frequency(Iterator<?> it, @CheckForNull Object obj) {
        int i = 0;
        while (contains(it, obj)) {
            i++;
        }
        return i;
    }

    public static <T> Iterator<T> cycle(final Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new Iterator<T>() { // from class: com.google.common.collect.Iterators.2
            Iterator<T> iterator = Iterators.emptyModifiableIterator();

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.iterator.hasNext() || iterable.iterator().hasNext();
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public T next() {
                if (!this.iterator.hasNext()) {
                    Iterator<T> it = iterable.iterator();
                    this.iterator = it;
                    if (!it.hasNext()) {
                        throw new NoSuchElementException();
                    }
                }
                return this.iterator.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.iterator.remove();
            }
        };
    }

    @SafeVarargs
    public static <T> Iterator<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    private static <I extends Iterator<?>> Iterator<I> consumingForArray(final I... iArr) {
        return new UnmodifiableIterator<I>() { // from class: com.google.common.collect.Iterators.3
            int index = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < iArr.length;
            }

            /* JADX WARN: Incorrect return type in method signature: ()TI; */
            @Override // java.util.Iterator
            public Iterator next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                Iterator it = (Iterator) java.util.Objects.requireNonNull(iArr[this.index]);
                Iterator[] itArr = iArr;
                int i = this.index;
                itArr[i] = null;
                this.index = i + 1;
                return it;
            }
        };
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(it2);
        return concat(consumingForArray(it, it2));
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(it3);
        return concat(consumingForArray(it, it2, it3));
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(it3);
        Preconditions.checkNotNull(it4);
        return concat(consumingForArray(it, it2, it3, it4));
    }

    public static <T> Iterator<T> concat(Iterator<? extends T>... itArr) {
        return concatNoDefensiveCopy((Iterator[]) Arrays.copyOf(itArr, itArr.length));
    }

    public static <T> Iterator<T> concat(Iterator<? extends Iterator<? extends T>> it) {
        return new ConcatenatedIterator(it);
    }

    static <T> Iterator<T> concatNoDefensiveCopy(Iterator<? extends T>... itArr) {
        for (Iterator it : (Iterator[]) Preconditions.checkNotNull(itArr)) {
            Preconditions.checkNotNull(it);
        }
        return concat(consumingForArray(itArr));
    }

    public static <T> UnmodifiableIterator<List<T>> partition(Iterator<T> it, int i) {
        return partitionImpl(it, i, false);
    }

    public static <T> UnmodifiableIterator<List<T>> paddedPartition(Iterator<T> it, int i) {
        return partitionImpl(it, i, true);
    }

    private static <T> UnmodifiableIterator<List<T>> partitionImpl(final Iterator<T> it, final int i, final boolean z) {
        Preconditions.checkNotNull(it);
        Preconditions.checkArgument(i > 0);
        return new UnmodifiableIterator<List<T>>() { // from class: com.google.common.collect.Iterators.4
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            public List<T> next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                Object[] objArr = new Object[i];
                int i2 = 0;
                while (i2 < i && it.hasNext()) {
                    objArr[i2] = it.next();
                    i2++;
                }
                for (int i3 = i2; i3 < i; i3++) {
                    objArr[i3] = null;
                }
                List<T> unmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
                return (z || i2 == i) ? unmodifiableList : unmodifiableList.subList(0, i2);
            }
        };
    }

    public static <T> UnmodifiableIterator<T> filter(final Iterator<T> it, final Predicate<? super T> predicate) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(predicate);
        return new AbstractIterator<T>() { // from class: com.google.common.collect.Iterators.5
            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            protected T computeNext() {
                while (it.hasNext()) {
                    T t = (T) it.next();
                    if (predicate.apply(t)) {
                        return t;
                    }
                }
                return endOfData();
            }
        };
    }

    public static <T> UnmodifiableIterator<T> filter(Iterator<?> it, Class<T> cls) {
        return filter(it, Predicates.instanceOf(cls));
    }

    public static <T> boolean any(Iterator<T> it, Predicate<? super T> predicate) {
        return indexOf(it, predicate) != -1;
    }

    public static <T> boolean all(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        while (it.hasNext()) {
            if (!predicate.apply(it.next())) {
                return false;
            }
        }
        return true;
    }

    @ParametricNullness
    public static <T> T find(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(predicate);
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @CheckForNull
    public static <T> T find(Iterator<? extends T> it, Predicate<? super T> predicate, @CheckForNull T t) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(predicate);
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        return t;
    }

    public static <T> Optional<T> tryFind(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(predicate);
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                return Optional.of(next);
            }
        }
        return Optional.absent();
    }

    public static <T> int indexOf(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static <F, T> Iterator<T> transform(Iterator<F> it, final Function<? super F, ? extends T> function) {
        Preconditions.checkNotNull(function);
        return new TransformedIterator<F, T>(it) { // from class: com.google.common.collect.Iterators.6
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.TransformedIterator
            @ParametricNullness
            public T transform(@ParametricNullness F f) {
                return (T) function.apply(f);
            }
        };
    }

    @ParametricNullness
    public static <T> T get(Iterator<T> it, int i) {
        checkNonnegative(i);
        int advance = advance(it, i);
        if (!it.hasNext()) {
            throw new IndexOutOfBoundsException(new StringBuilder(91).append("position (").append(i).append(") must be less than the number of elements that remained (").append(advance).append(")").toString());
        }
        return it.next();
    }

    @ParametricNullness
    public static <T> T get(Iterator<? extends T> it, int i, @ParametricNullness T t) {
        checkNonnegative(i);
        advance(it, i);
        return (T) getNext(it, t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkNonnegative(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException(new StringBuilder(43).append("position (").append(i).append(") must not be negative").toString());
        }
    }

    @ParametricNullness
    public static <T> T getNext(Iterator<? extends T> it, @ParametricNullness T t) {
        return it.hasNext() ? it.next() : t;
    }

    @ParametricNullness
    public static <T> T getLast(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    @ParametricNullness
    public static <T> T getLast(Iterator<? extends T> it, @ParametricNullness T t) {
        return it.hasNext() ? (T) getLast(it) : t;
    }

    public static int advance(Iterator<?> it, int i) {
        Preconditions.checkNotNull(it);
        int i2 = 0;
        Preconditions.checkArgument(i >= 0, "numberToAdvance must be nonnegative");
        while (i2 < i && it.hasNext()) {
            it.next();
            i2++;
        }
        return i2;
    }

    public static <T> Iterator<T> limit(final Iterator<T> it, final int i) {
        Preconditions.checkNotNull(it);
        Preconditions.checkArgument(i >= 0, "limit is negative");
        return new Iterator<T>() { // from class: com.google.common.collect.Iterators.7
            private int count;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.count < i && it.hasNext();
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.count++;
                return (T) it.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                it.remove();
            }
        };
    }

    public static <T> Iterator<T> consumingIterator(final Iterator<T> it) {
        Preconditions.checkNotNull(it);
        return new UnmodifiableIterator<T>() { // from class: com.google.common.collect.Iterators.8
            public String toString() {
                return "Iterators.consumingIterator(...)";
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public T next() {
                T t = (T) it.next();
                it.remove();
                return t;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public static <T> T pollNext(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clear(Iterator<?> it) {
        Preconditions.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @SafeVarargs
    public static <T> UnmodifiableIterator<T> forArray(T... tArr) {
        return forArray(tArr, 0, tArr.length, 0);
    }

    static <T> UnmodifiableListIterator<T> forArray(T[] tArr, int i, int i2, int i3) {
        Preconditions.checkArgument(i2 >= 0);
        Preconditions.checkPositionIndexes(i, i + i2, tArr.length);
        Preconditions.checkPositionIndex(i3, i2);
        if (i2 == 0) {
            return emptyListIterator();
        }
        return new ArrayItr(tArr, i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ArrayItr<T> extends AbstractIndexedListIterator<T> {
        static final UnmodifiableListIterator<Object> EMPTY = new ArrayItr(new Object[0], 0, 0, 0);
        private final T[] array;
        private final int offset;

        ArrayItr(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.array = tArr;
            this.offset = i;
        }

        @Override // com.google.common.collect.AbstractIndexedListIterator
        @ParametricNullness
        protected T get(int i) {
            return this.array[this.offset + i];
        }
    }

    public static <T> UnmodifiableIterator<T> singletonIterator(@ParametricNullness final T t) {
        return new UnmodifiableIterator<T>() { // from class: com.google.common.collect.Iterators.9
            boolean done;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.done;
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public T next() {
                if (this.done) {
                    throw new NoSuchElementException();
                }
                this.done = true;
                return (T) t;
            }
        };
    }

    public static <T> UnmodifiableIterator<T> forEnumeration(final Enumeration<T> enumeration) {
        Preconditions.checkNotNull(enumeration);
        return new UnmodifiableIterator<T>() { // from class: com.google.common.collect.Iterators.10
            @Override // java.util.Iterator
            public boolean hasNext() {
                return enumeration.hasMoreElements();
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public T next() {
                return (T) enumeration.nextElement();
            }
        };
    }

    public static <T> Enumeration<T> asEnumeration(final Iterator<T> it) {
        Preconditions.checkNotNull(it);
        return new Enumeration<T>() { // from class: com.google.common.collect.Iterators.11
            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return it.hasNext();
            }

            @Override // java.util.Enumeration
            @ParametricNullness
            public T nextElement() {
                return (T) it.next();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class PeekingImpl<E> implements PeekingIterator<E> {
        private boolean hasPeeked;
        private final Iterator<? extends E> iterator;

        @CheckForNull
        private E peekedElement;

        public PeekingImpl(Iterator<? extends E> it) {
            this.iterator = (Iterator) Preconditions.checkNotNull(it);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasPeeked || this.iterator.hasNext();
        }

        @Override // com.google.common.collect.PeekingIterator, java.util.Iterator
        @ParametricNullness
        public E next() {
            if (!this.hasPeeked) {
                return this.iterator.next();
            }
            E e = (E) NullnessCasts.uncheckedCastNullableTToT(this.peekedElement);
            this.hasPeeked = false;
            this.peekedElement = null;
            return e;
        }

        @Override // com.google.common.collect.PeekingIterator, java.util.Iterator
        public void remove() {
            Preconditions.checkState(!this.hasPeeked, "Can't remove after you've peeked at next");
            this.iterator.remove();
        }

        @Override // com.google.common.collect.PeekingIterator
        @ParametricNullness
        public E peek() {
            if (!this.hasPeeked) {
                this.peekedElement = this.iterator.next();
                this.hasPeeked = true;
            }
            return (E) NullnessCasts.uncheckedCastNullableTToT(this.peekedElement);
        }
    }

    public static <T> PeekingIterator<T> peekingIterator(Iterator<? extends T> it) {
        if (it instanceof PeekingImpl) {
            return (PeekingImpl) it;
        }
        return new PeekingImpl(it);
    }

    @Deprecated
    public static <T> PeekingIterator<T> peekingIterator(PeekingIterator<T> peekingIterator) {
        return (PeekingIterator) Preconditions.checkNotNull(peekingIterator);
    }

    public static <T> UnmodifiableIterator<T> mergeSorted(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterators");
        Preconditions.checkNotNull(comparator, "comparator");
        return new MergingIterator(iterable, comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class MergingIterator<T> extends UnmodifiableIterator<T> {
        final Queue<PeekingIterator<T>> queue;

        public MergingIterator(Iterable<? extends Iterator<? extends T>> iterable, final Comparator<? super T> comparator) {
            this.queue = new PriorityQueue(2, new Comparator() { // from class: com.google.common.collect.Iterators$MergingIterator$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int compare;
                    compare = comparator.compare(((PeekingIterator) obj).peek(), ((PeekingIterator) obj2).peek());
                    return compare;
                }
            });
            for (Iterator<? extends T> it : iterable) {
                if (it.hasNext()) {
                    this.queue.add(Iterators.peekingIterator(it));
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.queue.isEmpty();
        }

        @Override // java.util.Iterator
        @ParametricNullness
        public T next() {
            PeekingIterator<T> remove = this.queue.remove();
            T next = remove.next();
            if (remove.hasNext()) {
                this.queue.add(remove);
            }
            return next;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ConcatenatedIterator<T> implements Iterator<T> {
        private Iterator<? extends T> iterator = Iterators.emptyIterator();

        @CheckForNull
        private Deque<Iterator<? extends Iterator<? extends T>>> metaIterators;

        @CheckForNull
        private Iterator<? extends T> toRemove;

        @CheckForNull
        private Iterator<? extends Iterator<? extends T>> topMetaIterator;

        ConcatenatedIterator(Iterator<? extends Iterator<? extends T>> it) {
            this.topMetaIterator = (Iterator) Preconditions.checkNotNull(it);
        }

        @CheckForNull
        private Iterator<? extends Iterator<? extends T>> getTopMetaIterator() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it = this.topMetaIterator;
                if (it != null && it.hasNext()) {
                    return this.topMetaIterator;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.metaIterators;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.topMetaIterator = this.metaIterators.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!((Iterator) Preconditions.checkNotNull(this.iterator)).hasNext()) {
                Iterator<? extends Iterator<? extends T>> topMetaIterator = getTopMetaIterator();
                this.topMetaIterator = topMetaIterator;
                if (topMetaIterator == null) {
                    return false;
                }
                Iterator<? extends T> next = topMetaIterator.next();
                this.iterator = next;
                if (next instanceof ConcatenatedIterator) {
                    ConcatenatedIterator concatenatedIterator = (ConcatenatedIterator) next;
                    this.iterator = concatenatedIterator.iterator;
                    if (this.metaIterators == null) {
                        this.metaIterators = new ArrayDeque();
                    }
                    this.metaIterators.addFirst(this.topMetaIterator);
                    if (concatenatedIterator.metaIterators != null) {
                        while (!concatenatedIterator.metaIterators.isEmpty()) {
                            this.metaIterators.addFirst(concatenatedIterator.metaIterators.removeLast());
                        }
                    }
                    this.topMetaIterator = concatenatedIterator.topMetaIterator;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        @ParametricNullness
        public T next() {
            if (hasNext()) {
                Iterator<? extends T> it = this.iterator;
                this.toRemove = it;
                return it.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            Iterator<? extends T> it = this.toRemove;
            if (it == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            it.remove();
            this.toRemove = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ListIterator<T> cast(Iterator<T> it) {
        return (ListIterator) it;
    }
}
