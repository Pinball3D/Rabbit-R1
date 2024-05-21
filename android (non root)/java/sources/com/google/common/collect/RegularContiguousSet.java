package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class RegularContiguousSet<C extends Comparable> extends ContiguousSet<C> {
    private static final long serialVersionUID = 0;
    private final Range<C> range;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RegularContiguousSet(Range<C> range, DiscreteDomain<C> discreteDomain) {
        super(discreteDomain);
        this.range = range;
    }

    private ContiguousSet<C> intersectionInCurrentDomain(Range<C> range) {
        if (this.range.isConnected(range)) {
            return ContiguousSet.create(this.range.intersection(range), this.domain);
        }
        return new EmptyContiguousSet(this.domain);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public ContiguousSet<C> headSetImpl(C c, boolean z) {
        return intersectionInCurrentDomain(Range.upTo(c, BoundType.forBoolean(z)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public ContiguousSet<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
        if (c.compareTo(c2) == 0 && !z && !z2) {
            return new EmptyContiguousSet(this.domain);
        }
        return intersectionInCurrentDomain(Range.range(c, BoundType.forBoolean(z), c2, BoundType.forBoolean(z2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public ContiguousSet<C> tailSetImpl(C c, boolean z) {
        return intersectionInCurrentDomain(Range.downTo(c, BoundType.forBoolean(z)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(@CheckForNull Object obj) {
        if (contains(obj)) {
            return (int) this.domain.distance(first(), (Comparable) Objects.requireNonNull(obj));
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
    public UnmodifiableIterator<C> iterator() {
        return new AbstractSequentialIterator<C>(first()) { // from class: com.google.common.collect.RegularContiguousSet.1
            final C last;

            {
                this.last = (C) RegularContiguousSet.this.last();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractSequentialIterator
            @CheckForNull
            public C computeNext(C c) {
                if (RegularContiguousSet.equalsOrThrow(c, this.last)) {
                    return null;
                }
                return RegularContiguousSet.this.domain.next(c);
            }
        };
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public UnmodifiableIterator<C> descendingIterator() {
        return new AbstractSequentialIterator<C>(last()) { // from class: com.google.common.collect.RegularContiguousSet.2
            final C first;

            {
                this.first = (C) RegularContiguousSet.this.first();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractSequentialIterator
            @CheckForNull
            public C computeNext(C c) {
                if (RegularContiguousSet.equalsOrThrow(c, this.first)) {
                    return null;
                }
                return RegularContiguousSet.this.domain.previous(c);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean equalsOrThrow(Comparable<?> comparable, @CheckForNull Comparable<?> comparable2) {
        return comparable2 != null && Range.compareOrThrow(comparable, comparable2) == 0;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public C first() {
        return (C) Objects.requireNonNull(this.range.lowerBound.leastValueAbove(this.domain));
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public C last() {
        return (C) Objects.requireNonNull(this.range.upperBound.greatestValueBelow(this.domain));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet
    public ImmutableList<C> createAsList() {
        if (this.domain.supportsFastOffset) {
            return new ImmutableAsList<C>() { // from class: com.google.common.collect.RegularContiguousSet.3
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.ImmutableAsList
                public ImmutableSortedSet<C> delegateCollection() {
                    return RegularContiguousSet.this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.List
                public C get(int i) {
                    Preconditions.checkElementIndex(i, size());
                    return (C) RegularContiguousSet.this.domain.offset(RegularContiguousSet.this.first(), i);
                }
            };
        }
        return super.createAsList();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long distance = this.domain.distance(first(), last());
        if (distance >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) distance) + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.range.contains((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return Collections2.containsAllImpl(this, collection);
    }

    @Override // com.google.common.collect.ContiguousSet
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        Preconditions.checkNotNull(contiguousSet);
        Preconditions.checkArgument(this.domain.equals(contiguousSet.domain));
        if (contiguousSet.isEmpty()) {
            return contiguousSet;
        }
        Comparable comparable = (Comparable) Ordering.natural().max(first(), (Comparable) contiguousSet.first());
        Comparable comparable2 = (Comparable) Ordering.natural().min(last(), (Comparable) contiguousSet.last());
        if (comparable.compareTo(comparable2) <= 0) {
            return ContiguousSet.create(Range.closed(comparable, comparable2), this.domain);
        }
        return new EmptyContiguousSet(this.domain);
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range() {
        return range(BoundType.CLOSED, BoundType.CLOSED);
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        return Range.create(this.range.lowerBound.withLowerBoundType(boundType, this.domain), this.range.upperBound.withUpperBoundType(boundType2, this.domain));
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RegularContiguousSet) {
            RegularContiguousSet regularContiguousSet = (RegularContiguousSet) obj;
            if (this.domain.equals(regularContiguousSet.domain)) {
                return first().equals(regularContiguousSet.first()) && last().equals(regularContiguousSet.last());
            }
        }
        return super.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.hashCodeImpl(this);
    }

    /* loaded from: classes3.dex */
    private static final class SerializedForm<C extends Comparable> implements Serializable {
        final DiscreteDomain<C> domain;
        final Range<C> range;

        private SerializedForm(Range<C> range, DiscreteDomain<C> discreteDomain) {
            this.range = range;
            this.domain = discreteDomain;
        }

        private Object readResolve() {
            return new RegularContiguousSet(this.range, this.domain);
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(this.range, this.domain);
    }
}
