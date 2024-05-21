package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class CompactHashSet<E> extends AbstractSet<E> implements Serializable {
    static final double HASH_FLOODING_FPP = 0.001d;
    private static final int MAX_HASH_BUCKET_LENGTH = 9;

    @CheckForNull
    transient Object[] elements;

    @CheckForNull
    private transient int[] entries;
    private transient int metadata;
    private transient int size;

    @CheckForNull
    private transient Object table;

    private int hashTableMask() {
        return (1 << (this.metadata & 31)) - 1;
    }

    int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.size) {
            return i2;
        }
        return -1;
    }

    void incrementModCount() {
        this.metadata += 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean needsAllocArrays() {
        return this.table == null;
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> createWithExpectedSize = createWithExpectedSize(collection.size());
        createWithExpectedSize.addAll(collection);
        return createWithExpectedSize;
    }

    @SafeVarargs
    public static <E> CompactHashSet<E> create(E... eArr) {
        CompactHashSet<E> createWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(createWithExpectedSize, eArr);
        return createWithExpectedSize;
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i) {
        return new CompactHashSet<>(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompactHashSet() {
        init(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompactHashSet(int i) {
        init(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.metadata = Ints.constrainToRange(i, 1, LockFreeTaskQueueCore.MAX_CAPACITY_MASK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int allocArrays() {
        Preconditions.checkState(needsAllocArrays(), "Arrays already allocated");
        int i = this.metadata;
        int tableSize = CompactHashing.tableSize(i);
        this.table = CompactHashing.createTable(tableSize);
        setHashTableMask(tableSize - 1);
        this.entries = new int[i];
        this.elements = new Object[i];
        return i;
    }

    @CheckForNull
    Set<E> delegateOrNull() {
        Object obj = this.table;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    private Set<E> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashSet(i, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<E> convertToHashFloodingResistantImplementation() {
        Set<E> createHashFloodingResistantDelegate = createHashFloodingResistantDelegate(hashTableMask() + 1);
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            createHashFloodingResistantDelegate.add(element(firstEntryIndex));
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
        this.table = createHashFloodingResistantDelegate;
        this.entries = null;
        this.elements = null;
        incrementModCount();
        return createHashFloodingResistantDelegate;
    }

    boolean isUsingHashFloodingResistance() {
        return delegateOrNull() != null;
    }

    private void setHashTableMask(int i) {
        this.metadata = CompactHashing.maskCombine(this.metadata, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(@ParametricNullness E e) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.add(e);
        }
        int[] requireEntries = requireEntries();
        Object[] requireElements = requireElements();
        int i = this.size;
        int i2 = i + 1;
        int smearedHash = Hashing.smearedHash(e);
        int hashTableMask = hashTableMask();
        int i3 = smearedHash & hashTableMask;
        int tableGet = CompactHashing.tableGet(requireTable(), i3);
        if (tableGet != 0) {
            int hashPrefix = CompactHashing.getHashPrefix(smearedHash, hashTableMask);
            int i4 = 0;
            while (true) {
                int i5 = tableGet - 1;
                int i6 = requireEntries[i5];
                if (CompactHashing.getHashPrefix(i6, hashTableMask) == hashPrefix && Objects.equal(e, requireElements[i5])) {
                    return false;
                }
                int next = CompactHashing.getNext(i6, hashTableMask);
                i4++;
                if (next != 0) {
                    tableGet = next;
                } else {
                    if (i4 >= 9) {
                        return convertToHashFloodingResistantImplementation().add(e);
                    }
                    if (i2 > hashTableMask) {
                        hashTableMask = resizeTable(hashTableMask, CompactHashing.newCapacity(hashTableMask), smearedHash, i);
                    } else {
                        requireEntries[i5] = CompactHashing.maskCombine(i6, i2, hashTableMask);
                    }
                }
            }
        } else if (i2 > hashTableMask) {
            hashTableMask = resizeTable(hashTableMask, CompactHashing.newCapacity(hashTableMask), smearedHash, i);
        } else {
            CompactHashing.tableSet(requireTable(), i3, i2);
        }
        resizeMeMaybe(i2);
        insertEntry(i, e, smearedHash, hashTableMask);
        this.size = i2;
        incrementModCount();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void insertEntry(int i, @ParametricNullness E e, int i2, int i3) {
        setEntry(i, CompactHashing.maskCombine(i2, 0, i3));
        setElement(i, e);
    }

    private void resizeMeMaybe(int i) {
        int min;
        int length = requireEntries().length;
        if (i <= length || (min = Math.min(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(min);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resizeEntries(int i) {
        this.entries = Arrays.copyOf(requireEntries(), i);
        this.elements = Arrays.copyOf(requireElements(), i);
    }

    private int resizeTable(int i, int i2, int i3, int i4) {
        Object createTable = CompactHashing.createTable(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            CompactHashing.tableSet(createTable, i3 & i5, i4 + 1);
        }
        Object requireTable = requireTable();
        int[] requireEntries = requireEntries();
        for (int i6 = 0; i6 <= i; i6++) {
            int tableGet = CompactHashing.tableGet(requireTable, i6);
            while (tableGet != 0) {
                int i7 = tableGet - 1;
                int i8 = requireEntries[i7];
                int hashPrefix = CompactHashing.getHashPrefix(i8, i) | i6;
                int i9 = hashPrefix & i5;
                int tableGet2 = CompactHashing.tableGet(createTable, i9);
                CompactHashing.tableSet(createTable, i9, tableGet);
                requireEntries[i7] = CompactHashing.maskCombine(hashPrefix, tableGet2, i5);
                tableGet = CompactHashing.getNext(i8, i);
            }
        }
        this.table = createTable;
        setHashTableMask(i5);
        return i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.contains(obj);
        }
        int smearedHash = Hashing.smearedHash(obj);
        int hashTableMask = hashTableMask();
        int tableGet = CompactHashing.tableGet(requireTable(), smearedHash & hashTableMask);
        if (tableGet == 0) {
            return false;
        }
        int hashPrefix = CompactHashing.getHashPrefix(smearedHash, hashTableMask);
        do {
            int i = tableGet - 1;
            int entry = entry(i);
            if (CompactHashing.getHashPrefix(entry, hashTableMask) == hashPrefix && Objects.equal(obj, element(i))) {
                return true;
            }
            tableGet = CompactHashing.getNext(entry, hashTableMask);
        } while (tableGet != 0);
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(@CheckForNull Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.remove(obj);
        }
        int hashTableMask = hashTableMask();
        int remove = CompactHashing.remove(obj, null, hashTableMask, requireTable(), requireEntries(), requireElements(), null);
        if (remove == -1) {
            return false;
        }
        moveLastEntry(remove, hashTableMask);
        this.size--;
        incrementModCount();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void moveLastEntry(int i, int i2) {
        Object requireTable = requireTable();
        int[] requireEntries = requireEntries();
        Object[] requireElements = requireElements();
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            Object obj = requireElements[i3];
            requireElements[i] = obj;
            requireElements[i3] = null;
            requireEntries[i] = requireEntries[i3];
            requireEntries[i3] = 0;
            int smearedHash = Hashing.smearedHash(obj) & i2;
            int tableGet = CompactHashing.tableGet(requireTable, smearedHash);
            if (tableGet == size) {
                CompactHashing.tableSet(requireTable, smearedHash, i + 1);
                return;
            }
            while (true) {
                int i4 = tableGet - 1;
                int i5 = requireEntries[i4];
                int next = CompactHashing.getNext(i5, i2);
                if (next == size) {
                    requireEntries[i4] = CompactHashing.maskCombine(i5, i + 1, i2);
                    return;
                }
                tableGet = next;
            }
        } else {
            requireElements[i] = null;
            requireEntries[i] = 0;
        }
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.iterator();
        }
        return new Iterator<E>() { // from class: com.google.common.collect.CompactHashSet.1
            int currentIndex;
            int expectedMetadata;
            int indexToRemove = -1;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.currentIndex >= 0;
            }

            void incrementExpectedModCount() {
                this.expectedMetadata += 32;
            }

            {
                this.expectedMetadata = CompactHashSet.this.metadata;
                this.currentIndex = CompactHashSet.this.firstEntryIndex();
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public E next() {
                checkForConcurrentModification();
                if (hasNext()) {
                    int i = this.currentIndex;
                    this.indexToRemove = i;
                    E e = (E) CompactHashSet.this.element(i);
                    this.currentIndex = CompactHashSet.this.getSuccessor(this.currentIndex);
                    return e;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                checkForConcurrentModification();
                CollectPreconditions.checkRemove(this.indexToRemove >= 0);
                incrementExpectedModCount();
                CompactHashSet compactHashSet = CompactHashSet.this;
                compactHashSet.remove(compactHashSet.element(this.indexToRemove));
                this.currentIndex = CompactHashSet.this.adjustAfterRemove(this.currentIndex, this.indexToRemove);
                this.indexToRemove = -1;
            }

            private void checkForConcurrentModification() {
                if (CompactHashSet.this.metadata != this.expectedMetadata) {
                    throw new ConcurrentModificationException();
                }
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        Set<E> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.size() : this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        if (needsAllocArrays()) {
            return new Object[0];
        }
        Set<E> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.toArray() : Arrays.copyOf(requireElements(), this.size);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (needsAllocArrays()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return (T[]) delegateOrNull.toArray(tArr);
        }
        return (T[]) ObjectArrays.toArrayImpl(requireElements(), 0, this.size, tArr);
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            Set<E> createHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            createHashFloodingResistantDelegate.addAll(delegateOrNull);
            this.table = createHashFloodingResistantDelegate;
            return;
        }
        int i = this.size;
        if (i < requireEntries().length) {
            resizeEntries(i);
        }
        int tableSize = CompactHashing.tableSize(i);
        int hashTableMask = hashTableMask();
        if (tableSize < hashTableMask) {
            resizeTable(hashTableMask, tableSize, 0, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            this.metadata = Ints.constrainToRange(size(), 3, LockFreeTaskQueueCore.MAX_CAPACITY_MASK);
            delegateOrNull.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(requireElements(), 0, this.size, (Object) null);
        CompactHashing.tableClear(requireTable());
        Arrays.fill(requireEntries(), 0, this.size, 0);
        this.size = 0;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            throw new InvalidObjectException(new StringBuilder(25).append("Invalid size: ").append(readInt).toString());
        }
        init(readInt);
        for (int i = 0; i < readInt; i++) {
            add(objectInputStream.readObject());
        }
    }

    private Object requireTable() {
        return java.util.Objects.requireNonNull(this.table);
    }

    private int[] requireEntries() {
        return (int[]) java.util.Objects.requireNonNull(this.entries);
    }

    private Object[] requireElements() {
        return (Object[]) java.util.Objects.requireNonNull(this.elements);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public E element(int i) {
        return (E) requireElements()[i];
    }

    private int entry(int i) {
        return requireEntries()[i];
    }

    private void setElement(int i, E e) {
        requireElements()[i] = e;
    }

    private void setEntry(int i, int i2) {
        requireEntries()[i] = i2;
    }
}
