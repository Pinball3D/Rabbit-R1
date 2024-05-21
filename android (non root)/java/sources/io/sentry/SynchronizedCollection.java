package io.sentry;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes3.dex */
class SynchronizedCollection<E> implements Collection<E>, Serializable {
    private static final long serialVersionUID = 2412805092710877986L;
    private final Collection<E> collection;
    final Object lock;

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection<E> decorated() {
        return this.collection;
    }

    public static <T> SynchronizedCollection<T> synchronizedCollection(Collection<T> collection) {
        return new SynchronizedCollection<>(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SynchronizedCollection(Collection<E> collection) {
        if (collection == null) {
            throw new NullPointerException("Collection must not be null.");
        }
        this.collection = collection;
        this.lock = this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SynchronizedCollection(Collection<E> collection, Object obj) {
        if (collection == null) {
            throw new NullPointerException("Collection must not be null.");
        }
        if (obj == null) {
            throw new NullPointerException("Lock must not be null.");
        }
        this.collection = collection;
        this.lock = obj;
    }

    @Override // java.util.Collection
    public boolean add(E e) {
        boolean add;
        synchronized (this.lock) {
            add = decorated().add(e);
        }
        return add;
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        boolean addAll;
        synchronized (this.lock) {
            addAll = decorated().addAll(collection);
        }
        return addAll;
    }

    @Override // java.util.Collection
    public void clear() {
        synchronized (this.lock) {
            decorated().clear();
        }
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        boolean contains;
        synchronized (this.lock) {
            contains = decorated().contains(obj);
        }
        return contains;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.lock) {
            containsAll = decorated().containsAll(collection);
        }
        return containsAll;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.lock) {
            isEmpty = decorated().isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return decorated().iterator();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        Object[] array;
        synchronized (this.lock) {
            array = decorated().toArray();
        }
        return array;
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        synchronized (this.lock) {
            tArr2 = (T[]) decorated().toArray(tArr);
        }
        return tArr2;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this.lock) {
            remove = decorated().remove(obj);
        }
        return remove;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.lock) {
            removeAll = decorated().removeAll(collection);
        }
        return removeAll;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.lock) {
            retainAll = decorated().retainAll(collection);
        }
        return retainAll;
    }

    @Override // java.util.Collection
    public int size() {
        int size;
        synchronized (this.lock) {
            size = decorated().size();
        }
        return size;
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        synchronized (this.lock) {
            boolean z = true;
            try {
                if (obj == this) {
                    return true;
                }
                if (obj != this && !decorated().equals(obj)) {
                    z = false;
                }
                return z;
            } finally {
            }
        }
    }

    @Override // java.util.Collection
    public int hashCode() {
        int hashCode;
        synchronized (this.lock) {
            hashCode = decorated().hashCode();
        }
        return hashCode;
    }

    public String toString() {
        String obj;
        synchronized (this.lock) {
            obj = decorated().toString();
        }
        return obj;
    }
}
