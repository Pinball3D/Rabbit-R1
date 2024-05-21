package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class ImmutableSortedMap<K, V> extends ImmutableSortedMapFauxverideShim<K, V> implements NavigableMap<K, V> {
    private static final long serialVersionUID = 0;

    @CheckForNull
    private transient ImmutableSortedMap<K, V> descendingMap;
    private final transient RegularImmutableSortedSet<K> keySet;
    private final transient ImmutableList<V> valueList;
    private static final Comparator<Comparable> NATURAL_ORDER = Ordering.natural();
    private static final ImmutableSortedMap<Comparable, Object> NATURAL_EMPTY_MAP = new ImmutableSortedMap<>(ImmutableSortedSet.emptySet(Ordering.natural()), ImmutableList.of());

    public static <K, V> ImmutableSortedMap<K, V> of() {
        return (ImmutableSortedMap<K, V>) NATURAL_EMPTY_MAP;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSortedSet<K> keySet() {
        return this.keySet;
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> navigableKeySet() {
        return this.keySet;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, com.google.common.collect.BiMap
    public ImmutableCollection<V> values() {
        return this.valueList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap headMap(Object obj, boolean z) {
        return headMap((ImmutableSortedMap<K, V>) obj, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap((ImmutableSortedMap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return subMap((boolean) obj, z, (boolean) obj2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap tailMap(Object obj, boolean z) {
        return tailMap((ImmutableSortedMap<K, V>) obj, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap((ImmutableSortedMap<K, V>) obj);
    }

    static <K, V> ImmutableSortedMap<K, V> emptyMap(Comparator<? super K> comparator) {
        if (Ordering.natural().equals(comparator)) {
            return of();
        }
        return new ImmutableSortedMap<>(ImmutableSortedSet.emptySet(comparator), ImmutableList.of());
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj) {
        return of(Ordering.natural(), comparable, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> ImmutableSortedMap<K, V> of(Comparator<? super K> comparator, K k, V v) {
        return new ImmutableSortedMap<>(new RegularImmutableSortedSet(ImmutableList.of(k), (Comparator) Preconditions.checkNotNull(comparator)), ImmutableList.of(v));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3), entryOf(comparable4, obj4));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3), entryOf(comparable4, obj4), entryOf(comparable5, obj5));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3), entryOf(comparable4, obj4), entryOf(comparable5, obj5), entryOf(comparable6, obj6));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3), entryOf(comparable4, obj4), entryOf(comparable5, obj5), entryOf(comparable6, obj6), entryOf(comparable7, obj7));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3), entryOf(comparable4, obj4), entryOf(comparable5, obj5), entryOf(comparable6, obj6), entryOf(comparable7, obj7), entryOf(comparable8, obj8));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3), entryOf(comparable4, obj4), entryOf(comparable5, obj5), entryOf(comparable6, obj6), entryOf(comparable7, obj7), entryOf(comparable8, obj8), entryOf(comparable9, obj9));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9, Comparable comparable10, Object obj10) {
        return fromEntries(entryOf(comparable, obj), entryOf(comparable2, obj2), entryOf(comparable3, obj3), entryOf(comparable4, obj4), entryOf(comparable5, obj5), entryOf(comparable6, obj6), entryOf(comparable7, obj7), entryOf(comparable8, obj8), entryOf(comparable9, obj9), entryOf(comparable10, obj10));
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        return copyOfInternal(map, (Ordering) NATURAL_ORDER);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return copyOfInternal(map, (Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return copyOf(iterable, (Ordering) NATURAL_ORDER);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable, Comparator<? super K> comparator) {
        return fromEntries((Comparator) Preconditions.checkNotNull(comparator), false, iterable);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOfSorted(SortedMap<K, ? extends V> sortedMap) {
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = NATURAL_ORDER;
        }
        if (sortedMap instanceof ImmutableSortedMap) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) sortedMap;
            if (!immutableSortedMap.isPartialView()) {
                return immutableSortedMap;
            }
        }
        return fromEntries(comparator, true, sortedMap.entrySet());
    }

    private static <K, V> ImmutableSortedMap<K, V> copyOfInternal(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        boolean equals;
        boolean z = false;
        if (map instanceof SortedMap) {
            Comparator<? super K> comparator2 = ((SortedMap) map).comparator();
            if (comparator2 != null) {
                equals = comparator.equals(comparator2);
            } else if (comparator == NATURAL_ORDER) {
                equals = true;
            }
            z = equals;
        }
        if (z && (map instanceof ImmutableSortedMap)) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) map;
            if (!immutableSortedMap.isPartialView()) {
                return immutableSortedMap;
            }
        }
        return fromEntries(comparator, z, map.entrySet());
    }

    private static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> fromEntries(Map.Entry<K, V>... entryArr) {
        return fromEntries(Ordering.natural(), false, entryArr, entryArr.length);
    }

    private static <K, V> ImmutableSortedMap<K, V> fromEntries(Comparator<? super K> comparator, boolean z, Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) Iterables.toArray(iterable, EMPTY_ENTRY_ARRAY);
        return fromEntries(comparator, z, entryArr, entryArr.length);
    }

    private static <K, V> ImmutableSortedMap<K, V> fromEntries(final Comparator<? super K> comparator, boolean z, Map.Entry<K, V>[] entryArr, int i) {
        if (i == 0) {
            return emptyMap(comparator);
        }
        if (i == 1) {
            Map.Entry entry = (Map.Entry) Objects.requireNonNull(entryArr[0]);
            return of(comparator, entry.getKey(), entry.getValue());
        }
        Object[] objArr = new Object[i];
        Object[] objArr2 = new Object[i];
        if (z) {
            for (int i2 = 0; i2 < i; i2++) {
                Map.Entry entry2 = (Map.Entry) Objects.requireNonNull(entryArr[i2]);
                Object key = entry2.getKey();
                Object value = entry2.getValue();
                CollectPreconditions.checkEntryNotNull(key, value);
                objArr[i2] = key;
                objArr2[i2] = value;
            }
        } else {
            Arrays.sort(entryArr, 0, i, new Comparator<Map.Entry<K, V>>() { // from class: com.google.common.collect.ImmutableSortedMap.1
                @Override // java.util.Comparator
                public int compare(@CheckForNull Map.Entry<K, V> entry3, @CheckForNull Map.Entry<K, V> entry4) {
                    Objects.requireNonNull(entry3);
                    Objects.requireNonNull(entry4);
                    return comparator.compare(entry3.getKey(), entry4.getKey());
                }
            });
            Map.Entry entry3 = (Map.Entry) Objects.requireNonNull(entryArr[0]);
            Object key2 = entry3.getKey();
            objArr[0] = key2;
            Object value2 = entry3.getValue();
            objArr2[0] = value2;
            CollectPreconditions.checkEntryNotNull(objArr[0], value2);
            int i3 = 1;
            while (i3 < i) {
                Map.Entry entry4 = (Map.Entry) Objects.requireNonNull(entryArr[i3 - 1]);
                Map.Entry entry5 = (Map.Entry) Objects.requireNonNull(entryArr[i3]);
                Object key3 = entry5.getKey();
                Object value3 = entry5.getValue();
                CollectPreconditions.checkEntryNotNull(key3, value3);
                objArr[i3] = key3;
                objArr2[i3] = value3;
                checkNoConflict(comparator.compare(key2, key3) != 0, "key", entry4, entry5);
                i3++;
                key2 = key3;
            }
        }
        return new ImmutableSortedMap<>(new RegularImmutableSortedSet(ImmutableList.asImmutableList(objArr), comparator), ImmutableList.asImmutableList(objArr2));
    }

    public static <K extends Comparable<?>, V> Builder<K, V> naturalOrder() {
        return new Builder<>(Ordering.natural());
    }

    public static <K, V> Builder<K, V> orderedBy(Comparator<K> comparator) {
        return new Builder<>(comparator);
    }

    public static <K extends Comparable<?>, V> Builder<K, V> reverseOrder() {
        return new Builder<>(Ordering.natural().reverse());
    }

    /* loaded from: classes3.dex */
    public static class Builder<K, V> extends ImmutableMap.Builder<K, V> {
        private final Comparator<? super K> comparator;
        private transient Object[] keys;
        private transient Object[] values;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMap.Builder
        public /* bridge */ /* synthetic */ ImmutableMap.Builder put(Object obj, Object obj2) {
            return put((Builder<K, V>) obj, obj2);
        }

        public Builder(Comparator<? super K> comparator) {
            this(comparator, 4);
        }

        private Builder(Comparator<? super K> comparator, int i) {
            this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
            this.keys = new Object[i];
            this.values = new Object[i];
        }

        private void ensureCapacity(int i) {
            Object[] objArr = this.keys;
            if (i > objArr.length) {
                int expandedCapacity = ImmutableCollection.Builder.expandedCapacity(objArr.length, i);
                this.keys = Arrays.copyOf(this.keys, expandedCapacity);
                this.values = Arrays.copyOf(this.values, expandedCapacity);
            }
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public Builder<K, V> put(K k, V v) {
            ensureCapacity(this.size + 1);
            CollectPreconditions.checkEntryNotNull(k, v);
            this.keys[this.size] = k;
            this.values[this.size] = v;
            this.size++;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            super.put((Map.Entry) entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public Builder<K, V> putAll(Map<? extends K, ? extends V> map) {
            super.putAll((Map) map);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public Builder<K, V> putAll(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.putAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        @Deprecated
        public final Builder<K, V> orderEntriesByValue(Comparator<? super V> comparator) {
            throw new UnsupportedOperationException("Not available on ImmutableSortedMap.Builder");
        }

        Builder<K, V> combine(Builder<K, V> builder) {
            ensureCapacity(this.size + builder.size);
            System.arraycopy(builder.keys, 0, this.keys, this.size, builder.size);
            System.arraycopy(builder.values, 0, this.values, this.size, builder.size);
            this.size += builder.size;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public ImmutableSortedMap<K, V> build() {
            return buildOrThrow();
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public ImmutableSortedMap<K, V> buildOrThrow() {
            int i = this.size;
            if (i == 0) {
                return ImmutableSortedMap.emptyMap(this.comparator);
            }
            if (i == 1) {
                return ImmutableSortedMap.of(this.comparator, Objects.requireNonNull(this.keys[0]), Objects.requireNonNull(this.values[0]));
            }
            Object[] copyOf = Arrays.copyOf(this.keys, this.size);
            Arrays.sort(copyOf, this.comparator);
            Object[] objArr = new Object[this.size];
            for (int i2 = 0; i2 < this.size; i2++) {
                if (i2 > 0) {
                    int i3 = i2 - 1;
                    if (this.comparator.compare(copyOf[i3], copyOf[i2]) == 0) {
                        String valueOf = String.valueOf(copyOf[i3]);
                        String valueOf2 = String.valueOf(copyOf[i2]);
                        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length()).append("keys required to be distinct but compared as equal: ").append(valueOf).append(" and ").append(valueOf2).toString());
                    }
                }
                objArr[Arrays.binarySearch(copyOf, Objects.requireNonNull(this.keys[i2]), this.comparator)] = Objects.requireNonNull(this.values[i2]);
            }
            return new ImmutableSortedMap<>(new RegularImmutableSortedSet(ImmutableList.asImmutableList(copyOf), this.comparator), ImmutableList.asImmutableList(objArr));
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        @Deprecated
        public final ImmutableSortedMap<K, V> buildKeepingLast() {
            throw new UnsupportedOperationException("ImmutableSortedMap.Builder does not yet implement buildKeepingLast()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedMap(RegularImmutableSortedSet<K> regularImmutableSortedSet, ImmutableList<V> immutableList) {
        this(regularImmutableSortedSet, immutableList, null);
    }

    ImmutableSortedMap(RegularImmutableSortedSet<K> regularImmutableSortedSet, ImmutableList<V> immutableList, @CheckForNull ImmutableSortedMap<K, V> immutableSortedMap) {
        this.keySet = regularImmutableSortedSet;
        this.valueList = immutableList;
        this.descendingMap = immutableSortedMap;
    }

    @Override // java.util.Map
    public int size() {
        return this.valueList.size();
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        int indexOf = this.keySet.indexOf(obj);
        if (indexOf == -1) {
            return null;
        }
        return this.valueList.get(indexOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return this.keySet.isPartialView() || this.valueList.isPartialView();
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new ImmutableMapEntrySet<K, V>() { // from class: com.google.common.collect.ImmutableSortedMap.1EntrySet
            @Override // com.google.common.collect.ImmutableMapEntrySet
            ImmutableMap<K, V> map() {
                return ImmutableSortedMap.this;
            }

            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
            public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
                return asList().iterator();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableSet
            public ImmutableList<Map.Entry<K, V>> createAsList() {
                return new ImmutableList<Map.Entry<K, V>>() { // from class: com.google.common.collect.ImmutableSortedMap.1EntrySet.1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // com.google.common.collect.ImmutableCollection
                    public boolean isPartialView() {
                        return true;
                    }

                    @Override // java.util.List
                    public Map.Entry<K, V> get(int i) {
                        return new AbstractMap.SimpleImmutableEntry(ImmutableSortedMap.this.keySet.asList().get(i), ImmutableSortedMap.this.valueList.get(i));
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return ImmutableSortedMap.this.size();
                    }
                };
            }
        };
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> createValues() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return keySet().comparator();
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return keySet().first();
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return keySet().last();
    }

    private ImmutableSortedMap<K, V> getSubMap(int i, int i2) {
        if (i == 0 && i2 == size()) {
            return this;
        }
        if (i == i2) {
            return emptyMap(comparator());
        }
        return new ImmutableSortedMap<>(this.keySet.getSubSet(i, i2), this.valueList.subList(i, i2));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> headMap(K k) {
        return headMap((ImmutableSortedMap<K, V>) k, false);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> headMap(K k, boolean z) {
        return getSubMap(0, this.keySet.headIndex(Preconditions.checkNotNull(k), z));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> subMap(K k, K k2) {
        return subMap((boolean) k, true, (boolean) k2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(k2);
        Preconditions.checkArgument(comparator().compare(k, k2) <= 0, "expected fromKey <= toKey but %s > %s", k, k2);
        return headMap((ImmutableSortedMap<K, V>) k2, z2).tailMap((ImmutableSortedMap<K, V>) k, z);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> tailMap(K k) {
        return tailMap((ImmutableSortedMap<K, V>) k, true);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> tailMap(K k, boolean z) {
        return getSubMap(this.keySet.tailIndex(Preconditions.checkNotNull(k), z), size());
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> lowerEntry(K k) {
        return headMap((ImmutableSortedMap<K, V>) k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K lowerKey(K k) {
        return (K) Maps.keyOrNull(lowerEntry(k));
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> floorEntry(K k) {
        return headMap((ImmutableSortedMap<K, V>) k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K floorKey(K k) {
        return (K) Maps.keyOrNull(floorEntry(k));
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> ceilingEntry(K k) {
        return tailMap((ImmutableSortedMap<K, V>) k, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K ceilingKey(K k) {
        return (K) Maps.keyOrNull(ceilingEntry(k));
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> higherEntry(K k) {
        return tailMap((ImmutableSortedMap<K, V>) k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public K higherKey(K k) {
        return (K) Maps.keyOrNull(higherEntry(k));
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(0);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    public Map.Entry<K, V> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(size() - 1);
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    @Deprecated
    public final Map.Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @CheckForNull
    @Deprecated
    public final Map.Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> descendingMap() {
        ImmutableSortedMap<K, V> immutableSortedMap = this.descendingMap;
        if (immutableSortedMap != null) {
            return immutableSortedMap;
        }
        if (isEmpty()) {
            return emptyMap(Ordering.from(comparator()).reverse());
        }
        return new ImmutableSortedMap<>((RegularImmutableSortedSet) this.keySet.descendingSet(), this.valueList.reverse(), this);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> descendingKeySet() {
        return this.keySet.descendingSet();
    }

    /* loaded from: classes3.dex */
    private static class SerializedForm<K, V> extends ImmutableMap.SerializedForm<K, V> {
        private static final long serialVersionUID = 0;
        private final Comparator<? super K> comparator;

        SerializedForm(ImmutableSortedMap<K, V> immutableSortedMap) {
            super(immutableSortedMap);
            this.comparator = immutableSortedMap.comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.SerializedForm
        public Builder<K, V> makeBuilder(int i) {
            return new Builder<>(this.comparator);
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new SerializedForm(this);
    }
}
