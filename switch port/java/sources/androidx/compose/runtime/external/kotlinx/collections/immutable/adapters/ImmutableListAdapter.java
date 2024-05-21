package androidx.compose.runtime.external.kotlinx.collections.immutable.adapters;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: ReadOnlyCollectionAdapters.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010*\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0002\u0010\u0005J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0000H\u0096\u0003¢\u0006\u0002\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0096\u0001J\u0013\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0016\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0007H\u0096\u0003¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0007H\u0016J\u0016\u0010\u0018\u001a\u00020\u00072\u0006\u0010\f\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010\u0019J\t\u0010\u001a\u001a\u00020\u000bH\u0096\u0001J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0096\u0003J\u0016\u0010\u001d\u001a\u00020\u00072\u0006\u0010\f\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010\u0019J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0096\u0001J\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001f2\u0006\u0010\u0015\u001a\u00020\u0007H\u0096\u0001J\u001e\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0016J\b\u0010#\u001a\u00020$H\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u0007X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006%"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/adapters/ImmutableListAdapter;", ExifInterface.LONGITUDE_EAST, "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;", "", "impl", "(Ljava/util/List;)V", "size", "", "getSize", "()I", "contains", "", "element", "(Ljava/lang/Object;)Z", "containsAll", "elements", "", "equals", "other", "", "get", "index", "(I)Ljava/lang/Object;", "hashCode", "indexOf", "(Ljava/lang/Object;)I", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "subList", "fromIndex", "toIndex", "toString", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImmutableListAdapter<E> implements ImmutableList<E>, List<E>, KMappedMarker {
    private final List<E> impl;

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object element) {
        return this.impl.contains(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.impl.containsAll(elements);
    }

    @Override // java.util.List
    public E get(int index) {
        return this.impl.get(index);
    }

    public int getSize() {
        return this.impl.size();
    }

    @Override // java.util.List
    public int indexOf(Object element) {
        return this.impl.indexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.impl.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.impl.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object element) {
        return this.impl.lastIndexOf(element);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.impl.listIterator();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int index) {
        return this.impl.listIterator(index);
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<E> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void sort(Comparator<? super E> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImmutableListAdapter(List<? extends E> impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        this.impl = impl;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList, java.util.List
    public ImmutableList<E> subList(int fromIndex, int toIndex) {
        return new ImmutableListAdapter(this.impl.subList(fromIndex, toIndex));
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object other) {
        return this.impl.equals(other);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.impl.hashCode();
    }

    public String toString() {
        return this.impl.toString();
    }
}
