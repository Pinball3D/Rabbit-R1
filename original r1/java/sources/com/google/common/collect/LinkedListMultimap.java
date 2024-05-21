package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class LinkedListMultimap<K, V> extends AbstractMultimap<K, V> implements ListMultimap<K, V>, Serializable {
    private static final long serialVersionUID = 0;

    @CheckForNull
    private transient Node<K, V> head;
    private transient Map<K, KeyList<K, V>> keyToKeyList;
    private transient int modCount;
    private transient int size;

    @CheckForNull
    private transient Node<K, V> tail;

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@ParametricNullness Object obj) {
        return get((LinkedListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@ParametricNullness Object obj, Iterable iterable) {
        return replaceValues((LinkedListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class Node<K, V> extends AbstractMapEntry<K, V> {

        @ParametricNullness
        final K key;

        @CheckForNull
        Node<K, V> next;

        @CheckForNull
        Node<K, V> nextSibling;

        @CheckForNull
        Node<K, V> previous;

        @CheckForNull
        Node<K, V> previousSibling;

        @ParametricNullness
        V value;

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        @ParametricNullness
        public K getKey() {
            return this.key;
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        @ParametricNullness
        public V getValue() {
            return this.value;
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        @ParametricNullness
        public V setValue(@ParametricNullness V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        Node(@ParametricNullness K k, @ParametricNullness V v) {
            this.key = k;
            this.value = v;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class KeyList<K, V> {
        int count;
        Node<K, V> head;
        Node<K, V> tail;

        KeyList(Node<K, V> node) {
            this.head = node;
            this.tail = node;
            node.previousSibling = null;
            node.nextSibling = null;
            this.count = 1;
        }
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i) {
        return new LinkedListMultimap<>(i);
    }

    public static <K, V> LinkedListMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new LinkedListMultimap<>(multimap);
    }

    LinkedListMultimap() {
        this(12);
    }

    private LinkedListMultimap(int i) {
        this.keyToKeyList = Platform.newHashMapWithExpectedSize(i);
    }

    private LinkedListMultimap(Multimap<? extends K, ? extends V> multimap) {
        this(multimap.keySet().size());
        putAll(multimap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Node<K, V> addNode(@ParametricNullness K k, @ParametricNullness V v, @CheckForNull Node<K, V> node) {
        Node<K, V> node2 = new Node<>(k, v);
        if (this.head == null) {
            this.tail = node2;
            this.head = node2;
            this.keyToKeyList.put(k, new KeyList<>(node2));
            this.modCount++;
        } else if (node == null) {
            ((Node) Objects.requireNonNull(this.tail)).next = node2;
            node2.previous = this.tail;
            this.tail = node2;
            KeyList<K, V> keyList = this.keyToKeyList.get(k);
            if (keyList == null) {
                this.keyToKeyList.put(k, new KeyList<>(node2));
                this.modCount++;
            } else {
                keyList.count++;
                Node<K, V> node3 = keyList.tail;
                node3.nextSibling = node2;
                node2.previousSibling = node3;
                keyList.tail = node2;
            }
        } else {
            KeyList keyList2 = (KeyList) Objects.requireNonNull(this.keyToKeyList.get(k));
            keyList2.count++;
            node2.previous = node.previous;
            node2.previousSibling = node.previousSibling;
            node2.next = node;
            node2.nextSibling = node;
            if (node.previousSibling == null) {
                keyList2.head = node2;
            } else {
                node.previousSibling.nextSibling = node2;
            }
            if (node.previous == null) {
                this.head = node2;
            } else {
                node.previous.next = node2;
            }
            node.previous = node2;
            node.previousSibling = node2;
        }
        this.size++;
        return node2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNode(Node<K, V> node) {
        if (node.previous != null) {
            node.previous.next = node.next;
        } else {
            this.head = node.next;
        }
        if (node.next != null) {
            node.next.previous = node.previous;
        } else {
            this.tail = node.previous;
        }
        if (node.previousSibling == null && node.nextSibling == null) {
            ((KeyList) Objects.requireNonNull(this.keyToKeyList.remove(node.key))).count = 0;
            this.modCount++;
        } else {
            KeyList keyList = (KeyList) Objects.requireNonNull(this.keyToKeyList.get(node.key));
            keyList.count--;
            if (node.previousSibling == null) {
                keyList.head = (Node) Objects.requireNonNull(node.nextSibling);
            } else {
                node.previousSibling.nextSibling = node.nextSibling;
            }
            if (node.nextSibling == null) {
                keyList.tail = (Node) Objects.requireNonNull(node.previousSibling);
            } else {
                node.nextSibling.previousSibling = node.previousSibling;
            }
        }
        this.size--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllNodes(@ParametricNullness K k) {
        Iterators.clear(new ValueForKeyIterator(k));
    }

    /* loaded from: classes3.dex */
    private class NodeIterator implements ListIterator<Map.Entry<K, V>> {

        @CheckForNull
        Node<K, V> current;
        int expectedModCount;

        @CheckForNull
        Node<K, V> next;
        int nextIndex;

        @CheckForNull
        Node<K, V> previous;

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.nextIndex;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.nextIndex - 1;
        }

        NodeIterator(int i) {
            this.expectedModCount = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            Preconditions.checkPositionIndex(i, size);
            if (i >= size / 2) {
                this.previous = LinkedListMultimap.this.tail;
                this.nextIndex = size;
                while (true) {
                    int i2 = i + 1;
                    if (i >= size) {
                        break;
                    }
                    previous();
                    i = i2;
                }
            } else {
                this.next = LinkedListMultimap.this.head;
                while (true) {
                    int i3 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i3;
                }
            }
            this.current = null;
        }

        private void checkForConcurrentModification() {
            if (LinkedListMultimap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            checkForConcurrentModification();
            return this.next != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Node<K, V> next() {
            checkForConcurrentModification();
            Node<K, V> node = this.next;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.previous = node;
            this.next = node.next;
            this.nextIndex++;
            return this.current;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            checkForConcurrentModification();
            Preconditions.checkState(this.current != null, "no calls to next() since the last call to remove()");
            Node<K, V> node = this.current;
            if (node != this.next) {
                this.previous = node.previous;
                this.nextIndex--;
            } else {
                this.next = node.next;
            }
            LinkedListMultimap.this.removeNode(this.current);
            this.current = null;
            this.expectedModCount = LinkedListMultimap.this.modCount;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            checkForConcurrentModification();
            return this.previous != null;
        }

        @Override // java.util.ListIterator
        public Node<K, V> previous() {
            checkForConcurrentModification();
            Node<K, V> node = this.previous;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.next = node;
            this.previous = node.previous;
            this.nextIndex--;
            return this.current;
        }

        @Override // java.util.ListIterator
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        void setValue(@ParametricNullness V v) {
            Preconditions.checkState(this.current != null);
            this.current.value = v;
        }
    }

    /* loaded from: classes3.dex */
    private class DistinctKeyIterator implements Iterator<K> {

        @CheckForNull
        Node<K, V> current;
        int expectedModCount;

        @CheckForNull
        Node<K, V> next;
        final Set<K> seenKeys;

        private DistinctKeyIterator() {
            this.seenKeys = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());
            this.next = LinkedListMultimap.this.head;
            this.expectedModCount = LinkedListMultimap.this.modCount;
        }

        private void checkForConcurrentModification() {
            if (LinkedListMultimap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            checkForConcurrentModification();
            return this.next != null;
        }

        @Override // java.util.Iterator
        @ParametricNullness
        public K next() {
            Node<K, V> node;
            checkForConcurrentModification();
            Node<K, V> node2 = this.next;
            if (node2 == null) {
                throw new NoSuchElementException();
            }
            this.current = node2;
            this.seenKeys.add(node2.key);
            do {
                node = this.next.next;
                this.next = node;
                if (node == null) {
                    break;
                }
            } while (!this.seenKeys.add(node.key));
            return this.current.key;
        }

        @Override // java.util.Iterator
        public void remove() {
            checkForConcurrentModification();
            Preconditions.checkState(this.current != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.removeAllNodes(this.current.key);
            this.current = null;
            this.expectedModCount = LinkedListMultimap.this.modCount;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class ValueForKeyIterator implements ListIterator<V> {

        @CheckForNull
        Node<K, V> current;

        @ParametricNullness
        final K key;

        @CheckForNull
        Node<K, V> next;
        int nextIndex;

        @CheckForNull
        Node<K, V> previous;

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.previous != null;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.nextIndex;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.nextIndex - 1;
        }

        ValueForKeyIterator(@ParametricNullness K k) {
            this.key = k;
            KeyList keyList = (KeyList) LinkedListMultimap.this.keyToKeyList.get(k);
            this.next = keyList == null ? null : keyList.head;
        }

        public ValueForKeyIterator(@ParametricNullness K k, int i) {
            KeyList keyList = (KeyList) LinkedListMultimap.this.keyToKeyList.get(k);
            int i2 = keyList == null ? 0 : keyList.count;
            Preconditions.checkPositionIndex(i, i2);
            if (i >= i2 / 2) {
                this.previous = keyList == null ? null : keyList.tail;
                this.nextIndex = i2;
                while (true) {
                    int i3 = i + 1;
                    if (i >= i2) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            } else {
                this.next = keyList == null ? null : keyList.head;
                while (true) {
                    int i4 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i4;
                }
            }
            this.key = k;
            this.current = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @ParametricNullness
        public V next() {
            Node<K, V> node = this.next;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.previous = node;
            this.next = node.nextSibling;
            this.nextIndex++;
            return this.current.value;
        }

        @Override // java.util.ListIterator
        @ParametricNullness
        public V previous() {
            Node<K, V> node = this.previous;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.next = node;
            this.previous = node.previousSibling;
            this.nextIndex--;
            return this.current.value;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.current != null, "no calls to next() since the last call to remove()");
            Node<K, V> node = this.current;
            if (node != this.next) {
                this.previous = node.previousSibling;
                this.nextIndex--;
            } else {
                this.next = node.nextSibling;
            }
            LinkedListMultimap.this.removeNode(this.current);
            this.current = null;
        }

        @Override // java.util.ListIterator
        public void set(@ParametricNullness V v) {
            Preconditions.checkState(this.current != null);
            this.current.value = v;
        }

        @Override // java.util.ListIterator
        public void add(@ParametricNullness V v) {
            this.previous = LinkedListMultimap.this.addNode(this.key, v, this.next);
            this.nextIndex++;
            this.current = null;
        }
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@CheckForNull Object obj) {
        return this.keyToKeyList.containsKey(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public boolean put(@ParametricNullness K k, @ParametricNullness V v) {
        addNode(k, v, null);
        return true;
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        List<V> copy = getCopy(k);
        ValueForKeyIterator valueForKeyIterator = new ValueForKeyIterator(k);
        Iterator<? extends V> it = iterable.iterator();
        while (valueForKeyIterator.hasNext() && it.hasNext()) {
            valueForKeyIterator.next();
            valueForKeyIterator.set(it.next());
        }
        while (valueForKeyIterator.hasNext()) {
            valueForKeyIterator.next();
            valueForKeyIterator.remove();
        }
        while (it.hasNext()) {
            valueForKeyIterator.add(it.next());
        }
        return copy;
    }

    private List<V> getCopy(@ParametricNullness K k) {
        return Collections.unmodifiableList(Lists.newArrayList(new ValueForKeyIterator(k)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> removeAll(Object obj) {
        List<V> copy = getCopy(obj);
        removeAllNodes(obj);
        return copy;
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyToKeyList.clear();
        this.size = 0;
        this.modCount++;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@ParametricNullness final K k) {
        return new AbstractSequentialList<V>() { // from class: com.google.common.collect.LinkedListMultimap.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                KeyList keyList = (KeyList) LinkedListMultimap.this.keyToKeyList.get(k);
                if (keyList == null) {
                    return 0;
                }
                return keyList.count;
            }

            @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
            public ListIterator<V> listIterator(int i) {
                return new ValueForKeyIterator(k, i);
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap
    Set<K> createKeySet() {
        return new Sets.ImprovedAbstractSet<K>() { // from class: com.google.common.collect.LinkedListMultimap.1KeySetImpl
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return LinkedListMultimap.this.keyToKeyList.size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<K> iterator() {
                return new DistinctKeyIterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return LinkedListMultimap.this.containsKey(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                return !LinkedListMultimap.this.removeAll(obj).isEmpty();
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap
    Multiset<K> createKeys() {
        return new Multimaps.Keys(this);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public List<V> values() {
        return (List) super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractMultimap
    public List<V> createValues() {
        return new AbstractSequentialList<V>() { // from class: com.google.common.collect.LinkedListMultimap.1ValuesImpl
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return LinkedListMultimap.this.size;
            }

            @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
            public ListIterator<V> listIterator(int i) {
                final NodeIterator nodeIterator = new NodeIterator(i);
                return new TransformedListIterator<Map.Entry<K, V>, V>(this, nodeIterator) { // from class: com.google.common.collect.LinkedListMultimap.1ValuesImpl.1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // com.google.common.collect.TransformedIterator
                    @ParametricNullness
                    public V transform(Map.Entry<K, V> entry) {
                        return entry.getValue();
                    }

                    @Override // com.google.common.collect.TransformedListIterator, java.util.ListIterator
                    public void set(@ParametricNullness V v) {
                        nodeIterator.setValue(v);
                    }
                };
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractMultimap
    public List<Map.Entry<K, V>> createEntries() {
        return new AbstractSequentialList<Map.Entry<K, V>>() { // from class: com.google.common.collect.LinkedListMultimap.1EntriesImpl
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return LinkedListMultimap.this.size;
            }

            @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
            public ListIterator<Map.Entry<K, V>> listIterator(int i) {
                return new NodeIterator(i);
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap
    Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractMultimap
    Map<K, Collection<V>> createAsMap() {
        return new Multimaps.AsMap(this);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.keyToKeyList = CompactLinkedHashMap.create();
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }
}
