package com.google.common.collect;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class TreeRangeSet<C extends Comparable<?>> extends AbstractRangeSet<C> implements Serializable {

    @CheckForNull
    private transient Set<Range<C>> asDescendingSetOfRanges;

    @CheckForNull
    private transient Set<Range<C>> asRanges;

    @CheckForNull
    private transient RangeSet<C> complement;
    final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(RangeSet rangeSet) {
        super.addAll(rangeSet);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(Iterable iterable) {
        super.addAll(iterable);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

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

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(RangeSet rangeSet) {
        super.removeAll(rangeSet);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(Iterable iterable) {
        super.removeAll(iterable);
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(RangeSet<C> rangeSet) {
        TreeRangeSet<C> create = create();
        create.addAll(rangeSet);
        return create;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> create = create();
        create.addAll(iterable);
        return create;
    }

    private TreeRangeSet(NavigableMap<Cut<C>, Range<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.asRanges;
        if (set != null) {
            return set;
        }
        AsRanges asRanges = new AsRanges(this, this.rangesByLowerBound.values());
        this.asRanges = asRanges;
        return asRanges;
    }

    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.asDescendingSetOfRanges;
        if (set != null) {
            return set;
        }
        AsRanges asRanges = new AsRanges(this, this.rangesByLowerBound.descendingMap().values());
        this.asDescendingSetOfRanges = asRanges;
        return asRanges;
    }

    /* loaded from: classes3.dex */
    final class AsRanges extends ForwardingCollection<Range<C>> implements Set<Range<C>> {
        final Collection<Range<C>> delegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Range<C>> delegate() {
            return this.delegate;
        }

        AsRanges(TreeRangeSet treeRangeSet, Collection<Range<C>> collection) {
            this.delegate = collection;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.hashCodeImpl(this);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return Sets.equalsImpl(this, obj);
        }
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    @CheckForNull
    public Range<C> rangeContaining(C c) {
        Preconditions.checkNotNull(c);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(Cut.belowValue(c));
        if (floorEntry == null || !floorEntry.getValue().contains(c)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public boolean intersects(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<Cut<C>, Range<C>> ceilingEntry = this.rangesByLowerBound.ceilingEntry(range.lowerBound);
        if (ceilingEntry != null && ceilingEntry.getValue().isConnected(range) && !ceilingEntry.getValue().intersection(range).isEmpty()) {
            return true;
        }
        Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        return (lowerEntry == null || !lowerEntry.getValue().isConnected(range) || lowerEntry.getValue().intersection(range).isEmpty()) ? false : true;
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public boolean encloses(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return floorEntry != null && floorEntry.getValue().encloses(range);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public Range<C> rangeEnclosing(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        if (floorEntry == null || !floorEntry.getValue().encloses(range)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override // com.google.common.collect.RangeSet
    public Range<C> span() {
        Map.Entry<Cut<C>, Range<C>> firstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<Cut<C>, Range<C>> lastEntry = this.rangesByLowerBound.lastEntry();
        if (firstEntry == null || lastEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.create(firstEntry.getValue().lowerBound, lastEntry.getValue().upperBound);
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public void add(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return;
        }
        Cut<C> cut = range.lowerBound;
        Cut<C> cut2 = range.upperBound;
        Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(cut);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.upperBound.compareTo(cut) >= 0) {
                if (value.upperBound.compareTo(cut2) >= 0) {
                    cut2 = value.upperBound;
                }
                cut = value.lowerBound;
            }
        }
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(cut2);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (value2.upperBound.compareTo(cut2) >= 0) {
                cut2 = value2.upperBound;
            }
        }
        this.rangesByLowerBound.subMap(cut, cut2).clear();
        replaceRangeWithSameLowerBound(Range.create(cut, cut2));
    }

    @Override // com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
    public void remove(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.upperBound.compareTo(range.lowerBound) >= 0) {
                if (range.hasUpperBound() && value.upperBound.compareTo(range.upperBound) >= 0) {
                    replaceRangeWithSameLowerBound(Range.create(range.upperBound, value.upperBound));
                }
                replaceRangeWithSameLowerBound(Range.create(value.lowerBound, range.lowerBound));
            }
        }
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.upperBound);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (range.hasUpperBound() && value2.upperBound.compareTo(range.upperBound) >= 0) {
                replaceRangeWithSameLowerBound(Range.create(range.upperBound, value2.upperBound));
            }
        }
        this.rangesByLowerBound.subMap(range.lowerBound, range.upperBound).clear();
    }

    private void replaceRangeWithSameLowerBound(Range<C> range) {
        if (range.isEmpty()) {
            this.rangesByLowerBound.remove(range.lowerBound);
        } else {
            this.rangesByLowerBound.put(range.lowerBound, range);
        }
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> complement() {
        RangeSet<C> rangeSet = this.complement;
        if (rangeSet != null) {
            return rangeSet;
        }
        Complement complement = new Complement();
        this.complement = complement;
        return complement;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class RangesByUpperBound<C extends Comparable<?>> extends AbstractNavigableMap<Cut<C>, Range<C>> {
        private final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;
        private final Range<Cut<C>> upperBoundWindow;

        RangesByUpperBound(NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this.rangesByLowerBound = navigableMap;
            this.upperBoundWindow = Range.all();
        }

        private RangesByUpperBound(NavigableMap<Cut<C>, Range<C>> navigableMap, Range<Cut<C>> range) {
            this.rangesByLowerBound = navigableMap;
            this.upperBoundWindow = range;
        }

        private NavigableMap<Cut<C>, Range<C>> subMap(Range<Cut<C>> range) {
            if (range.isConnected(this.upperBoundWindow)) {
                return new RangesByUpperBound(this.rangesByLowerBound, range.intersection(this.upperBoundWindow));
            }
            return ImmutableSortedMap.of();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return subMap(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return subMap(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return subMap(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.AbstractMap, java.util.Map
        @CheckForNull
        public Range<C> get(@CheckForNull Object obj) {
            Map.Entry<Cut<C>, Range<C>> lowerEntry;
            if (obj instanceof Cut) {
                try {
                    Cut<C> cut = (Cut) obj;
                    if (this.upperBoundWindow.contains(cut) && (lowerEntry = this.rangesByLowerBound.lowerEntry(cut)) != null && lowerEntry.getValue().upperBound.equals(cut)) {
                        return lowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public Iterator<Map.Entry<Cut<C>, Range<C>>> entryIterator() {
            final Iterator<Range<C>> it;
            if (!this.upperBoundWindow.hasLowerBound()) {
                it = this.rangesByLowerBound.values().iterator();
            } else {
                Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(this.upperBoundWindow.lowerEndpoint());
                if (lowerEntry == null) {
                    it = this.rangesByLowerBound.values().iterator();
                } else if (this.upperBoundWindow.lowerBound.isLessThan(lowerEntry.getValue().upperBound)) {
                    it = this.rangesByLowerBound.tailMap(lowerEntry.getKey(), true).values().iterator();
                } else {
                    it = this.rangesByLowerBound.tailMap(this.upperBoundWindow.lowerEndpoint(), true).values().iterator();
                }
            }
            return new AbstractIterator<Map.Entry<Cut<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.RangesByUpperBound.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public Map.Entry<Cut<C>, Range<C>> computeNext() {
                    if (!it.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) it.next();
                    if (RangesByUpperBound.this.upperBoundWindow.upperBound.isLessThan(range.upperBound)) {
                        return (Map.Entry) endOfData();
                    }
                    return Maps.immutableEntry(range.upperBound, range);
                }
            };
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        Iterator<Map.Entry<Cut<C>, Range<C>>> descendingEntryIterator() {
            Collection<Range<C>> values;
            if (this.upperBoundWindow.hasUpperBound()) {
                values = this.rangesByLowerBound.headMap(this.upperBoundWindow.upperEndpoint(), false).descendingMap().values();
            } else {
                values = this.rangesByLowerBound.descendingMap().values();
            }
            final PeekingIterator peekingIterator = Iterators.peekingIterator(values.iterator());
            if (peekingIterator.hasNext() && this.upperBoundWindow.upperBound.isLessThan(((Range) peekingIterator.peek()).upperBound)) {
                peekingIterator.next();
            }
            return new AbstractIterator<Map.Entry<Cut<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.RangesByUpperBound.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public Map.Entry<Cut<C>, Range<C>> computeNext() {
                    if (!peekingIterator.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) peekingIterator.next();
                    if (RangesByUpperBound.this.upperBoundWindow.lowerBound.isLessThan(range.upperBound)) {
                        return Maps.immutableEntry(range.upperBound, range);
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public int size() {
            if (this.upperBoundWindow.equals(Range.all())) {
                return this.rangesByLowerBound.size();
            }
            return Iterators.size(entryIterator());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            if (this.upperBoundWindow.equals(Range.all())) {
                return this.rangesByLowerBound.isEmpty();
            }
            return !entryIterator().hasNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ComplementRangesByLowerBound<C extends Comparable<?>> extends AbstractNavigableMap<Cut<C>, Range<C>> {
        private final Range<Cut<C>> complementLowerBoundWindow;
        private final NavigableMap<Cut<C>, Range<C>> positiveRangesByLowerBound;
        private final NavigableMap<Cut<C>, Range<C>> positiveRangesByUpperBound;

        ComplementRangesByLowerBound(NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this(navigableMap, Range.all());
        }

        private ComplementRangesByLowerBound(NavigableMap<Cut<C>, Range<C>> navigableMap, Range<Cut<C>> range) {
            this.positiveRangesByLowerBound = navigableMap;
            this.positiveRangesByUpperBound = new RangesByUpperBound(navigableMap);
            this.complementLowerBoundWindow = range;
        }

        private NavigableMap<Cut<C>, Range<C>> subMap(Range<Cut<C>> range) {
            if (!this.complementLowerBoundWindow.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new ComplementRangesByLowerBound(this.positiveRangesByLowerBound, range.intersection(this.complementLowerBoundWindow));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return subMap(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return subMap(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return subMap(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public Iterator<Map.Entry<Cut<C>, Range<C>>> entryIterator() {
            Collection<Range<C>> values;
            Cut cut;
            if (this.complementLowerBoundWindow.hasLowerBound()) {
                values = this.positiveRangesByUpperBound.tailMap(this.complementLowerBoundWindow.lowerEndpoint(), this.complementLowerBoundWindow.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                values = this.positiveRangesByUpperBound.values();
            }
            PeekingIterator peekingIterator = Iterators.peekingIterator(values.iterator());
            if (this.complementLowerBoundWindow.contains(Cut.belowAll()) && (!peekingIterator.hasNext() || ((Range) peekingIterator.peek()).lowerBound != Cut.belowAll())) {
                cut = Cut.belowAll();
            } else if (peekingIterator.hasNext()) {
                cut = ((Range) peekingIterator.next()).upperBound;
            } else {
                return Iterators.emptyIterator();
            }
            return new AbstractIterator<Map.Entry<Cut<C>, Range<C>>>(cut, peekingIterator) { // from class: com.google.common.collect.TreeRangeSet.ComplementRangesByLowerBound.1
                Cut<C> nextComplementRangeLowerBound;
                final /* synthetic */ Cut val$firstComplementRangeLowerBound;
                final /* synthetic */ PeekingIterator val$positiveItr;

                {
                    this.val$firstComplementRangeLowerBound = cut;
                    this.val$positiveItr = peekingIterator;
                    this.nextComplementRangeLowerBound = cut;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public Map.Entry<Cut<C>, Range<C>> computeNext() {
                    Range create;
                    if (ComplementRangesByLowerBound.this.complementLowerBoundWindow.upperBound.isLessThan(this.nextComplementRangeLowerBound) || this.nextComplementRangeLowerBound == Cut.aboveAll()) {
                        return (Map.Entry) endOfData();
                    }
                    if (this.val$positiveItr.hasNext()) {
                        Range range = (Range) this.val$positiveItr.next();
                        create = Range.create(this.nextComplementRangeLowerBound, range.lowerBound);
                        this.nextComplementRangeLowerBound = range.upperBound;
                    } else {
                        create = Range.create(this.nextComplementRangeLowerBound, Cut.aboveAll());
                        this.nextComplementRangeLowerBound = Cut.aboveAll();
                    }
                    return Maps.immutableEntry(create.lowerBound, create);
                }
            };
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        Iterator<Map.Entry<Cut<C>, Range<C>>> descendingEntryIterator() {
            Cut<C> aboveAll;
            Cut<C> higherKey;
            if (this.complementLowerBoundWindow.hasUpperBound()) {
                aboveAll = this.complementLowerBoundWindow.upperEndpoint();
            } else {
                aboveAll = Cut.aboveAll();
            }
            PeekingIterator peekingIterator = Iterators.peekingIterator(this.positiveRangesByUpperBound.headMap(aboveAll, this.complementLowerBoundWindow.hasUpperBound() && this.complementLowerBoundWindow.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (peekingIterator.hasNext()) {
                if (((Range) peekingIterator.peek()).upperBound == Cut.aboveAll()) {
                    higherKey = ((Range) peekingIterator.next()).lowerBound;
                } else {
                    higherKey = this.positiveRangesByLowerBound.higherKey(((Range) peekingIterator.peek()).upperBound);
                }
            } else {
                if (!this.complementLowerBoundWindow.contains(Cut.belowAll()) || this.positiveRangesByLowerBound.containsKey(Cut.belowAll())) {
                    return Iterators.emptyIterator();
                }
                higherKey = this.positiveRangesByLowerBound.higherKey(Cut.belowAll());
            }
            return new AbstractIterator<Map.Entry<Cut<C>, Range<C>>>((Cut) MoreObjects.firstNonNull(higherKey, Cut.aboveAll()), peekingIterator) { // from class: com.google.common.collect.TreeRangeSet.ComplementRangesByLowerBound.2
                Cut<C> nextComplementRangeUpperBound;
                final /* synthetic */ Cut val$firstComplementRangeUpperBound;
                final /* synthetic */ PeekingIterator val$positiveItr;

                {
                    this.val$firstComplementRangeUpperBound = r2;
                    this.val$positiveItr = peekingIterator;
                    this.nextComplementRangeUpperBound = r2;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public Map.Entry<Cut<C>, Range<C>> computeNext() {
                    if (this.nextComplementRangeUpperBound == Cut.belowAll()) {
                        return (Map.Entry) endOfData();
                    }
                    if (!this.val$positiveItr.hasNext()) {
                        if (ComplementRangesByLowerBound.this.complementLowerBoundWindow.lowerBound.isLessThan(Cut.belowAll())) {
                            Range create = Range.create(Cut.belowAll(), this.nextComplementRangeUpperBound);
                            this.nextComplementRangeUpperBound = Cut.belowAll();
                            return Maps.immutableEntry(Cut.belowAll(), create);
                        }
                    } else {
                        Range range = (Range) this.val$positiveItr.next();
                        Range create2 = Range.create(range.upperBound, this.nextComplementRangeUpperBound);
                        this.nextComplementRangeUpperBound = range.lowerBound;
                        if (ComplementRangesByLowerBound.this.complementLowerBoundWindow.lowerBound.isLessThan(create2.lowerBound)) {
                            return Maps.immutableEntry(create2.lowerBound, create2);
                        }
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(entryIterator());
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.AbstractMap, java.util.Map
        @CheckForNull
        public Range<C> get(@CheckForNull Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut<C> cut = (Cut) obj;
                    Map.Entry<Cut<C>, Range<C>> firstEntry = tailMap((Cut) cut, true).firstEntry();
                    if (firstEntry != null && firstEntry.getKey().equals(cut)) {
                        return firstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }
    }

    /* loaded from: classes3.dex */
    private final class Complement extends TreeRangeSet<C> {
        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> complement() {
            return TreeRangeSet.this;
        }

        Complement() {
            super(new ComplementRangesByLowerBound(TreeRangeSet.this.rangesByLowerBound));
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return !TreeRangeSet.this.contains(c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class SubRangeSetRangesByLowerBound<C extends Comparable<?>> extends AbstractNavigableMap<Cut<C>, Range<C>> {
        private final Range<Cut<C>> lowerBoundWindow;
        private final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;
        private final NavigableMap<Cut<C>, Range<C>> rangesByUpperBound;
        private final Range<C> restriction;

        private SubRangeSetRangesByLowerBound(Range<Cut<C>> range, Range<C> range2, NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this.lowerBoundWindow = (Range) Preconditions.checkNotNull(range);
            this.restriction = (Range) Preconditions.checkNotNull(range2);
            this.rangesByLowerBound = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.rangesByUpperBound = new RangesByUpperBound(navigableMap);
        }

        private NavigableMap<Cut<C>, Range<C>> subMap(Range<Cut<C>> range) {
            if (!range.isConnected(this.lowerBoundWindow)) {
                return ImmutableSortedMap.of();
            }
            return new SubRangeSetRangesByLowerBound(this.lowerBoundWindow.intersection(range), this.restriction, this.rangesByLowerBound);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return subMap(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return subMap(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return subMap(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.AbstractMap, java.util.Map
        @CheckForNull
        public Range<C> get(@CheckForNull Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut<C> cut = (Cut) obj;
                    if (this.lowerBoundWindow.contains(cut) && cut.compareTo(this.restriction.lowerBound) >= 0 && cut.compareTo(this.restriction.upperBound) < 0) {
                        if (cut.equals(this.restriction.lowerBound)) {
                            Range range = (Range) Maps.valueOrNull(this.rangesByLowerBound.floorEntry(cut));
                            if (range != null && range.upperBound.compareTo((Cut) this.restriction.lowerBound) > 0) {
                                return range.intersection(this.restriction);
                            }
                        } else {
                            Range range2 = (Range) this.rangesByLowerBound.get(cut);
                            if (range2 != null) {
                                return range2.intersection(this.restriction);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public Iterator<Map.Entry<Cut<C>, Range<C>>> entryIterator() {
            final Iterator<Range<C>> it;
            if (this.restriction.isEmpty()) {
                return Iterators.emptyIterator();
            }
            if (this.lowerBoundWindow.upperBound.isLessThan(this.restriction.lowerBound)) {
                return Iterators.emptyIterator();
            }
            if (this.lowerBoundWindow.lowerBound.isLessThan(this.restriction.lowerBound)) {
                it = this.rangesByUpperBound.tailMap(this.restriction.lowerBound, false).values().iterator();
            } else {
                it = this.rangesByLowerBound.tailMap(this.lowerBoundWindow.lowerBound.endpoint(), this.lowerBoundWindow.lowerBoundType() == BoundType.CLOSED).values().iterator();
            }
            final Cut cut = (Cut) Ordering.natural().min(this.lowerBoundWindow.upperBound, Cut.belowValue(this.restriction.upperBound));
            return new AbstractIterator<Map.Entry<Cut<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.SubRangeSetRangesByLowerBound.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public Map.Entry<Cut<C>, Range<C>> computeNext() {
                    if (!it.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) it.next();
                    if (!cut.isLessThan(range.lowerBound)) {
                        Range intersection = range.intersection(SubRangeSetRangesByLowerBound.this.restriction);
                        return Maps.immutableEntry(intersection.lowerBound, intersection);
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        Iterator<Map.Entry<Cut<C>, Range<C>>> descendingEntryIterator() {
            if (this.restriction.isEmpty()) {
                return Iterators.emptyIterator();
            }
            Cut cut = (Cut) Ordering.natural().min(this.lowerBoundWindow.upperBound, Cut.belowValue(this.restriction.upperBound));
            final Iterator<Range<C>> it = this.rangesByLowerBound.headMap((Cut) cut.endpoint(), cut.typeAsUpperBound() == BoundType.CLOSED).descendingMap().values().iterator();
            return new AbstractIterator<Map.Entry<Cut<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.SubRangeSetRangesByLowerBound.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public Map.Entry<Cut<C>, Range<C>> computeNext() {
                    if (!it.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) it.next();
                    if (SubRangeSetRangesByLowerBound.this.restriction.lowerBound.compareTo((Cut) range.upperBound) < 0) {
                        Range intersection = range.intersection(SubRangeSetRangesByLowerBound.this.restriction);
                        if (SubRangeSetRangesByLowerBound.this.lowerBoundWindow.contains(intersection.lowerBound)) {
                            return Maps.immutableEntry(intersection.lowerBound, intersection);
                        }
                        return (Map.Entry) endOfData();
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(entryIterator());
        }
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new SubRangeSet(range);
    }

    /* loaded from: classes3.dex */
    private final class SubRangeSet extends TreeRangeSet<C> {
        private final Range<C> restriction;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        SubRangeSet(com.google.common.collect.Range<C> r5) {
            /*
                r3 = this;
                com.google.common.collect.TreeRangeSet.this = r4
                com.google.common.collect.TreeRangeSet$SubRangeSetRangesByLowerBound r0 = new com.google.common.collect.TreeRangeSet$SubRangeSetRangesByLowerBound
                com.google.common.collect.Range r1 = com.google.common.collect.Range.all()
                java.util.NavigableMap<com.google.common.collect.Cut<C extends java.lang.Comparable<?>>, com.google.common.collect.Range<C extends java.lang.Comparable<?>>> r4 = r4.rangesByLowerBound
                r2 = 0
                r0.<init>(r1, r5, r4)
                r3.<init>(r0)
                r3.restriction = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeRangeSet.SubRangeSet.<init>(com.google.common.collect.TreeRangeSet, com.google.common.collect.Range):void");
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public boolean encloses(Range<C> range) {
            Range rangeEnclosing;
            return (this.restriction.isEmpty() || !this.restriction.encloses(range) || (rangeEnclosing = TreeRangeSet.this.rangeEnclosing(range)) == null || rangeEnclosing.intersection(this.restriction).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        @CheckForNull
        public Range<C> rangeContaining(C c) {
            Range<C> rangeContaining;
            if (this.restriction.contains(c) && (rangeContaining = TreeRangeSet.this.rangeContaining(c)) != null) {
                return rangeContaining.intersection(this.restriction);
            }
            return null;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            Preconditions.checkArgument(this.restriction.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.restriction);
            TreeRangeSet.this.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            if (range.isConnected(this.restriction)) {
                TreeRangeSet.this.remove(range.intersection(this.restriction));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return this.restriction.contains(c) && TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.AbstractRangeSet, com.google.common.collect.RangeSet
        public void clear() {
            TreeRangeSet.this.remove(this.restriction);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> subRangeSet(Range<C> range) {
            if (range.encloses(this.restriction)) {
                return this;
            }
            if (range.isConnected(this.restriction)) {
                return new SubRangeSet(this, this.restriction.intersection(range));
            }
            return ImmutableRangeSet.of();
        }
    }
}
