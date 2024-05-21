package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.SortedMultisets;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
abstract class AbstractSortedMultiset<E> extends AbstractMultiset<E> implements SortedMultiset<E> {

    @GwtTransient
    final Comparator<? super E> comparator;

    @CheckForNull
    private transient SortedMultiset<E> descendingMultiset;

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    abstract Iterator<Multiset.Entry<E>> descendingEntryIterator();

    AbstractSortedMultiset() {
        this(Ordering.natural());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractSortedMultiset(Comparator<? super E> comparator) {
        this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractMultiset
    public NavigableSet<E> createElementSet() {
        return new SortedMultisets.NavigableElementSet(this);
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        Iterator<Multiset.Entry<E>> entryIterator = entryIterator();
        if (entryIterator.hasNext()) {
            return entryIterator.next();
        }
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        Iterator<Multiset.Entry<E>> descendingEntryIterator = descendingEntryIterator();
        if (descendingEntryIterator.hasNext()) {
            return descendingEntryIterator.next();
        }
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> pollFirstEntry() {
        Iterator<Multiset.Entry<E>> entryIterator = entryIterator();
        if (!entryIterator.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = entryIterator.next();
        Multiset.Entry<E> immutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        entryIterator.remove();
        return immutableEntry;
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> pollLastEntry() {
        Iterator<Multiset.Entry<E>> descendingEntryIterator = descendingEntryIterator();
        if (!descendingEntryIterator.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = descendingEntryIterator.next();
        Multiset.Entry<E> immutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        descendingEntryIterator.remove();
        return immutableEntry;
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> subMultiset(@ParametricNullness E e, BoundType boundType, @ParametricNullness E e2, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        return tailMultiset(e, boundType).headMultiset(e2, boundType2);
    }

    Iterator<E> descendingIterator() {
        return Multisets.iteratorImpl(descendingMultiset());
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> descendingMultiset() {
        SortedMultiset<E> sortedMultiset = this.descendingMultiset;
        if (sortedMultiset != null) {
            return sortedMultiset;
        }
        SortedMultiset<E> createDescendingMultiset = createDescendingMultiset();
        this.descendingMultiset = createDescendingMultiset;
        return createDescendingMultiset;
    }

    SortedMultiset<E> createDescendingMultiset() {
        return new DescendingMultiset<E>() { // from class: com.google.common.collect.AbstractSortedMultiset.1DescendingMultisetImpl
            @Override // com.google.common.collect.DescendingMultiset
            SortedMultiset<E> forwardMultiset() {
                return AbstractSortedMultiset.this;
            }

            @Override // com.google.common.collect.DescendingMultiset
            Iterator<Multiset.Entry<E>> entryIterator() {
                return AbstractSortedMultiset.this.descendingEntryIterator();
            }

            @Override // com.google.common.collect.DescendingMultiset, com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<E> iterator() {
                return AbstractSortedMultiset.this.descendingIterator();
            }
        };
    }
}
