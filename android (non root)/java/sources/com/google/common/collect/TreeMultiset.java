package com.google.common.collect;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Serialization;
import com.google.common.primitives.Ints;
import io.sentry.protocol.MetricSummary;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class TreeMultiset<E> extends AbstractSortedMultiset<E> implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient AvlNode<E> header;
    private final transient GeneralRange<E> range;
    private final transient Reference<AvlNode<E>> rootReference;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum Aggregate {
        SIZE { // from class: com.google.common.collect.TreeMultiset.Aggregate.1
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int nodeAggregate(AvlNode<?> avlNode) {
                return ((AvlNode) avlNode).elemCount;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long treeAggregate(@CheckForNull AvlNode<?> avlNode) {
                if (avlNode == null) {
                    return 0L;
                }
                return ((AvlNode) avlNode).totalCount;
            }
        },
        DISTINCT { // from class: com.google.common.collect.TreeMultiset.Aggregate.2
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int nodeAggregate(AvlNode<?> avlNode) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long treeAggregate(@CheckForNull AvlNode<?> avlNode) {
                if (avlNode == null) {
                    return 0L;
                }
                return ((AvlNode) avlNode).distinctElements;
            }
        };

        abstract int nodeAggregate(AvlNode<?> avlNode);

        abstract long treeAggregate(@CheckForNull AvlNode<?> avlNode);
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry pollLastEntry() {
        return super.pollLastEntry();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(@ParametricNullness Object obj, BoundType boundType, @ParametricNullness Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public static <E> TreeMultiset<E> create(@CheckForNull Comparator<? super E> comparator) {
        if (comparator == null) {
            return new TreeMultiset<>(Ordering.natural());
        }
        return new TreeMultiset<>(comparator);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> create = create();
        Iterables.addAll(create, iterable);
        return create;
    }

    TreeMultiset(Reference<AvlNode<E>> reference, GeneralRange<E> generalRange, AvlNode<E> avlNode) {
        super(generalRange.comparator());
        this.rootReference = reference;
        this.range = generalRange;
        this.header = avlNode;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        AvlNode<E> avlNode = new AvlNode<>();
        this.header = avlNode;
        successor(avlNode, avlNode);
        this.rootReference = new Reference<>();
    }

    private long aggregateForEntries(Aggregate aggregate) {
        AvlNode<E> avlNode = this.rootReference.get();
        long treeAggregate = aggregate.treeAggregate(avlNode);
        if (this.range.hasLowerBound()) {
            treeAggregate -= aggregateBelowRange(aggregate, avlNode);
        }
        return this.range.hasUpperBound() ? treeAggregate - aggregateAboveRange(aggregate, avlNode) : treeAggregate;
    }

    private long aggregateBelowRange(Aggregate aggregate, @CheckForNull AvlNode<E> avlNode) {
        long treeAggregate;
        long aggregateBelowRange;
        if (avlNode == null) {
            return 0L;
        }
        int compare = comparator().compare(NullnessCasts.uncheckedCastNullableTToT(this.range.getLowerEndpoint()), avlNode.getElement());
        if (compare < 0) {
            return aggregateBelowRange(aggregate, ((AvlNode) avlNode).left);
        }
        if (compare == 0) {
            int i = AnonymousClass4.$SwitchMap$com$google$common$collect$BoundType[this.range.getLowerBoundType().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    throw new AssertionError();
                }
                return aggregate.treeAggregate(((AvlNode) avlNode).left);
            }
            treeAggregate = aggregate.nodeAggregate(avlNode);
            aggregateBelowRange = aggregate.treeAggregate(((AvlNode) avlNode).left);
        } else {
            treeAggregate = aggregate.treeAggregate(((AvlNode) avlNode).left) + aggregate.nodeAggregate(avlNode);
            aggregateBelowRange = aggregateBelowRange(aggregate, ((AvlNode) avlNode).right);
        }
        return treeAggregate + aggregateBelowRange;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.TreeMultiset$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$collect$BoundType;

        static {
            int[] iArr = new int[BoundType.values().length];
            $SwitchMap$com$google$common$collect$BoundType = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$collect$BoundType[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private long aggregateAboveRange(Aggregate aggregate, @CheckForNull AvlNode<E> avlNode) {
        long treeAggregate;
        long aggregateAboveRange;
        if (avlNode == null) {
            return 0L;
        }
        int compare = comparator().compare(NullnessCasts.uncheckedCastNullableTToT(this.range.getUpperEndpoint()), avlNode.getElement());
        if (compare > 0) {
            return aggregateAboveRange(aggregate, ((AvlNode) avlNode).right);
        }
        if (compare == 0) {
            int i = AnonymousClass4.$SwitchMap$com$google$common$collect$BoundType[this.range.getUpperBoundType().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    throw new AssertionError();
                }
                return aggregate.treeAggregate(((AvlNode) avlNode).right);
            }
            treeAggregate = aggregate.nodeAggregate(avlNode);
            aggregateAboveRange = aggregate.treeAggregate(((AvlNode) avlNode).right);
        } else {
            treeAggregate = aggregate.treeAggregate(((AvlNode) avlNode).right) + aggregate.nodeAggregate(avlNode);
            aggregateAboveRange = aggregateAboveRange(aggregate, ((AvlNode) avlNode).left);
        }
        return treeAggregate + aggregateAboveRange;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(aggregateForEntries(Aggregate.SIZE));
    }

    @Override // com.google.common.collect.AbstractMultiset
    int distinctElements() {
        return Ints.saturatedCast(aggregateForEntries(Aggregate.DISTINCT));
    }

    static int distinctElements(@CheckForNull AvlNode<?> avlNode) {
        if (avlNode == null) {
            return 0;
        }
        return ((AvlNode) avlNode).distinctElements;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        try {
            AvlNode<E> avlNode = this.rootReference.get();
            if (this.range.contains(obj) && avlNode != null) {
                return avlNode.count(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public int add(@ParametricNullness E e, int i) {
        CollectPreconditions.checkNonnegative(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        Preconditions.checkArgument(this.range.contains(e));
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode == null) {
            comparator().compare(e, e);
            AvlNode<E> avlNode2 = new AvlNode<>(e, i);
            AvlNode<E> avlNode3 = this.header;
            successor(avlNode3, avlNode2, avlNode3);
            this.rootReference.checkAndSet(avlNode, avlNode2);
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.checkAndSet(avlNode, avlNode.add(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public int remove(@CheckForNull Object obj, int i) {
        CollectPreconditions.checkNonnegative(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        AvlNode<E> avlNode = this.rootReference.get();
        int[] iArr = new int[1];
        try {
            if (this.range.contains(obj) && avlNode != null) {
                this.rootReference.checkAndSet(avlNode, avlNode.remove(comparator(), obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public int setCount(@ParametricNullness E e, int i) {
        CollectPreconditions.checkNonnegative(i, MetricSummary.JsonKeys.COUNT);
        if (!this.range.contains(e)) {
            Preconditions.checkArgument(i == 0);
            return 0;
        }
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode == null) {
            if (i > 0) {
                add(e, i);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.checkAndSet(avlNode, avlNode.setCount(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public boolean setCount(@ParametricNullness E e, int i, int i2) {
        CollectPreconditions.checkNonnegative(i2, "newCount");
        CollectPreconditions.checkNonnegative(i, "oldCount");
        Preconditions.checkArgument(this.range.contains(e));
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode != null) {
            int[] iArr = new int[1];
            this.rootReference.checkAndSet(avlNode, avlNode.setCount(comparator(), e, i, i2, iArr));
            return iArr[0] == i;
        }
        if (i != 0) {
            return false;
        }
        if (i2 > 0) {
            add(e, i2);
        }
        return true;
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (this.range.hasLowerBound() || this.range.hasUpperBound()) {
            Iterators.clear(entryIterator());
            return;
        }
        AvlNode<E> succ = this.header.succ();
        while (true) {
            AvlNode<E> avlNode = this.header;
            if (succ == avlNode) {
                successor(avlNode, avlNode);
                this.rootReference.clear();
                return;
            }
            AvlNode<E> succ2 = succ.succ();
            ((AvlNode) succ).elemCount = 0;
            ((AvlNode) succ).left = null;
            ((AvlNode) succ).right = null;
            ((AvlNode) succ).pred = null;
            ((AvlNode) succ).succ = null;
            succ = succ2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Multiset.Entry<E> wrapEntry(final AvlNode<E> avlNode) {
        return new Multisets.AbstractEntry<E>() { // from class: com.google.common.collect.TreeMultiset.1
            @Override // com.google.common.collect.Multiset.Entry
            @ParametricNullness
            public E getElement() {
                return (E) avlNode.getElement();
            }

            @Override // com.google.common.collect.Multiset.Entry
            public int getCount() {
                int count = avlNode.getCount();
                return count == 0 ? TreeMultiset.this.count(getElement()) : count;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public AvlNode<E> firstNode() {
        AvlNode<E> succ;
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode == null) {
            return null;
        }
        if (this.range.hasLowerBound()) {
            Object uncheckedCastNullableTToT = NullnessCasts.uncheckedCastNullableTToT(this.range.getLowerEndpoint());
            succ = avlNode.ceiling(comparator(), uncheckedCastNullableTToT);
            if (succ == null) {
                return null;
            }
            if (this.range.getLowerBoundType() == BoundType.OPEN && comparator().compare(uncheckedCastNullableTToT, succ.getElement()) == 0) {
                succ = succ.succ();
            }
        } else {
            succ = this.header.succ();
        }
        if (succ == this.header || !this.range.contains(succ.getElement())) {
            return null;
        }
        return succ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public AvlNode<E> lastNode() {
        AvlNode<E> pred;
        AvlNode<E> avlNode = this.rootReference.get();
        if (avlNode == null) {
            return null;
        }
        if (this.range.hasUpperBound()) {
            Object uncheckedCastNullableTToT = NullnessCasts.uncheckedCastNullableTToT(this.range.getUpperEndpoint());
            pred = avlNode.floor(comparator(), uncheckedCastNullableTToT);
            if (pred == null) {
                return null;
            }
            if (this.range.getUpperBoundType() == BoundType.OPEN && comparator().compare(uncheckedCastNullableTToT, pred.getElement()) == 0) {
                pred = pred.pred();
            }
        } else {
            pred = this.header.pred();
        }
        if (pred == this.header || !this.range.contains(pred.getElement())) {
            return null;
        }
        return pred;
    }

    @Override // com.google.common.collect.AbstractMultiset
    Iterator<E> elementIterator() {
        return Multisets.elementIterator(entryIterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractMultiset
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new Iterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.TreeMultiset.2

            @CheckForNull
            AvlNode<E> current;

            @CheckForNull
            Multiset.Entry<E> prevEntry;

            {
                this.current = TreeMultiset.this.firstNode();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.current == null) {
                    return false;
                }
                if (!TreeMultiset.this.range.tooHigh(this.current.getElement())) {
                    return true;
                }
                this.current = null;
                return false;
            }

            @Override // java.util.Iterator
            public Multiset.Entry<E> next() {
                if (hasNext()) {
                    Multiset.Entry<E> wrapEntry = TreeMultiset.this.wrapEntry((AvlNode) Objects.requireNonNull(this.current));
                    this.prevEntry = wrapEntry;
                    if (this.current.succ() == TreeMultiset.this.header) {
                        this.current = null;
                    } else {
                        this.current = this.current.succ();
                    }
                    return wrapEntry;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.prevEntry != null, "no calls to next() since the last call to remove()");
                TreeMultiset.this.setCount(this.prevEntry.getElement(), 0);
                this.prevEntry = null;
            }
        };
    }

    @Override // com.google.common.collect.AbstractSortedMultiset
    Iterator<Multiset.Entry<E>> descendingEntryIterator() {
        return new Iterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.TreeMultiset.3

            @CheckForNull
            AvlNode<E> current;

            @CheckForNull
            Multiset.Entry<E> prevEntry = null;

            {
                this.current = TreeMultiset.this.lastNode();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.current == null) {
                    return false;
                }
                if (!TreeMultiset.this.range.tooLow(this.current.getElement())) {
                    return true;
                }
                this.current = null;
                return false;
            }

            @Override // java.util.Iterator
            public Multiset.Entry<E> next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                Objects.requireNonNull(this.current);
                Multiset.Entry<E> wrapEntry = TreeMultiset.this.wrapEntry(this.current);
                this.prevEntry = wrapEntry;
                if (this.current.pred() == TreeMultiset.this.header) {
                    this.current = null;
                } else {
                    this.current = this.current.pred();
                }
                return wrapEntry;
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.prevEntry != null, "no calls to next() since the last call to remove()");
                TreeMultiset.this.setCount(this.prevEntry.getElement(), 0);
                this.prevEntry = null;
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.iteratorImpl(this);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@ParametricNullness E e, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), e, boundType)), this.header);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@ParametricNullness E e, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), e, boundType)), this.header);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class Reference<T> {

        @CheckForNull
        private T value;

        void clear() {
            this.value = null;
        }

        @CheckForNull
        public T get() {
            return this.value;
        }

        private Reference() {
        }

        public void checkAndSet(@CheckForNull T t, @CheckForNull T t2) {
            if (this.value != t) {
                throw new ConcurrentModificationException();
            }
            this.value = t2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class AvlNode<E> {
        private int distinctElements;

        @CheckForNull
        private final E elem;
        private int elemCount;
        private int height;

        @CheckForNull
        private AvlNode<E> left;

        @CheckForNull
        private AvlNode<E> pred;

        @CheckForNull
        private AvlNode<E> right;

        @CheckForNull
        private AvlNode<E> succ;
        private long totalCount;

        int getCount() {
            return this.elemCount;
        }

        AvlNode(@ParametricNullness E e, int i) {
            Preconditions.checkArgument(i > 0);
            this.elem = e;
            this.elemCount = i;
            this.totalCount = i;
            this.distinctElements = 1;
            this.height = 1;
            this.left = null;
            this.right = null;
        }

        AvlNode() {
            this.elem = null;
            this.elemCount = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AvlNode<E> pred() {
            return (AvlNode) Objects.requireNonNull(this.pred);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AvlNode<E> succ() {
            return (AvlNode) Objects.requireNonNull(this.succ);
        }

        /* JADX WARN: Multi-variable type inference failed */
        int count(Comparator<? super E> comparator, @ParametricNullness E e) {
            int compare = comparator.compare(e, getElement());
            if (compare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    return 0;
                }
                return avlNode.count(comparator, e);
            }
            if (compare <= 0) {
                return this.elemCount;
            }
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                return 0;
            }
            return avlNode2.count(comparator, e);
        }

        private AvlNode<E> addRightChild(@ParametricNullness E e, int i) {
            AvlNode<E> avlNode = new AvlNode<>(e, i);
            this.right = avlNode;
            TreeMultiset.successor(this, avlNode, succ());
            this.height = Math.max(2, this.height);
            this.distinctElements++;
            this.totalCount += i;
            return this;
        }

        private AvlNode<E> addLeftChild(@ParametricNullness E e, int i) {
            this.left = new AvlNode<>(e, i);
            TreeMultiset.successor(pred(), this.left, this);
            this.height = Math.max(2, this.height);
            this.distinctElements++;
            this.totalCount += i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        AvlNode<E> add(Comparator<? super E> comparator, @ParametricNullness E e, int i, int[] iArr) {
            int compare = comparator.compare(e, getElement());
            if (compare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return addLeftChild(e, i);
                }
                int i2 = avlNode.height;
                AvlNode<E> add = avlNode.add(comparator, e, i, iArr);
                this.left = add;
                if (iArr[0] == 0) {
                    this.distinctElements++;
                }
                this.totalCount += i;
                return add.height == i2 ? this : rebalance();
            }
            if (compare <= 0) {
                int i3 = this.elemCount;
                iArr[0] = i3;
                long j = i;
                Preconditions.checkArgument(((long) i3) + j <= 2147483647L);
                this.elemCount += i;
                this.totalCount += j;
                return this;
            }
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                iArr[0] = 0;
                return addRightChild(e, i);
            }
            int i4 = avlNode2.height;
            AvlNode<E> add2 = avlNode2.add(comparator, e, i, iArr);
            this.right = add2;
            if (iArr[0] == 0) {
                this.distinctElements++;
            }
            this.totalCount += i;
            return add2.height == i4 ? this : rebalance();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        AvlNode<E> remove(Comparator<? super E> comparator, @ParametricNullness E e, int i, int[] iArr) {
            int compare = comparator.compare(e, getElement());
            if (compare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.left = avlNode.remove(comparator, e, i, iArr);
                int i2 = iArr[0];
                if (i2 > 0) {
                    if (i >= i2) {
                        this.distinctElements--;
                        this.totalCount -= i2;
                    } else {
                        this.totalCount -= i;
                    }
                }
                return i2 == 0 ? this : rebalance();
            }
            if (compare <= 0) {
                int i3 = this.elemCount;
                iArr[0] = i3;
                if (i >= i3) {
                    return deleteMe();
                }
                this.elemCount = i3 - i;
                this.totalCount -= i;
                return this;
            }
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.right = avlNode2.remove(comparator, e, i, iArr);
            int i4 = iArr[0];
            if (i4 > 0) {
                if (i >= i4) {
                    this.distinctElements--;
                    this.totalCount -= i4;
                } else {
                    this.totalCount -= i;
                }
            }
            return rebalance();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        AvlNode<E> setCount(Comparator<? super E> comparator, @ParametricNullness E e, int i, int[] iArr) {
            int compare = comparator.compare(e, getElement());
            if (compare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return i > 0 ? addLeftChild(e, i) : this;
                }
                this.left = avlNode.setCount(comparator, e, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.distinctElements--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.distinctElements++;
                }
                this.totalCount += i - iArr[0];
                return rebalance();
            }
            if (compare <= 0) {
                iArr[0] = this.elemCount;
                if (i == 0) {
                    return deleteMe();
                }
                this.totalCount += i - r3;
                this.elemCount = i;
                return this;
            }
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                iArr[0] = 0;
                return i > 0 ? addRightChild(e, i) : this;
            }
            this.right = avlNode2.setCount(comparator, e, i, iArr);
            if (i == 0 && iArr[0] != 0) {
                this.distinctElements--;
            } else if (i > 0 && iArr[0] == 0) {
                this.distinctElements++;
            }
            this.totalCount += i - iArr[0];
            return rebalance();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        AvlNode<E> setCount(Comparator<? super E> comparator, @ParametricNullness E e, int i, int i2, int[] iArr) {
            int compare = comparator.compare(e, getElement());
            if (compare < 0) {
                AvlNode<E> avlNode = this.left;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return (i != 0 || i2 <= 0) ? this : addLeftChild(e, i2);
                }
                this.left = avlNode.setCount(comparator, e, i, i2, iArr);
                int i3 = iArr[0];
                if (i3 == i) {
                    if (i2 == 0 && i3 != 0) {
                        this.distinctElements--;
                    } else if (i2 > 0 && i3 == 0) {
                        this.distinctElements++;
                    }
                    this.totalCount += i2 - i3;
                }
                return rebalance();
            }
            if (compare <= 0) {
                int i4 = this.elemCount;
                iArr[0] = i4;
                if (i == i4) {
                    if (i2 == 0) {
                        return deleteMe();
                    }
                    this.totalCount += i2 - i4;
                    this.elemCount = i2;
                }
                return this;
            }
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                iArr[0] = 0;
                return (i != 0 || i2 <= 0) ? this : addRightChild(e, i2);
            }
            this.right = avlNode2.setCount(comparator, e, i, i2, iArr);
            int i5 = iArr[0];
            if (i5 == i) {
                if (i2 == 0 && i5 != 0) {
                    this.distinctElements--;
                } else if (i2 > 0 && i5 == 0) {
                    this.distinctElements++;
                }
                this.totalCount += i2 - i5;
            }
            return rebalance();
        }

        @CheckForNull
        private AvlNode<E> deleteMe() {
            int i = this.elemCount;
            this.elemCount = 0;
            TreeMultiset.successor(pred(), succ());
            AvlNode<E> avlNode = this.left;
            if (avlNode == null) {
                return this.right;
            }
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                return avlNode;
            }
            if (avlNode.height >= avlNode2.height) {
                AvlNode<E> pred = pred();
                pred.left = this.left.removeMax(pred);
                pred.right = this.right;
                pred.distinctElements = this.distinctElements - 1;
                pred.totalCount = this.totalCount - i;
                return pred.rebalance();
            }
            AvlNode<E> succ = succ();
            succ.right = this.right.removeMin(succ);
            succ.left = this.left;
            succ.distinctElements = this.distinctElements - 1;
            succ.totalCount = this.totalCount - i;
            return succ.rebalance();
        }

        @CheckForNull
        private AvlNode<E> removeMin(AvlNode<E> avlNode) {
            AvlNode<E> avlNode2 = this.left;
            if (avlNode2 == null) {
                return this.right;
            }
            this.left = avlNode2.removeMin(avlNode);
            this.distinctElements--;
            this.totalCount -= avlNode.elemCount;
            return rebalance();
        }

        @CheckForNull
        private AvlNode<E> removeMax(AvlNode<E> avlNode) {
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                return this.left;
            }
            this.right = avlNode2.removeMax(avlNode);
            this.distinctElements--;
            this.totalCount -= avlNode.elemCount;
            return rebalance();
        }

        private void recomputeMultiset() {
            this.distinctElements = TreeMultiset.distinctElements(this.left) + 1 + TreeMultiset.distinctElements(this.right);
            this.totalCount = this.elemCount + totalCount(this.left) + totalCount(this.right);
        }

        private void recomputeHeight() {
            this.height = Math.max(height(this.left), height(this.right)) + 1;
        }

        private void recompute() {
            recomputeMultiset();
            recomputeHeight();
        }

        private AvlNode<E> rebalance() {
            int balanceFactor = balanceFactor();
            if (balanceFactor == -2) {
                Objects.requireNonNull(this.right);
                if (this.right.balanceFactor() > 0) {
                    this.right = this.right.rotateRight();
                }
                return rotateLeft();
            }
            if (balanceFactor == 2) {
                Objects.requireNonNull(this.left);
                if (this.left.balanceFactor() < 0) {
                    this.left = this.left.rotateLeft();
                }
                return rotateRight();
            }
            recomputeHeight();
            return this;
        }

        private int balanceFactor() {
            return height(this.left) - height(this.right);
        }

        private AvlNode<E> rotateLeft() {
            Preconditions.checkState(this.right != null);
            AvlNode<E> avlNode = this.right;
            this.right = avlNode.left;
            avlNode.left = this;
            avlNode.totalCount = this.totalCount;
            avlNode.distinctElements = this.distinctElements;
            recompute();
            avlNode.recomputeHeight();
            return avlNode;
        }

        private AvlNode<E> rotateRight() {
            Preconditions.checkState(this.left != null);
            AvlNode<E> avlNode = this.left;
            this.left = avlNode.right;
            avlNode.right = this;
            avlNode.totalCount = this.totalCount;
            avlNode.distinctElements = this.distinctElements;
            recompute();
            avlNode.recomputeHeight();
            return avlNode;
        }

        private static long totalCount(@CheckForNull AvlNode<?> avlNode) {
            if (avlNode == null) {
                return 0L;
            }
            return ((AvlNode) avlNode).totalCount;
        }

        private static int height(@CheckForNull AvlNode<?> avlNode) {
            if (avlNode == null) {
                return 0;
            }
            return ((AvlNode) avlNode).height;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        public AvlNode<E> ceiling(Comparator<? super E> comparator, @ParametricNullness E e) {
            int compare = comparator.compare(e, getElement());
            if (compare < 0) {
                AvlNode<E> avlNode = this.left;
                return avlNode == null ? this : (AvlNode) MoreObjects.firstNonNull(avlNode.ceiling(comparator, e), this);
            }
            if (compare == 0) {
                return this;
            }
            AvlNode<E> avlNode2 = this.right;
            if (avlNode2 == null) {
                return null;
            }
            return avlNode2.ceiling(comparator, e);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        public AvlNode<E> floor(Comparator<? super E> comparator, @ParametricNullness E e) {
            int compare = comparator.compare(e, getElement());
            if (compare > 0) {
                AvlNode<E> avlNode = this.right;
                return avlNode == null ? this : (AvlNode) MoreObjects.firstNonNull(avlNode.floor(comparator, e), this);
            }
            if (compare == 0) {
                return this;
            }
            AvlNode<E> avlNode2 = this.left;
            if (avlNode2 == null) {
                return null;
            }
            return avlNode2.floor(comparator, e);
        }

        @ParametricNullness
        E getElement() {
            return (E) NullnessCasts.uncheckedCastNullableTToT(this.elem);
        }

        public String toString() {
            return Multisets.immutableEntry(getElement(), getCount()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(AvlNode<T> avlNode, AvlNode<T> avlNode2) {
        ((AvlNode) avlNode).succ = avlNode2;
        ((AvlNode) avlNode2).pred = avlNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(AvlNode<T> avlNode, AvlNode<T> avlNode2, AvlNode<T> avlNode3) {
        successor(avlNode, avlNode2);
        successor(avlNode2, avlNode3);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        Serialization.writeMultiset(this, objectOutputStream);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        Serialization.getFieldSetter(AbstractSortedMultiset.class, "comparator").set((Serialization.FieldSetter) this, (Object) comparator);
        Serialization.getFieldSetter(TreeMultiset.class, "range").set((Serialization.FieldSetter) this, (Object) GeneralRange.all(comparator));
        Serialization.getFieldSetter(TreeMultiset.class, "rootReference").set((Serialization.FieldSetter) this, (Object) new Reference());
        AvlNode avlNode = new AvlNode();
        Serialization.getFieldSetter(TreeMultiset.class, "header").set((Serialization.FieldSetter) this, (Object) avlNode);
        successor(avlNode, avlNode);
        Serialization.populateMultiset(this, objectInputStream);
    }
}
