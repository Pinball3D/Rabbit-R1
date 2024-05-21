package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class LinkedHashMultimap<K, V> extends LinkedHashMultimapGwtSerializationDependencies<K, V> {
    private static final int DEFAULT_KEY_CAPACITY = 16;
    private static final int DEFAULT_VALUE_SET_CAPACITY = 2;
    static final double VALUE_SET_LOAD_FACTOR = 1.0d;
    private static final long serialVersionUID = 1;
    private transient ValueEntry<K, V> multimapHeaderEntry;
    transient int valueSetCapacity;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface ValueSetLink<K, V> {
        ValueSetLink<K, V> getPredecessorInValueSet();

        ValueSetLink<K, V> getSuccessorInValueSet();

        void setPredecessorInValueSet(ValueSetLink<K, V> valueSetLink);

        void setSuccessorInValueSet(ValueSetLink<K, V> valueSetLink);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@CheckForNull Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set get(@ParametricNullness Object obj) {
        return super.get(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean put(@ParametricNullness Object obj, @ParametricNullness Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean putAll(@ParametricNullness Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set removeAll(@CheckForNull Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((LinkedHashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.AbstractMultimap
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.capacity(i), Maps.capacity(i2));
    }

    public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        LinkedHashMultimap<K, V> create = create(multimap.keySet().size(), 2);
        create.putAll(multimap);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInValueSet(ValueSetLink<K, V> valueSetLink, ValueSetLink<K, V> valueSetLink2) {
        valueSetLink.setSuccessorInValueSet(valueSetLink2);
        valueSetLink2.setPredecessorInValueSet(valueSetLink);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInMultimap(ValueEntry<K, V> valueEntry, ValueEntry<K, V> valueEntry2) {
        valueEntry.setSuccessorInMultimap(valueEntry2);
        valueEntry2.setPredecessorInMultimap(valueEntry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromValueSet(ValueSetLink<K, V> valueSetLink) {
        succeedsInValueSet(valueSetLink.getPredecessorInValueSet(), valueSetLink.getSuccessorInValueSet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromMultimap(ValueEntry<K, V> valueEntry) {
        succeedsInMultimap(valueEntry.getPredecessorInMultimap(), valueEntry.getSuccessorInMultimap());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class ValueEntry<K, V> extends ImmutableEntry<K, V> implements ValueSetLink<K, V> {

        @CheckForNull
        ValueEntry<K, V> nextInValueBucket;

        @CheckForNull
        ValueEntry<K, V> predecessorInMultimap;

        @CheckForNull
        ValueSetLink<K, V> predecessorInValueSet;
        final int smearedValueHash;

        @CheckForNull
        ValueEntry<K, V> successorInMultimap;

        @CheckForNull
        ValueSetLink<K, V> successorInValueSet;

        public void setPredecessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.predecessorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setPredecessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.predecessorInValueSet = valueSetLink;
        }

        public void setSuccessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.successorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setSuccessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.successorInValueSet = valueSetLink;
        }

        ValueEntry(@ParametricNullness K k, @ParametricNullness V v, int i, @CheckForNull ValueEntry<K, V> valueEntry) {
            super(k, v);
            this.smearedValueHash = i;
            this.nextInValueBucket = valueEntry;
        }

        static <K, V> ValueEntry<K, V> newHeader() {
            return new ValueEntry<>(null, null, 0, null);
        }

        boolean matchesValue(@CheckForNull Object obj, int i) {
            return this.smearedValueHash == i && Objects.equal(getValue(), obj);
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getPredecessorInValueSet() {
            return (ValueSetLink) java.util.Objects.requireNonNull(this.predecessorInValueSet);
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getSuccessorInValueSet() {
            return (ValueSetLink) java.util.Objects.requireNonNull(this.successorInValueSet);
        }

        public ValueEntry<K, V> getPredecessorInMultimap() {
            return (ValueEntry) java.util.Objects.requireNonNull(this.predecessorInMultimap);
        }

        public ValueEntry<K, V> getSuccessorInMultimap() {
            return (ValueEntry) java.util.Objects.requireNonNull(this.successorInMultimap);
        }
    }

    private LinkedHashMultimap(int i, int i2) {
        super(Platform.newLinkedHashMapWithExpectedSize(i));
        this.valueSetCapacity = 2;
        CollectPreconditions.checkNonnegative(i2, "expectedValuesPerKey");
        this.valueSetCapacity = i2;
        ValueEntry<K, V> newHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = newHeader;
        succeedsInMultimap(newHeader, newHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public Set<V> createCollection() {
        return Platform.newLinkedHashSetWithExpectedSize(this.valueSetCapacity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public Collection<V> createCollection(@ParametricNullness K k) {
        return new ValueSet(k, this.valueSetCapacity);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        return super.replaceValues((Object) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Set<K> keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class ValueSet extends Sets.ImprovedAbstractSet<V> implements ValueSetLink<K, V> {
        ValueEntry<K, V>[] hashTable;

        @ParametricNullness
        private final K key;
        private int size = 0;
        private int modCount = 0;
        private ValueSetLink<K, V> firstEntry = this;
        private ValueSetLink<K, V> lastEntry = this;

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getPredecessorInValueSet() {
            return this.lastEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getSuccessorInValueSet() {
            return this.firstEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setPredecessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.lastEntry = valueSetLink;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setSuccessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.firstEntry = valueSetLink;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.size;
        }

        ValueSet(@ParametricNullness K k, int i) {
            this.key = k;
            this.hashTable = new ValueEntry[Hashing.closedTableSize(i, 1.0d)];
        }

        private int mask() {
            return this.hashTable.length - 1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new Iterator<V>() { // from class: com.google.common.collect.LinkedHashMultimap.ValueSet.1
                int expectedModCount;
                ValueSetLink<K, V> nextEntry;

                @CheckForNull
                ValueEntry<K, V> toRemove;

                {
                    this.nextEntry = ValueSet.this.firstEntry;
                    this.expectedModCount = ValueSet.this.modCount;
                }

                private void checkForComodification() {
                    if (ValueSet.this.modCount != this.expectedModCount) {
                        throw new ConcurrentModificationException();
                    }
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    checkForComodification();
                    return this.nextEntry != ValueSet.this;
                }

                @Override // java.util.Iterator
                @ParametricNullness
                public V next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    ValueEntry<K, V> valueEntry = (ValueEntry) this.nextEntry;
                    V value = valueEntry.getValue();
                    this.toRemove = valueEntry;
                    this.nextEntry = valueEntry.getSuccessorInValueSet();
                    return value;
                }

                @Override // java.util.Iterator
                public void remove() {
                    checkForComodification();
                    Preconditions.checkState(this.toRemove != null, "no calls to next() since the last call to remove()");
                    ValueSet.this.remove(this.toRemove.getValue());
                    this.expectedModCount = ValueSet.this.modCount;
                    this.toRemove = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            int smearedHash = Hashing.smearedHash(obj);
            for (ValueEntry<K, V> valueEntry = this.hashTable[mask() & smearedHash]; valueEntry != null; valueEntry = valueEntry.nextInValueBucket) {
                if (valueEntry.matchesValue(obj, smearedHash)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(@ParametricNullness V v) {
            int smearedHash = Hashing.smearedHash(v);
            int mask = mask() & smearedHash;
            ValueEntry<K, V> valueEntry = this.hashTable[mask];
            for (ValueEntry<K, V> valueEntry2 = valueEntry; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(v, smearedHash)) {
                    return false;
                }
            }
            ValueEntry<K, V> valueEntry3 = new ValueEntry<>(this.key, v, smearedHash, valueEntry);
            LinkedHashMultimap.succeedsInValueSet(this.lastEntry, valueEntry3);
            LinkedHashMultimap.succeedsInValueSet(valueEntry3, this);
            LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.getPredecessorInMultimap(), valueEntry3);
            LinkedHashMultimap.succeedsInMultimap(valueEntry3, LinkedHashMultimap.this.multimapHeaderEntry);
            this.hashTable[mask] = valueEntry3;
            this.size++;
            this.modCount++;
            rehashIfNecessary();
            return true;
        }

        private void rehashIfNecessary() {
            if (Hashing.needsResizing(this.size, this.hashTable.length, 1.0d)) {
                int length = this.hashTable.length * 2;
                ValueEntry<K, V>[] valueEntryArr = new ValueEntry[length];
                this.hashTable = valueEntryArr;
                int i = length - 1;
                for (ValueSetLink<K, V> valueSetLink = this.firstEntry; valueSetLink != this; valueSetLink = valueSetLink.getSuccessorInValueSet()) {
                    ValueEntry<K, V> valueEntry = (ValueEntry) valueSetLink;
                    int i2 = valueEntry.smearedValueHash & i;
                    valueEntry.nextInValueBucket = valueEntryArr[i2];
                    valueEntryArr[i2] = valueEntry;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            int smearedHash = Hashing.smearedHash(obj);
            int mask = mask() & smearedHash;
            ValueEntry<K, V> valueEntry = null;
            for (ValueEntry<K, V> valueEntry2 = this.hashTable[mask]; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, smearedHash)) {
                    if (valueEntry == null) {
                        this.hashTable[mask] = valueEntry2.nextInValueBucket;
                    } else {
                        valueEntry.nextInValueBucket = valueEntry2.nextInValueBucket;
                    }
                    LinkedHashMultimap.deleteFromValueSet(valueEntry2);
                    LinkedHashMultimap.deleteFromMultimap(valueEntry2);
                    this.size--;
                    this.modCount++;
                    return true;
                }
                valueEntry = valueEntry2;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.hashTable, (Object) null);
            this.size = 0;
            for (ValueSetLink<K, V> valueSetLink = this.firstEntry; valueSetLink != this; valueSetLink = valueSetLink.getSuccessorInValueSet()) {
                LinkedHashMultimap.deleteFromMultimap((ValueEntry) valueSetLink);
            }
            LinkedHashMultimap.succeedsInValueSet(this, this);
            this.modCount++;
        }
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new Iterator<Map.Entry<K, V>>() { // from class: com.google.common.collect.LinkedHashMultimap.1
            ValueEntry<K, V> nextEntry;

            @CheckForNull
            ValueEntry<K, V> toRemove;

            {
                this.nextEntry = LinkedHashMultimap.this.multimapHeaderEntry.getSuccessorInMultimap();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.nextEntry != LinkedHashMultimap.this.multimapHeaderEntry;
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                ValueEntry<K, V> valueEntry = this.nextEntry;
                this.toRemove = valueEntry;
                this.nextEntry = valueEntry.getSuccessorInMultimap();
                return valueEntry;
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.toRemove != null, "no calls to next() since the last call to remove()");
                LinkedHashMultimap.this.remove(this.toRemove.getKey(), this.toRemove.getValue());
                this.toRemove = null;
            }
        };
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
    Iterator<V> valueIterator() {
        return Maps.valueIterator(entryIterator());
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public void clear() {
        super.clear();
        ValueEntry<K, V> valueEntry = this.multimapHeaderEntry;
        succeedsInMultimap(valueEntry, valueEntry);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        ValueEntry<K, V> newHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = newHeader;
        succeedsInMultimap(newHeader, newHeader);
        this.valueSetCapacity = 2;
        int readInt = objectInputStream.readInt();
        Map newLinkedHashMapWithExpectedSize = Platform.newLinkedHashMapWithExpectedSize(12);
        for (int i = 0; i < readInt; i++) {
            Object readObject = objectInputStream.readObject();
            newLinkedHashMapWithExpectedSize.put(readObject, createCollection(readObject));
        }
        int readInt2 = objectInputStream.readInt();
        for (int i2 = 0; i2 < readInt2; i2++) {
            ((Collection) java.util.Objects.requireNonNull((Collection) newLinkedHashMapWithExpectedSize.get(objectInputStream.readObject()))).add(objectInputStream.readObject());
        }
        setMap(newLinkedHashMapWithExpectedSize);
    }
}
