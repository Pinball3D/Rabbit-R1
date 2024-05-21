package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.snapshots.SnapshotStateList;
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

/* compiled from: LazyLayoutPinnableItem.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010*\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0015\b\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0096\u0003J\u0017\u0010\u000e\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0010H\u0096\u0001J\u0011\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\bH\u0096\u0003J\u0011\u0010\u0013\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0002H\u0096\u0001J\t\u0010\u0014\u001a\u00020\fH\u0096\u0001J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u0016H\u0096\u0003J\u0011\u0010\u0017\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0002H\u0096\u0001J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0019H\u0096\u0001J\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010\u0012\u001a\u00020\bH\u0096\u0001J\u0015\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0002H\u0000¢\u0006\u0002\b\u001dJ\u0015\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0002H\u0000¢\u0006\u0002\b\u001fJ\u001f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bH\u0096\u0001R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\bX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006$"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;", "()V", "items", "", "(Ljava/util/List;)V", "size", "", "getSize", "()I", "contains", "", "element", "containsAll", "elements", "", "get", "index", "indexOf", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "pin", "", "item", "pin$foundation_release", "release", "release$foundation_release", "subList", "fromIndex", "toIndex", "PinnedItem", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutPinnedItemList implements List<PinnedItem>, KMappedMarker {
    public static final int $stable = 8;
    private final List<PinnedItem> items;

    /* compiled from: LazyLayoutPinnableItem.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0001X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\u0082\u0001\u0001\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;", "", "index", "", "getIndex", "()I", "key", "getKey", "()Ljava/lang/Object;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface PinnedItem {
        int getIndex();

        Object getKey();
    }

    /* renamed from: add, reason: avoid collision after fix types in other method */
    public void add2(int i, PinnedItem pinnedItem) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ void add(int i, PinnedItem pinnedItem) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean add(PinnedItem pinnedItem) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends PinnedItem> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends PinnedItem> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(PinnedItem element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.items.contains(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.items.containsAll(elements);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.List
    public PinnedItem get(int index) {
        return this.items.get(index);
    }

    public int getSize() {
        return this.items.size();
    }

    public int indexOf(PinnedItem element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.items.indexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.items.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<PinnedItem> iterator() {
        return this.items.iterator();
    }

    public int lastIndexOf(PinnedItem element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.items.lastIndexOf(element);
    }

    @Override // java.util.List
    public ListIterator<PinnedItem> listIterator() {
        return this.items.listIterator();
    }

    @Override // java.util.List
    public ListIterator<PinnedItem> listIterator(int index) {
        return this.items.listIterator(index);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.List
    public PinnedItem remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ PinnedItem remove(int i) {
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
    public void replaceAll(UnaryOperator<PinnedItem> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: set, reason: avoid collision after fix types in other method */
    public PinnedItem set2(int i, PinnedItem pinnedItem) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ PinnedItem set(int i, PinnedItem pinnedItem) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void sort(Comparator<? super PinnedItem> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<PinnedItem> subList(int fromIndex, int toIndex) {
        return this.items.subList(fromIndex, toIndex);
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

    private LazyLayoutPinnedItemList(List<PinnedItem> list) {
        this.items = list;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof PinnedItem) {
            return contains((PinnedItem) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof PinnedItem) {
            return indexOf((PinnedItem) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof PinnedItem) {
            return lastIndexOf((PinnedItem) obj);
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public LazyLayoutPinnedItemList() {
        this(new SnapshotStateList());
    }

    public final void pin$foundation_release(PinnedItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.items.add(item);
    }

    public final void release$foundation_release(PinnedItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.items.remove(item);
    }
}
