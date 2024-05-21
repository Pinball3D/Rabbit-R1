package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.math.IntMath;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Sets {
    private Sets() {
    }

    /* loaded from: classes3.dex */
    static abstract class ImprovedAbstractSet<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Sets.removeAllImpl(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) Preconditions.checkNotNull(collection));
        }
    }

    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(E e, E... eArr) {
        return ImmutableEnumSet.asImmutable(EnumSet.of((Enum) e, (Enum[]) eArr));
    }

    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(Iterable<E> iterable) {
        if (iterable instanceof ImmutableEnumSet) {
            return (ImmutableEnumSet) iterable;
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return ImmutableSet.of();
            }
            return ImmutableEnumSet.asImmutable(EnumSet.copyOf(collection));
        }
        Iterator<E> it = iterable.iterator();
        if (it.hasNext()) {
            EnumSet of = EnumSet.of((Enum) it.next());
            Iterators.addAll(of, it);
            return ImmutableEnumSet.asImmutable(of);
        }
        return ImmutableSet.of();
    }

    public static <E extends Enum<E>> EnumSet<E> newEnumSet(Iterable<E> iterable, Class<E> cls) {
        EnumSet<E> noneOf = EnumSet.noneOf(cls);
        Iterables.addAll(noneOf, iterable);
        return noneOf;
    }

    public static <E> HashSet<E> newHashSet() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> newHashSet(E... eArr) {
        HashSet<E> newHashSetWithExpectedSize = newHashSetWithExpectedSize(eArr.length);
        Collections.addAll(newHashSetWithExpectedSize, eArr);
        return newHashSetWithExpectedSize;
    }

    public static <E> HashSet<E> newHashSet(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new HashSet<>((Collection) iterable);
        }
        return newHashSet(iterable.iterator());
    }

    public static <E> HashSet<E> newHashSet(Iterator<? extends E> it) {
        HashSet<E> newHashSet = newHashSet();
        Iterators.addAll(newHashSet, it);
        return newHashSet;
    }

    public static <E> HashSet<E> newHashSetWithExpectedSize(int i) {
        return new HashSet<>(Maps.capacity(i));
    }

    public static <E> Set<E> newConcurrentHashSet() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static <E> Set<E> newConcurrentHashSet(Iterable<? extends E> iterable) {
        Set<E> newConcurrentHashSet = newConcurrentHashSet();
        Iterables.addAll(newConcurrentHashSet, iterable);
        return newConcurrentHashSet;
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet() {
        return new LinkedHashSet<>();
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedHashSet<>((Collection) iterable);
        }
        LinkedHashSet<E> newLinkedHashSet = newLinkedHashSet();
        Iterables.addAll(newLinkedHashSet, iterable);
        return newLinkedHashSet;
    }

    public static <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int i) {
        return new LinkedHashSet<>(Maps.capacity(i));
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet() {
        return new TreeSet<>();
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet(Iterable<? extends E> iterable) {
        TreeSet<E> newTreeSet = newTreeSet();
        Iterables.addAll(newTreeSet, iterable);
        return newTreeSet;
    }

    public static <E> TreeSet<E> newTreeSet(Comparator<? super E> comparator) {
        return new TreeSet<>((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <E> Set<E> newIdentityHashSet() {
        return Collections.newSetFromMap(Maps.newIdentityHashMap());
    }

    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet() {
        return new CopyOnWriteArraySet<>();
    }

    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet(Iterable<? extends E> iterable) {
        Collection newArrayList;
        if (iterable instanceof Collection) {
            newArrayList = (Collection) iterable;
        } else {
            newArrayList = Lists.newArrayList(iterable);
        }
        return new CopyOnWriteArraySet<>(newArrayList);
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection) {
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        Preconditions.checkArgument(!collection.isEmpty(), "collection is empty; use the other version of this method");
        return makeComplementByHand(collection, collection.iterator().next().getDeclaringClass());
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection, Class<E> cls) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        return makeComplementByHand(collection, cls);
    }

    private static <E extends Enum<E>> EnumSet<E> makeComplementByHand(Collection<E> collection, Class<E> cls) {
        EnumSet<E> allOf = EnumSet.allOf(cls);
        allOf.removeAll(collection);
        return allOf;
    }

    @Deprecated
    public static <E> Set<E> newSetFromMap(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    /* loaded from: classes3.dex */
    public static abstract class SetView<E> extends AbstractSet<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract UnmodifiableIterator<E> iterator();

        private SetView() {
        }

        public ImmutableSet<E> immutableCopy() {
            return ImmutableSet.copyOf((Collection) this);
        }

        public <S extends Set<E>> S copyInto(S s) {
            s.addAll(this);
            return s;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean add(@ParametricNullness E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }
    }

    public static <E> SetView<E> union(final Set<? extends E> set, final Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new SetView<E>() { // from class: com.google.common.collect.Sets.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int size = set.size();
                Iterator<E> it = set2.iterator();
                while (it.hasNext()) {
                    if (!set.contains(it.next())) {
                        size++;
                    }
                }
                return size;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return set.isEmpty() && set2.isEmpty();
            }

            @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<E> iterator() {
                return new AbstractIterator<E>() { // from class: com.google.common.collect.Sets.1.1
                    final Iterator<? extends E> itr1;
                    final Iterator<? extends E> itr2;

                    {
                        this.itr1 = set.iterator();
                        this.itr2 = set2.iterator();
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    protected E computeNext() {
                        if (this.itr1.hasNext()) {
                            return this.itr1.next();
                        }
                        while (this.itr2.hasNext()) {
                            E next = this.itr2.next();
                            if (!set.contains(next)) {
                                return next;
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return set.contains(obj) || set2.contains(obj);
            }

            @Override // com.google.common.collect.Sets.SetView
            public <S extends Set<E>> S copyInto(S s) {
                s.addAll(set);
                s.addAll(set2);
                return s;
            }

            @Override // com.google.common.collect.Sets.SetView
            public ImmutableSet<E> immutableCopy() {
                return new ImmutableSet.Builder().addAll((Iterable) set).addAll((Iterable) set2).build();
            }
        };
    }

    public static <E> SetView<E> intersection(final Set<E> set, final Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new SetView<E>() { // from class: com.google.common.collect.Sets.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<E> iterator() {
                return new AbstractIterator<E>() { // from class: com.google.common.collect.Sets.2.1
                    final Iterator<E> itr;

                    {
                        this.itr = set.iterator();
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    protected E computeNext() {
                        while (this.itr.hasNext()) {
                            E next = this.itr.next();
                            if (set2.contains(next)) {
                                return next;
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator<E> it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (set2.contains(it.next())) {
                        i++;
                    }
                }
                return i;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return Collections.disjoint(set2, set);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return set.contains(obj) && set2.contains(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean containsAll(Collection<?> collection) {
                return set.containsAll(collection) && set2.containsAll(collection);
            }
        };
    }

    public static <E> SetView<E> difference(final Set<E> set, final Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new SetView<E>() { // from class: com.google.common.collect.Sets.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<E> iterator() {
                return new AbstractIterator<E>() { // from class: com.google.common.collect.Sets.3.1
                    final Iterator<E> itr;

                    {
                        this.itr = set.iterator();
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    protected E computeNext() {
                        while (this.itr.hasNext()) {
                            E next = this.itr.next();
                            if (!set2.contains(next)) {
                                return next;
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator<E> it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (!set2.contains(it.next())) {
                        i++;
                    }
                }
                return i;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return set2.containsAll(set);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return set.contains(obj) && !set2.contains(obj);
            }
        };
    }

    public static <E> SetView<E> symmetricDifference(final Set<? extends E> set, final Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new SetView<E>() { // from class: com.google.common.collect.Sets.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<E> iterator() {
                final Iterator<E> it = set.iterator();
                final Iterator<E> it2 = set2.iterator();
                return new AbstractIterator<E>() { // from class: com.google.common.collect.Sets.4.1
                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    public E computeNext() {
                        while (it.hasNext()) {
                            E e = (E) it.next();
                            if (!set2.contains(e)) {
                                return e;
                            }
                        }
                        while (it2.hasNext()) {
                            E e2 = (E) it2.next();
                            if (!set.contains(e2)) {
                                return e2;
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator<E> it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (!set2.contains(it.next())) {
                        i++;
                    }
                }
                Iterator<E> it2 = set2.iterator();
                while (it2.hasNext()) {
                    if (!set.contains(it2.next())) {
                        i++;
                    }
                }
                return i;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return set.equals(set2);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return set2.contains(obj) ^ set.contains(obj);
            }
        };
    }

    public static <E> Set<E> filter(Set<E> set, Predicate<? super E> predicate) {
        if (set instanceof SortedSet) {
            return filter((SortedSet) set, (Predicate) predicate);
        }
        if (set instanceof FilteredSet) {
            FilteredSet filteredSet = (FilteredSet) set;
            return new FilteredSet((Set) filteredSet.unfiltered, Predicates.and(filteredSet.predicate, predicate));
        }
        return new FilteredSet((Set) Preconditions.checkNotNull(set), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> filter(SortedSet<E> sortedSet, Predicate<? super E> predicate) {
        if (sortedSet instanceof FilteredSet) {
            FilteredSet filteredSet = (FilteredSet) sortedSet;
            return new FilteredSortedSet((SortedSet) filteredSet.unfiltered, Predicates.and(filteredSet.predicate, predicate));
        }
        return new FilteredSortedSet((SortedSet) Preconditions.checkNotNull(sortedSet), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> NavigableSet<E> filter(NavigableSet<E> navigableSet, Predicate<? super E> predicate) {
        if (navigableSet instanceof FilteredSet) {
            FilteredSet filteredSet = (FilteredSet) navigableSet;
            return new FilteredNavigableSet((NavigableSet) filteredSet.unfiltered, Predicates.and(filteredSet.predicate, predicate));
        }
        return new FilteredNavigableSet((NavigableSet) Preconditions.checkNotNull(navigableSet), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class FilteredSet<E> extends Collections2.FilteredCollection<E> implements Set<E> {
        FilteredSet(Set<E> set, Predicate<? super E> predicate) {
            super(set, predicate);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return Sets.equalsImpl(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.hashCodeImpl(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class FilteredSortedSet<E> extends FilteredSet<E> implements SortedSet<E> {
        FilteredSortedSet(SortedSet<E> sortedSet, Predicate<? super E> predicate) {
            super(sortedSet, predicate);
        }

        @Override // java.util.SortedSet
        @CheckForNull
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.unfiltered).comparator();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(@ParametricNullness E e, @ParametricNullness E e2) {
            return new FilteredSortedSet(((SortedSet) this.unfiltered).subSet(e, e2), this.predicate);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(@ParametricNullness E e) {
            return new FilteredSortedSet(((SortedSet) this.unfiltered).headSet(e), this.predicate);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(@ParametricNullness E e) {
            return new FilteredSortedSet(((SortedSet) this.unfiltered).tailSet(e), this.predicate);
        }

        @Override // java.util.SortedSet
        @ParametricNullness
        public E first() {
            return (E) Iterators.find(this.unfiltered.iterator(), this.predicate);
        }

        @ParametricNullness
        public E last() {
            SortedSet sortedSet = (SortedSet) this.unfiltered;
            while (true) {
                E e = (Object) sortedSet.last();
                if (this.predicate.apply(e)) {
                    return e;
                }
                sortedSet = sortedSet.headSet(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class FilteredNavigableSet<E> extends FilteredSortedSet<E> implements NavigableSet<E> {
        FilteredNavigableSet(NavigableSet<E> navigableSet, Predicate<? super E> predicate) {
            super(navigableSet, predicate);
        }

        NavigableSet<E> unfiltered() {
            return (NavigableSet) this.unfiltered;
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E lower(@ParametricNullness E e) {
            return (E) Iterators.find(unfiltered().headSet(e, false).descendingIterator(), this.predicate, null);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E floor(@ParametricNullness E e) {
            return (E) Iterators.find(unfiltered().headSet(e, true).descendingIterator(), this.predicate, null);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E ceiling(@ParametricNullness E e) {
            return (E) Iterables.find(unfiltered().tailSet(e, true), this.predicate, null);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E higher(@ParametricNullness E e) {
            return (E) Iterables.find(unfiltered().tailSet(e, false), this.predicate, null);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollFirst() {
            return (E) Iterables.removeFirstMatching(unfiltered(), this.predicate);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollLast() {
            return (E) Iterables.removeFirstMatching(unfiltered().descendingSet(), this.predicate);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return Sets.filter((NavigableSet) unfiltered().descendingSet(), (Predicate) this.predicate);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.filter(unfiltered().descendingIterator(), this.predicate);
        }

        @Override // com.google.common.collect.Sets.FilteredSortedSet, java.util.SortedSet
        @ParametricNullness
        public E last() {
            return (E) Iterators.find(unfiltered().descendingIterator(), this.predicate);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(@ParametricNullness E e, boolean z, @ParametricNullness E e2, boolean z2) {
            return Sets.filter((NavigableSet) unfiltered().subSet(e, z, e2, z2), (Predicate) this.predicate);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(@ParametricNullness E e, boolean z) {
            return Sets.filter((NavigableSet) unfiltered().headSet(e, z), (Predicate) this.predicate);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(@ParametricNullness E e, boolean z) {
            return Sets.filter((NavigableSet) unfiltered().tailSet(e, z), (Predicate) this.predicate);
        }
    }

    public static <B> Set<List<B>> cartesianProduct(List<? extends Set<? extends B>> list) {
        return CartesianSet.create(list);
    }

    @SafeVarargs
    public static <B> Set<List<B>> cartesianProduct(Set<? extends B>... setArr) {
        return cartesianProduct(Arrays.asList(setArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class CartesianSet<E> extends ForwardingCollection<List<E>> implements Set<List<E>> {
        private final transient ImmutableList<ImmutableSet<E>> axes;
        private final transient CartesianList<E> delegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<List<E>> delegate() {
            return this.delegate;
        }

        static <E> Set<List<E>> create(List<? extends Set<? extends E>> list) {
            ImmutableList.Builder builder = new ImmutableList.Builder(list.size());
            Iterator<? extends Set<? extends E>> it = list.iterator();
            while (it.hasNext()) {
                ImmutableSet copyOf = ImmutableSet.copyOf((Collection) it.next());
                if (copyOf.isEmpty()) {
                    return ImmutableSet.of();
                }
                builder.add((ImmutableList.Builder) copyOf);
            }
            final ImmutableList<E> build = builder.build();
            return new CartesianSet(build, new CartesianList(new ImmutableList<List<E>>() { // from class: com.google.common.collect.Sets.CartesianSet.1
                @Override // com.google.common.collect.ImmutableCollection
                boolean isPartialView() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return ImmutableList.this.size();
                }

                @Override // java.util.List
                public List<E> get(int i) {
                    return ((ImmutableSet) ImmutableList.this.get(i)).asList();
                }
            }));
        }

        private CartesianSet(ImmutableList<ImmutableSet<E>> immutableList, CartesianList<E> cartesianList) {
            this.axes = immutableList;
            this.delegate = cartesianList;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (list.size() != this.axes.size()) {
                return false;
            }
            Iterator<E> it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!this.axes.get(i).contains(it.next())) {
                    return false;
                }
                i++;
            }
            return true;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof CartesianSet) {
                return this.axes.equals(((CartesianSet) obj).axes);
            }
            return super.equals(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int i = 1;
            int size = size() - 1;
            for (int i2 = 0; i2 < this.axes.size(); i2++) {
                size = ~(~(size * 31));
            }
            UnmodifiableIterator<ImmutableSet<E>> it = this.axes.iterator();
            while (it.hasNext()) {
                ImmutableSet<E> next = it.next();
                i = ~(~((i * 31) + ((size() / next.size()) * next.hashCode())));
            }
            return ~(~(i + size));
        }
    }

    public static <E> Set<Set<E>> powerSet(Set<E> set) {
        return new PowerSet(set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class SubSet<E> extends AbstractSet<E> {
        private final ImmutableMap<E, Integer> inputSet;
        private final int mask;

        SubSet(ImmutableMap<E, Integer> immutableMap, int i) {
            this.inputSet = immutableMap;
            this.mask = i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new UnmodifiableIterator<E>() { // from class: com.google.common.collect.Sets.SubSet.1
                final ImmutableList<E> elements;
                int remainingSetBits;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.remainingSetBits != 0;
                }

                {
                    this.elements = SubSet.this.inputSet.keySet().asList();
                    this.remainingSetBits = SubSet.this.mask;
                }

                @Override // java.util.Iterator
                public E next() {
                    int numberOfTrailingZeros = Integer.numberOfTrailingZeros(this.remainingSetBits);
                    if (numberOfTrailingZeros == 32) {
                        throw new NoSuchElementException();
                    }
                    this.remainingSetBits &= ~(1 << numberOfTrailingZeros);
                    return this.elements.get(numberOfTrailingZeros);
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Integer.bitCount(this.mask);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            Integer num = this.inputSet.get(obj);
            return (num == null || (this.mask & (1 << num.intValue())) == 0) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class PowerSet<E> extends AbstractSet<Set<E>> {
        final ImmutableMap<E, Integer> inputSet;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return false;
        }

        PowerSet(Set<E> set) {
            Preconditions.checkArgument(set.size() <= 30, "Too many elements to create power set: %s > 30", set.size());
            this.inputSet = Maps.indexMap(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return 1 << this.inputSet.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new AbstractIndexedListIterator<Set<E>>(size()) { // from class: com.google.common.collect.Sets.PowerSet.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIndexedListIterator
                public Set<E> get(int i) {
                    return new SubSet(PowerSet.this.inputSet, i);
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            return this.inputSet.keySet().containsAll((Set) obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof PowerSet) {
                return this.inputSet.keySet().equals(((PowerSet) obj).inputSet.keySet());
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.inputSet.keySet().hashCode() << (this.inputSet.size() - 1);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.inputSet);
            return new StringBuilder(String.valueOf(valueOf).length() + 10).append("powerSet(").append(valueOf).append(")").toString();
        }
    }

    public static <E> Set<Set<E>> combinations(Set<E> set, int i) {
        ImmutableMap indexMap = Maps.indexMap(set);
        CollectPreconditions.checkNonnegative(i, "size");
        Preconditions.checkArgument(i <= indexMap.size(), "size (%s) must be <= set.size() (%s)", i, indexMap.size());
        if (i == 0) {
            return ImmutableSet.of(ImmutableSet.of());
        }
        if (i == indexMap.size()) {
            return ImmutableSet.of(indexMap.keySet());
        }
        return new AnonymousClass5(i, indexMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Sets$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass5<E> extends AbstractSet<Set<E>> {
        final /* synthetic */ ImmutableMap val$index;
        final /* synthetic */ int val$size;

        AnonymousClass5(int i, ImmutableMap immutableMap) {
            this.val$size = i;
            this.val$index = immutableMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            return set.size() == this.val$size && this.val$index.keySet().containsAll(set);
        }

        /* renamed from: com.google.common.collect.Sets$5$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Set<E>> {
            final BitSet bits;

            AnonymousClass1() {
                this.bits = new BitSet(AnonymousClass5.this.val$index.size());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public Set<E> computeNext() {
                if (this.bits.isEmpty()) {
                    this.bits.set(0, AnonymousClass5.this.val$size);
                } else {
                    int nextSetBit = this.bits.nextSetBit(0);
                    int nextClearBit = this.bits.nextClearBit(nextSetBit);
                    if (nextClearBit == AnonymousClass5.this.val$index.size()) {
                        return endOfData();
                    }
                    int i = (nextClearBit - nextSetBit) - 1;
                    this.bits.set(0, i);
                    this.bits.clear(i, nextClearBit);
                    this.bits.set(nextClearBit);
                }
                final BitSet bitSet = (BitSet) this.bits.clone();
                return new AbstractSet<E>() { // from class: com.google.common.collect.Sets.5.1.1
                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                    public boolean contains(@CheckForNull Object obj) {
                        Integer num = (Integer) AnonymousClass5.this.val$index.get(obj);
                        return num != null && bitSet.get(num.intValue());
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                    public Iterator<E> iterator() {
                        return new AbstractIterator<E>() { // from class: com.google.common.collect.Sets.5.1.1.1
                            int i = -1;

                            @Override // com.google.common.collect.AbstractIterator
                            @CheckForNull
                            protected E computeNext() {
                                int nextSetBit2 = bitSet.nextSetBit(this.i + 1);
                                this.i = nextSetBit2;
                                if (nextSetBit2 == -1) {
                                    return endOfData();
                                }
                                return AnonymousClass5.this.val$index.keySet().asList().get(this.i);
                            }
                        };
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                    public int size() {
                        return AnonymousClass5.this.val$size;
                    }
                };
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new AnonymousClass1();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return IntMath.binomial(this.val$index.size(), this.val$size);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.val$index.keySet());
            return new StringBuilder(String.valueOf(valueOf).length() + 32).append("Sets.combinations(").append(valueOf).append(", ").append(this.val$size).append(")").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int hashCodeImpl(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean equalsImpl(Set<?> set, @CheckForNull Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <E> NavigableSet<E> unmodifiableNavigableSet(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof UnmodifiableNavigableSet)) ? navigableSet : new UnmodifiableNavigableSet(navigableSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class UnmodifiableNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;
        private final NavigableSet<E> delegate;

        @CheckForNull
        private transient UnmodifiableNavigableSet<E> descendingSet;
        private final SortedSet<E> unmodifiableDelegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public SortedSet<E> delegate() {
            return this.unmodifiableDelegate;
        }

        UnmodifiableNavigableSet(NavigableSet<E> navigableSet) {
            this.delegate = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.unmodifiableDelegate = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E lower(@ParametricNullness E e) {
            return this.delegate.lower(e);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E floor(@ParametricNullness E e) {
            return this.delegate.floor(e);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E ceiling(@ParametricNullness E e) {
            return this.delegate.ceiling(e);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E higher(@ParametricNullness E e) {
            return this.delegate.higher(e);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            UnmodifiableNavigableSet<E> unmodifiableNavigableSet = this.descendingSet;
            if (unmodifiableNavigableSet != null) {
                return unmodifiableNavigableSet;
            }
            UnmodifiableNavigableSet<E> unmodifiableNavigableSet2 = new UnmodifiableNavigableSet<>(this.delegate.descendingSet());
            this.descendingSet = unmodifiableNavigableSet2;
            unmodifiableNavigableSet2.descendingSet = this;
            return unmodifiableNavigableSet2;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.unmodifiableIterator(this.delegate.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(@ParametricNullness E e, boolean z, @ParametricNullness E e2, boolean z2) {
            return Sets.unmodifiableNavigableSet(this.delegate.subSet(e, z, e2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(@ParametricNullness E e, boolean z) {
            return Sets.unmodifiableNavigableSet(this.delegate.headSet(e, z));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(@ParametricNullness E e, boolean z) {
            return Sets.unmodifiableNavigableSet(this.delegate.tailSet(e, z));
        }
    }

    public static <E> NavigableSet<E> synchronizedNavigableSet(NavigableSet<E> navigableSet) {
        return Synchronized.navigableSet(navigableSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean removeAllImpl(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean removeAllImpl(Set<?> set, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return Iterators.removeAll(set.iterator(), collection);
        }
        return removeAllImpl(set, collection.iterator());
    }

    /* loaded from: classes3.dex */
    static class DescendingSet<E> extends ForwardingNavigableSet<E> {
        private final NavigableSet<E> forward;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public NavigableSet<E> delegate() {
            return this.forward;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return this.forward;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public DescendingSet(NavigableSet<E> navigableSet) {
            this.forward = navigableSet;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E lower(@ParametricNullness E e) {
            return this.forward.higher(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E floor(@ParametricNullness E e) {
            return this.forward.ceiling(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E ceiling(@ParametricNullness E e) {
            return this.forward.floor(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E higher(@ParametricNullness E e) {
            return this.forward.lower(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E pollFirst() {
            return this.forward.pollLast();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E pollLast() {
            return this.forward.pollFirst();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return this.forward.iterator();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> subSet(@ParametricNullness E e, boolean z, @ParametricNullness E e2, boolean z2) {
            return this.forward.subSet(e2, z2, e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> subSet(@ParametricNullness E e, @ParametricNullness E e2) {
            return standardSubSet(e, e2);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> headSet(@ParametricNullness E e, boolean z) {
            return this.forward.tailSet(e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> headSet(@ParametricNullness E e) {
            return standardHeadSet(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> tailSet(@ParametricNullness E e, boolean z) {
            return this.forward.headSet(e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> tailSet(@ParametricNullness E e) {
            return standardTailSet(e);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator = this.forward.comparator();
            if (comparator == null) {
                return Ordering.natural().reverse();
            }
            return reverse(comparator);
        }

        private static <T> Ordering<T> reverse(Comparator<T> comparator) {
            return Ordering.from(comparator).reverse();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        @ParametricNullness
        public E first() {
            return this.forward.last();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        @ParametricNullness
        public E last() {
            return this.forward.first();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return this.forward.descendingIterator();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }
    }

    public static <K extends Comparable<? super K>> NavigableSet<K> subSet(NavigableSet<K> navigableSet, Range<K> range) {
        if (navigableSet.comparator() != null && navigableSet.comparator() != Ordering.natural() && range.hasLowerBound() && range.hasUpperBound()) {
            Preconditions.checkArgument(navigableSet.comparator().compare(range.lowerEndpoint(), range.upperEndpoint()) <= 0, "set is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.hasLowerBound() && range.hasUpperBound()) {
            return navigableSet.subSet(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED, range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        }
        if (range.hasLowerBound()) {
            return navigableSet.tailSet(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED);
        }
        if (range.hasUpperBound()) {
            return navigableSet.headSet(range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        }
        return (NavigableSet) Preconditions.checkNotNull(navigableSet);
    }
}
