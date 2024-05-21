package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.SortedMultisets;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingSortedMultiset<E> extends ForwardingMultiset<E> implements SortedMultiset<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract SortedMultiset<E> delegate();

    protected ForwardingSortedMultiset() {
    }

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return delegate().elementSet();
    }

    /* loaded from: classes3.dex */
    protected class StandardElementSet extends SortedMultisets.NavigableElementSet<E> {
        public StandardElementSet(ForwardingSortedMultiset forwardingSortedMultiset) {
            super(forwardingSortedMultiset);
        }
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> descendingMultiset() {
        return delegate().descendingMultiset();
    }

    /* loaded from: classes3.dex */
    protected abstract class StandardDescendingMultiset extends DescendingMultiset<E> {
        @Override // com.google.common.collect.DescendingMultiset
        SortedMultiset<E> forwardMultiset() {
            return ForwardingSortedMultiset.this;
        }

        public StandardDescendingMultiset() {
        }
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        return delegate().firstEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardFirstEntry() {
        Iterator<Multiset.Entry<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        return Multisets.immutableEntry(next.getElement(), next.getCount());
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        return delegate().lastEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardLastEntry() {
        Iterator<Multiset.Entry<E>> it = descendingMultiset().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        return Multisets.immutableEntry(next.getElement(), next.getCount());
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> pollFirstEntry() {
        return delegate().pollFirstEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardPollFirstEntry() {
        Iterator<Multiset.Entry<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        Multiset.Entry<E> immutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        it.remove();
        return immutableEntry;
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> pollLastEntry() {
        return delegate().pollLastEntry();
    }

    @CheckForNull
    protected Multiset.Entry<E> standardPollLastEntry() {
        Iterator<Multiset.Entry<E>> it = descendingMultiset().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        Multiset.Entry<E> immutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        it.remove();
        return immutableEntry;
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@ParametricNullness E e, BoundType boundType) {
        return delegate().headMultiset(e, boundType);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> subMultiset(@ParametricNullness E e, BoundType boundType, @ParametricNullness E e2, BoundType boundType2) {
        return delegate().subMultiset(e, boundType, e2, boundType2);
    }

    protected SortedMultiset<E> standardSubMultiset(@ParametricNullness E e, BoundType boundType, @ParametricNullness E e2, BoundType boundType2) {
        return tailMultiset(e, boundType).headMultiset(e2, boundType2);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@ParametricNullness E e, BoundType boundType) {
        return delegate().tailMultiset(e, boundType);
    }
}
