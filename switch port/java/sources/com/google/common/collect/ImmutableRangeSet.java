package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.SortedLists;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class ImmutableRangeSet<C extends Comparable> extends AbstractRangeSet<C> implements Serializable {

    @CheckForNull
    @LazyInit
    private transient ImmutableRangeSet<C> complement;
    private final transient ImmutableList<Range<C>> ranges;
    private static final ImmutableRangeSet<Comparable<?>> EMPTY = new ImmutableRangeSet<>(ImmutableList.of());
    private static final ImmutableRangeSet<Comparable<?>> ALL = new ImmutableRangeSet<>(ImmutableList.of(Range.all()));

    static <C extends Comparable> ImmutableRangeSet<C> all() {
        return ALL;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of() {
        return EMPTY;
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(RangeSet rangeSet) {
        return super.enclosesAll(rangeSet);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return of();
        }
        if (range.equals(Range.all())) {
            return all();
        }
        return new ImmutableRangeSet<>(ImmutableList.of(range));
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(RangeSet<C> rangeSet) {
        Preconditions.checkNotNull(rangeSet);
        if (rangeSet.isEmpty()) {
            return of();
        }
        if (rangeSet.encloses(Range.all())) {
            return all();
        }
        if (rangeSet instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) rangeSet;
            if (!immutableRangeSet.isPartialView()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) rangeSet.asRanges()));
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> copyOf(Iterable<Range<C>> iterable) {
        return new Builder().addAll(iterable).build();
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> unionOf(Iterable<Range<C>> iterable) {
        return copyOf(TreeRangeSet.create(iterable));
    }

    ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.ranges = immutableList;
    }

    private ImmutableRangeSet(ImmutableList<Range<C>> immutableList, ImmutableRangeSet<C> immutableRangeSet) {
        this.ranges = immutableList;
        this.complement = immutableRangeSet;
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public boolean intersects(Range<C> range) {
        int binarySearch = SortedLists.binarySearch(this.ranges, Range.lowerBoundFn(), range.lowerBound, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        if (binarySearch < this.ranges.size() && this.ranges.get(binarySearch).isConnected(range) && !this.ranges.get(binarySearch).intersection(range).isEmpty()) {
            return true;
        }
        if (binarySearch > 0) {
            int i = binarySearch - 1;
            if (this.ranges.get(i).isConnected(range) && !this.ranges.get(i).intersection(range).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public boolean encloses(Range<C> range) {
        int binarySearch = SortedLists.binarySearch(this.ranges, Range.lowerBoundFn(), range.lowerBound, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        return binarySearch != -1 && this.ranges.get(binarySearch).encloses(range);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @CheckForNull
    public Range<C> rangeContaining(C c) {
        int binarySearch = SortedLists.binarySearch(this.ranges, Range.lowerBoundFn(), Cut.belowValue(c), Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (binarySearch == -1) {
            return null;
        }
        Range<C> range = this.ranges.get(binarySearch);
        if (range.contains(c)) {
            return range;
        }
        return null;
    }

    @Override // com.google.common.collect.RangeSet
    public Range<C> span() {
        if (this.ranges.isEmpty()) {
            throw new NoSuchElementException();
        }
        return Range.create(this.ranges.get(0).lowerBound, this.ranges.get(r2.size() - 1).upperBound);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public boolean isEmpty() {
        return this.ranges.isEmpty();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @Deprecated
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @Deprecated
    public void addAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @Deprecated
    public void addAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @Deprecated
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @Deprecated
    public void removeAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @Deprecated
    public void removeAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableSet<Range<C>> asRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableSet.of();
        }
        return new RegularImmutableSortedSet(this.ranges, Range.rangeLexOrdering());
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableSet<Range<C>> asDescendingSetOfRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableSet.of();
        }
        return new RegularImmutableSortedSet(this.ranges.reverse(), Range.rangeLexOrdering().reverse());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class ComplementRanges extends ImmutableList<Range<C>> {
        private final boolean positiveBoundedAbove;
        private final boolean positiveBoundedBelow;
        private final int size;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        ComplementRanges() {
            boolean hasLowerBound = ((Range) ImmutableRangeSet.this.ranges.get(0)).hasLowerBound();
            this.positiveBoundedBelow = hasLowerBound;
            boolean hasUpperBound = ((Range) Iterables.getLast(ImmutableRangeSet.this.ranges)).hasUpperBound();
            this.positiveBoundedAbove = hasUpperBound;
            int size = ImmutableRangeSet.this.ranges.size();
            size = hasLowerBound ? size : size - 1;
            this.size = hasUpperBound ? size + 1 : size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public Range<C> get(int i) {
            Cut<C> cut;
            Cut<C> cut2;
            Preconditions.checkElementIndex(i, this.size);
            if (!this.positiveBoundedBelow) {
                cut = ((Range) ImmutableRangeSet.this.ranges.get(i)).upperBound;
            } else {
                cut = i == 0 ? Cut.belowAll() : ((Range) ImmutableRangeSet.this.ranges.get(i - 1)).upperBound;
            }
            if (!this.positiveBoundedAbove || i != this.size - 1) {
                cut2 = ((Range) ImmutableRangeSet.this.ranges.get(i + (!this.positiveBoundedBelow ? 1 : 0))).lowerBound;
            } else {
                cut2 = Cut.aboveAll();
            }
            return Range.create(cut, cut2);
        }
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableRangeSet<C> complement() {
        ImmutableRangeSet<C> immutableRangeSet = this.complement;
        if (immutableRangeSet != null) {
            return immutableRangeSet;
        }
        if (this.ranges.isEmpty()) {
            ImmutableRangeSet<C> all = all();
            this.complement = all;
            return all;
        }
        if (this.ranges.size() == 1 && this.ranges.get(0).equals(Range.all())) {
            ImmutableRangeSet<C> of = of();
            this.complement = of;
            return of;
        }
        ImmutableRangeSet<C> immutableRangeSet2 = new ImmutableRangeSet<>(new ComplementRanges(), this);
        this.complement = immutableRangeSet2;
        return immutableRangeSet2;
    }

    public ImmutableRangeSet<C> union(RangeSet<C> rangeSet) {
        return unionOf(Iterables.concat(asRanges(), rangeSet.asRanges()));
    }

    public ImmutableRangeSet<C> intersection(RangeSet<C> rangeSet) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(rangeSet.complement());
        return copyOf(create);
    }

    public ImmutableRangeSet<C> difference(RangeSet<C> rangeSet) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(rangeSet);
        return copyOf(create);
    }

    private ImmutableList<Range<C>> intersectRanges(final Range<C> range) {
        int size;
        if (this.ranges.isEmpty() || range.isEmpty()) {
            return ImmutableList.of();
        }
        if (range.encloses(span())) {
            return this.ranges;
        }
        final int binarySearch = range.hasLowerBound() ? SortedLists.binarySearch(this.ranges, (Function<? super E, Cut<C>>) Range.upperBoundFn(), range.lowerBound, SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER) : 0;
        if (range.hasUpperBound()) {
            size = SortedLists.binarySearch(this.ranges, (Function<? super E, Cut<C>>) Range.lowerBoundFn(), range.upperBound, SortedLists.KeyPresentBehavior.FIRST_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        } else {
            size = this.ranges.size();
        }
        final int i = size - binarySearch;
        if (i == 0) {
            return ImmutableList.of();
        }
        return (ImmutableList<Range<C>>) new ImmutableList<Range<C>>() { // from class: com.google.common.collect.ImmutableRangeSet.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableCollection
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return i;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.List
            public Range<C> get(int i2) {
                Preconditions.checkElementIndex(i2, i);
                return (i2 == 0 || i2 == i + (-1)) ? ((Range) ImmutableRangeSet.this.ranges.get(i2 + binarySearch)).intersection(range) : (Range) ImmutableRangeSet.this.ranges.get(i2 + binarySearch);
            }
        };
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableRangeSet<C> subRangeSet(Range<C> range) {
        if (!isEmpty()) {
            Range<C> span = span();
            if (range.encloses(span)) {
                return this;
            }
            if (range.isConnected(span)) {
                return new ImmutableRangeSet<>(intersectRanges(range));
            }
        }
        return of();
    }

    public ImmutableSortedSet<C> asSet(DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(discreteDomain);
        if (isEmpty()) {
            return ImmutableSortedSet.of();
        }
        Range<C> canonical = span().canonical(discreteDomain);
        if (!canonical.hasLowerBound()) {
            throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
        }
        if (!canonical.hasUpperBound()) {
            try {
                discreteDomain.maxValue();
            } catch (NoSuchElementException unused) {
                throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
            }
        }
        return new AsSet(discreteDomain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class AsSet extends ImmutableSortedSet<C> {
        private final DiscreteDomain<C> domain;

        @CheckForNull
        private transient Integer size;

        AsSet(DiscreteDomain<C> discreteDomain) {
            super(Ordering.natural());
            this.domain = discreteDomain;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Integer num = this.size;
            if (num == null) {
                UnmodifiableIterator it = ImmutableRangeSet.this.ranges.iterator();
                long j = 0;
                while (it.hasNext()) {
                    j += ContiguousSet.create((Range) it.next(), this.domain).size();
                    if (j >= 2147483647L) {
                        break;
                    }
                }
                num = Integer.valueOf(Ints.saturatedCast(j));
                this.size = num;
            }
            return num.intValue();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
        public UnmodifiableIterator<C> iterator() {
            return new AbstractIterator<C>() { // from class: com.google.common.collect.ImmutableRangeSet.AsSet.1
                Iterator<C> elemItr = Iterators.emptyIterator();
                final Iterator<Range<C>> rangeItr;

                {
                    this.rangeItr = ImmutableRangeSet.this.ranges.iterator();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public C computeNext() {
                    while (!this.elemItr.hasNext()) {
                        if (this.rangeItr.hasNext()) {
                            this.elemItr = ContiguousSet.create(this.rangeItr.next(), AsSet.this.domain).iterator();
                        } else {
                            return (C) endOfData();
                        }
                    }
                    return this.elemItr.next();
                }
            };
        }

        @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
        public UnmodifiableIterator<C> descendingIterator() {
            return new AbstractIterator<C>() { // from class: com.google.common.collect.ImmutableRangeSet.AsSet.2
                Iterator<C> elemItr = Iterators.emptyIterator();
                final Iterator<Range<C>> rangeItr;

                {
                    this.rangeItr = ImmutableRangeSet.this.ranges.reverse().iterator();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public C computeNext() {
                    while (!this.elemItr.hasNext()) {
                        if (this.rangeItr.hasNext()) {
                            this.elemItr = ContiguousSet.create(this.rangeItr.next(), AsSet.this.domain).descendingIterator();
                        } else {
                            return (C) endOfData();
                        }
                    }
                    return this.elemItr.next();
                }
            };
        }

        ImmutableSortedSet<C> subSet(Range<C> range) {
            return ImmutableRangeSet.this.subRangeSet((Range) range).asSet(this.domain);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        public ImmutableSortedSet<C> headSetImpl(C c, boolean z) {
            return subSet(Range.upTo(c, BoundType.forBoolean(z)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        public ImmutableSortedSet<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
            if (!z && !z2 && Range.compareOrThrow(c, c2) == 0) {
                return ImmutableSortedSet.of();
            }
            return subSet(Range.range(c, BoundType.forBoolean(z), c2, BoundType.forBoolean(z2)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        public ImmutableSortedSet<C> tailSetImpl(C c, boolean z) {
            return subSet(Range.downTo(c, BoundType.forBoolean(z)));
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ImmutableRangeSet.this.contains((Comparable) obj);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public int indexOf(@CheckForNull Object obj) {
            if (!contains(obj)) {
                return -1;
            }
            Comparable comparable = (Comparable) Objects.requireNonNull(obj);
            UnmodifiableIterator it = ImmutableRangeSet.this.ranges.iterator();
            long j = 0;
            while (it.hasNext()) {
                if (((Range) it.next()).contains(comparable)) {
                    return Ints.saturatedCast(j + ContiguousSet.create(r3, this.domain).indexOf(comparable));
                }
                j += ContiguousSet.create(r3, this.domain).size();
            }
            throw new AssertionError("impossible");
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        ImmutableSortedSet<C> createDescendingSet() {
            return new DescendingImmutableSortedSet(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return ImmutableRangeSet.this.ranges.isPartialView();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return ImmutableRangeSet.this.ranges.toString();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return new AsSetSerializedForm(ImmutableRangeSet.this.ranges, this.domain);
        }
    }

    /* loaded from: classes3.dex */
    private static class AsSetSerializedForm<C extends Comparable> implements Serializable {
        private final DiscreteDomain<C> domain;
        private final ImmutableList<Range<C>> ranges;

        AsSetSerializedForm(ImmutableList<Range<C>> immutableList, DiscreteDomain<C> discreteDomain) {
            this.ranges = immutableList;
            this.domain = discreteDomain;
        }

        Object readResolve() {
            return new ImmutableRangeSet(this.ranges).asSet(this.domain);
        }
    }

    boolean isPartialView() {
        return this.ranges.isPartialView();
    }

    public static <C extends Comparable<?>> Builder<C> builder() {
        return new Builder<>();
    }

    /* loaded from: classes3.dex */
    public static class Builder<C extends Comparable<?>> {
        private final List<Range<C>> ranges = Lists.newArrayList();

        public Builder<C> add(Range<C> range) {
            Preconditions.checkArgument(!range.isEmpty(), "range must not be empty, but was %s", range);
            this.ranges.add(range);
            return this;
        }

        public Builder<C> addAll(RangeSet<C> rangeSet) {
            return addAll(rangeSet.asRanges());
        }

        public Builder<C> addAll(Iterable<Range<C>> iterable) {
            Iterator<Range<C>> it = iterable.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
            return this;
        }

        Builder<C> combine(Builder<C> builder) {
            addAll(builder.ranges);
            return this;
        }

        public ImmutableRangeSet<C> build() {
            ImmutableList.Builder builder = new ImmutableList.Builder(this.ranges.size());
            Collections.sort(this.ranges, Range.rangeLexOrdering());
            PeekingIterator peekingIterator = Iterators.peekingIterator(this.ranges.iterator());
            while (peekingIterator.hasNext()) {
                Range range = (Range) peekingIterator.next();
                while (peekingIterator.hasNext()) {
                    Range<C> range2 = (Range) peekingIterator.peek();
                    if (range.isConnected(range2)) {
                        Preconditions.checkArgument(range.intersection(range2).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", range, range2);
                        range = range.span((Range) peekingIterator.next());
                    }
                }
                builder.add((ImmutableList.Builder) range);
            }
            ImmutableList build = builder.build();
            if (build.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (build.size() == 1 && ((Range) Iterables.getOnlyElement(build)).equals(Range.all())) {
                return ImmutableRangeSet.all();
            }
            return new ImmutableRangeSet<>(build);
        }
    }

    /* loaded from: classes3.dex */
    private static final class SerializedForm<C extends Comparable> implements Serializable {
        private final ImmutableList<Range<C>> ranges;

        SerializedForm(ImmutableList<Range<C>> immutableList) {
            this.ranges = immutableList;
        }

        Object readResolve() {
            if (this.ranges.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (this.ranges.equals(ImmutableList.of(Range.all()))) {
                return ImmutableRangeSet.all();
            }
            return new ImmutableRangeSet(this.ranges);
        }
    }

    Object writeReplace() {
        return new SerializedForm(this.ranges);
    }
}
