package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class Ordering<T> implements Comparator<T> {
    static final int LEFT_IS_GREATER = 1;
    static final int RIGHT_IS_GREATER = -1;

    @Override // java.util.Comparator
    public abstract int compare(@ParametricNullness T t, @ParametricNullness T t2);

    public static <C extends Comparable> Ordering<C> natural() {
        return NaturalOrdering.INSTANCE;
    }

    public static <T> Ordering<T> from(Comparator<T> comparator) {
        if (comparator instanceof Ordering) {
            return (Ordering) comparator;
        }
        return new ComparatorOrdering(comparator);
    }

    @Deprecated
    public static <T> Ordering<T> from(Ordering<T> ordering) {
        return (Ordering) Preconditions.checkNotNull(ordering);
    }

    public static <T> Ordering<T> explicit(List<T> list) {
        return new ExplicitOrdering(list);
    }

    public static <T> Ordering<T> explicit(T t, T... tArr) {
        return explicit(Lists.asList(t, tArr));
    }

    public static Ordering<Object> allEqual() {
        return AllEqualOrdering.INSTANCE;
    }

    public static Ordering<Object> usingToString() {
        return UsingToStringOrdering.INSTANCE;
    }

    public static Ordering<Object> arbitrary() {
        return ArbitraryOrderingHolder.ARBITRARY_ORDERING;
    }

    /* loaded from: classes3.dex */
    private static class ArbitraryOrderingHolder {
        static final Ordering<Object> ARBITRARY_ORDERING = new ArbitraryOrdering();

        private ArbitraryOrderingHolder() {
        }
    }

    /* loaded from: classes3.dex */
    static class ArbitraryOrdering extends Ordering<Object> {
        private final AtomicInteger counter = new AtomicInteger(0);
        private final ConcurrentMap<Object, Integer> uids = Platform.tryWeakKeys(new MapMaker()).makeMap();

        public String toString() {
            return "Ordering.arbitrary()";
        }

        ArbitraryOrdering() {
        }

        private Integer getUid(Object obj) {
            Integer num = this.uids.get(obj);
            if (num != null) {
                return num;
            }
            Integer valueOf = Integer.valueOf(this.counter.getAndIncrement());
            Integer putIfAbsent = this.uids.putIfAbsent(obj, valueOf);
            return putIfAbsent != null ? putIfAbsent : valueOf;
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(@CheckForNull Object obj, @CheckForNull Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int identityHashCode = identityHashCode(obj);
            int identityHashCode2 = identityHashCode(obj2);
            if (identityHashCode != identityHashCode2) {
                return identityHashCode < identityHashCode2 ? -1 : 1;
            }
            int compareTo = getUid(obj).compareTo(getUid(obj2));
            if (compareTo != 0) {
                return compareTo;
            }
            throw new AssertionError();
        }

        int identityHashCode(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    public <S extends T> Ordering<S> reverse() {
        return new ReverseOrdering(this);
    }

    public <S extends T> Ordering<S> nullsFirst() {
        return new NullsFirstOrdering(this);
    }

    public <S extends T> Ordering<S> nullsLast() {
        return new NullsLastOrdering(this);
    }

    public <F> Ordering<F> onResultOf(Function<F, ? extends T> function) {
        return new ByFunctionOrdering(function, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T2 extends T> Ordering<Map.Entry<T2, ?>> onKeys() {
        return (Ordering<Map.Entry<T2, ?>>) onResultOf(Maps.keyFunction());
    }

    public <U extends T> Ordering<U> compound(Comparator<? super U> comparator) {
        return new CompoundOrdering(this, (Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <T> Ordering<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new CompoundOrdering(iterable);
    }

    public <S extends T> Ordering<Iterable<S>> lexicographical() {
        return new LexicographicalOrdering(this);
    }

    @ParametricNullness
    public <E extends T> E min(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) min(next, it.next());
        }
        return next;
    }

    @ParametricNullness
    public <E extends T> E min(Iterable<E> iterable) {
        return (E) min(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ParametricNullness
    public <E extends T> E min(@ParametricNullness E e, @ParametricNullness E e2) {
        return compare(e, e2) <= 0 ? e : e2;
    }

    @ParametricNullness
    public <E extends T> E min(@ParametricNullness E e, @ParametricNullness E e2, @ParametricNullness E e3, E... eArr) {
        E e4 = (E) min(min(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) min(e4, e5);
        }
        return e4;
    }

    @ParametricNullness
    public <E extends T> E max(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) max(next, it.next());
        }
        return next;
    }

    @ParametricNullness
    public <E extends T> E max(Iterable<E> iterable) {
        return (E) max(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ParametricNullness
    public <E extends T> E max(@ParametricNullness E e, @ParametricNullness E e2) {
        return compare(e, e2) >= 0 ? e : e2;
    }

    @ParametricNullness
    public <E extends T> E max(@ParametricNullness E e, @ParametricNullness E e2, @ParametricNullness E e3, E... eArr) {
        E e4 = (E) max(max(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) max(e4, e5);
        }
        return e4;
    }

    public <E extends T> List<E> leastOf(Iterable<E> iterable, int i) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= i * 2) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                if (array.length > i) {
                    array = Arrays.copyOf(array, i);
                }
                return Collections.unmodifiableList(Arrays.asList(array));
            }
        }
        return leastOf(iterable.iterator(), i);
    }

    public <E extends T> List<E> leastOf(Iterator<E> it, int i) {
        Preconditions.checkNotNull(it);
        CollectPreconditions.checkNonnegative(i, "k");
        if (i == 0 || !it.hasNext()) {
            return Collections.emptyList();
        }
        if (i >= 1073741823) {
            ArrayList newArrayList = Lists.newArrayList(it);
            Collections.sort(newArrayList, this);
            if (newArrayList.size() > i) {
                newArrayList.subList(i, newArrayList.size()).clear();
            }
            newArrayList.trimToSize();
            return Collections.unmodifiableList(newArrayList);
        }
        TopKSelector least = TopKSelector.least(i, this);
        least.offerAll(it);
        return least.topK();
    }

    public <E extends T> List<E> greatestOf(Iterable<E> iterable, int i) {
        return reverse().leastOf(iterable, i);
    }

    public <E extends T> List<E> greatestOf(Iterator<E> it, int i) {
        return reverse().leastOf(it, i);
    }

    public <E extends T> List<E> sortedCopy(Iterable<E> iterable) {
        Object[] array = Iterables.toArray(iterable);
        Arrays.sort(array, this);
        return Lists.newArrayList(Arrays.asList(array));
    }

    public <E extends T> ImmutableList<E> immutableSortedCopy(Iterable<E> iterable) {
        return ImmutableList.sortedCopyOf(this, iterable);
    }

    public boolean isOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public boolean isStrictlyOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    @Deprecated
    public int binarySearch(List<? extends T> list, @ParametricNullness T t) {
        return Collections.binarySearch(list, t, this);
    }

    /* loaded from: classes3.dex */
    static class IncomparableValueException extends ClassCastException {
        private static final long serialVersionUID = 0;
        final Object value;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public IncomparableValueException(java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.String r0 = java.lang.String.valueOf(r4)
                java.lang.String r1 = java.lang.String.valueOf(r0)
                int r1 = r1.length()
                int r1 = r1 + 22
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>(r1)
                java.lang.String r1 = "Cannot compare value: "
                java.lang.StringBuilder r1 = r2.append(r1)
                java.lang.StringBuilder r0 = r1.append(r0)
                java.lang.String r0 = r0.toString()
                r3.<init>(r0)
                r3.value = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Ordering.IncomparableValueException.<init>(java.lang.Object):void");
        }
    }
}
