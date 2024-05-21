package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import java.util.Comparator;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    private final transient long[] cumulativeCounts;
    final transient RegularImmutableSortedSet<E> elementSet;
    private final transient int length;
    private final transient int offset;
    private static final long[] ZERO_CUMULATIVE_COUNTS = {0};
    static final ImmutableSortedMultiset<Comparable> NATURAL_EMPTY_MULTISET = new RegularImmutableSortedMultiset(Ordering.natural());

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public ImmutableSortedSet<E> elementSet() {
        return this.elementSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset headMultiset(Object obj, BoundType boundType) {
        return headMultiset((RegularImmutableSortedMultiset<E>) obj, boundType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((RegularImmutableSortedMultiset<E>) obj, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RegularImmutableSortedMultiset(Comparator<? super E> comparator) {
        this.elementSet = ImmutableSortedSet.emptySet(comparator);
        this.cumulativeCounts = ZERO_CUMULATIVE_COUNTS;
        this.offset = 0;
        this.length = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RegularImmutableSortedMultiset(RegularImmutableSortedSet<E> regularImmutableSortedSet, long[] jArr, int i, int i2) {
        this.elementSet = regularImmutableSortedSet;
        this.cumulativeCounts = jArr;
        this.offset = i;
        this.length = i2;
    }

    private int getCount(int i) {
        long[] jArr = this.cumulativeCounts;
        int i2 = this.offset;
        return (int) (jArr[(i2 + i) + 1] - jArr[i2 + i]);
    }

    @Override // com.google.common.collect.ImmutableMultiset
    Multiset.Entry<E> getEntry(int i) {
        return Multisets.immutableEntry(this.elementSet.asList().get(i), getCount(i));
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(0);
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(this.length - 1);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        int indexOf = this.elementSet.indexOf(obj);
        if (indexOf >= 0) {
            return getCount(indexOf);
        }
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        long[] jArr = this.cumulativeCounts;
        int i = this.offset;
        return Ints.saturatedCast(jArr[this.length + i] - jArr[i]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType) {
        return getSubMultiset(0, this.elementSet.headIndex(e, Preconditions.checkNotNull(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType) {
        return getSubMultiset(this.elementSet.tailIndex(e, Preconditions.checkNotNull(boundType) == BoundType.CLOSED), this.length);
    }

    ImmutableSortedMultiset<E> getSubMultiset(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, this.length);
        if (i == i2) {
            return emptyMultiset(comparator());
        }
        return (i == 0 && i2 == this.length) ? this : new RegularImmutableSortedMultiset(this.elementSet.getSubSet(i, i2), this.cumulativeCounts, this.offset + i, i2 - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return this.offset > 0 || this.length < this.cumulativeCounts.length - 1;
    }
}
