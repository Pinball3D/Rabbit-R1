package kotlin.collections.builders;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.protocol.OperatingSystem;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* compiled from: ListBuilder.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000 X*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0002XYB\u0007\b\u0016¢\u0006\u0002\u0010\bB\u000f\b\u0016\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bBM\b\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0002\u0010\u0014J\u0015\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001dJ\u001d\u0010\u001b\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010 J\u001e\u0010!\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\n2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J\u0016\u0010!\u001a\u00020\u00112\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J&\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010&\u001a\u00020\nH\u0002J\u001d\u0010'\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010 J\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000)J\b\u0010*\u001a\u00020\u001eH\u0002J\b\u0010+\u001a\u00020\u001eH\u0002J\b\u0010,\u001a\u00020\u001eH\u0016J\u0014\u0010-\u001a\u00020\u00112\n\u0010.\u001a\u0006\u0012\u0002\b\u00030)H\u0002J\u0010\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\nH\u0002J\u0010\u00101\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\nH\u0002J\u0013\u00102\u001a\u00020\u00112\b\u0010.\u001a\u0004\u0018\u000103H\u0096\u0002J\u0016\u00104\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u00105J\b\u00106\u001a\u00020\nH\u0016J\u0015\u00107\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00108J\u0018\u00109\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J\b\u0010:\u001a\u00020\u0011H\u0016J\u000f\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0096\u0002J\u0015\u0010=\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00108J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00000?H\u0016J\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00000?2\u0006\u0010\u001f\u001a\u00020\nH\u0016J\b\u0010@\u001a\u00020\u001eH\u0002J\u0015\u0010A\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001dJ\u0016\u0010B\u001a\u00020\u00112\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J\u0015\u0010C\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\nH\u0016¢\u0006\u0002\u00105J\u0015\u0010D\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\nH\u0002¢\u0006\u0002\u00105J\u0018\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020\n2\u0006\u0010G\u001a\u00020\nH\u0002J\u0016\u0010H\u001a\u00020\u00112\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016J.\u0010I\u001a\u00020\n2\u0006\u0010F\u001a\u00020\n2\u0006\u0010G\u001a\u00020\n2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010J\u001a\u00020\u0011H\u0002J\u001e\u0010K\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010LJ\u001e\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010N\u001a\u00020\n2\u0006\u0010O\u001a\u00020\nH\u0016J\u0015\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\rH\u0016¢\u0006\u0002\u0010QJ'\u0010P\u001a\b\u0012\u0004\u0012\u0002HR0\r\"\u0004\b\u0001\u0010R2\f\u0010S\u001a\b\u0012\u0004\u0012\u0002HR0\rH\u0016¢\u0006\u0002\u0010TJ\b\u0010U\u001a\u00020VH\u0016J\b\u0010W\u001a\u000203H\u0002R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006Z"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "initialCapacity", "", "(I)V", "array", "", "offset", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "isReadOnly", "", "backing", "root", "([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V", "[Ljava/lang/Object;", "isEffectivelyReadOnly", "()Z", "size", "getSize", "()I", "add", "element", "(Ljava/lang/Object;)Z", "", "index", "(ILjava/lang/Object;)V", "addAll", "elements", "", "addAllInternal", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "n", "addAtInternal", OperatingSystem.JsonKeys.BUILD, "", "checkForComodification", "checkIsMutable", "clear", "contentEquals", "other", "ensureCapacityInternal", "minCapacity", "ensureExtraCapacity", "equals", "", "get", "(I)Ljava/lang/Object;", "hashCode", "indexOf", "(Ljava/lang/Object;)I", "insertAtInternal", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "registerModification", "remove", "removeAll", "removeAt", "removeAtInternal", "removeRangeInternal", "rangeOffset", "rangeLength", "retainAll", "retainOrRemoveAllInternal", "retain", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "subList", "fromIndex", "toIndex", "toArray", "()[Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "destination", "([Ljava/lang/Object;)[Ljava/lang/Object;", "toString", "", "writeReplace", "Companion", "Itr", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
    private static final Companion Companion = new Companion(null);
    private static final ListBuilder Empty;
    private E[] array;
    private final ListBuilder<E> backing;
    private boolean isReadOnly;
    private int length;
    private int offset;
    private final ListBuilder<E> root;

    /* compiled from: ListBuilder.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Companion;", "", "()V", "Empty", "Lkotlin/collections/builders/ListBuilder;", "", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private ListBuilder(E[] eArr, int i, int i2, boolean z, ListBuilder<E> listBuilder, ListBuilder<E> listBuilder2) {
        this.array = eArr;
        this.offset = i;
        this.length = i2;
        this.isReadOnly = z;
        this.backing = listBuilder;
        this.root = listBuilder2;
        if (listBuilder != null) {
            this.modCount = listBuilder.modCount;
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.isReadOnly = true;
        Empty = listBuilder;
    }

    public ListBuilder() {
        this(10);
    }

    public ListBuilder(int i) {
        this(ListBuilderKt.arrayOfUninitializedElements(i), 0, 0, false, null, null);
    }

    public final List<E> build() {
        if (this.backing != null) {
            throw new IllegalStateException();
        }
        checkIsMutable();
        this.isReadOnly = true;
        if (this.length <= 0) {
            this = Empty;
        }
        return this;
    }

    private final Object writeReplace() {
        if (isEffectivelyReadOnly()) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        checkForComodification();
        return this.length;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        checkForComodification();
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        checkForComodification();
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.length);
        return this.array[this.offset + index];
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        checkIsMutable();
        checkForComodification();
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.length);
        E[] eArr = this.array;
        int i = this.offset;
        E e = eArr[i + index];
        eArr[i + index] = element;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        checkForComodification();
        for (int i = 0; i < this.length; i++) {
            if (Intrinsics.areEqual(this.array[this.offset + i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        checkForComodification();
        for (int i = this.length - 1; i >= 0; i--) {
            if (Intrinsics.areEqual(this.array[this.offset + i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int index) {
        checkForComodification();
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.length);
        return new Itr(this, index);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        checkIsMutable();
        checkForComodification();
        addAtInternal(this.offset + this.length, element);
        return true;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        checkIsMutable();
        checkForComodification();
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.length);
        addAtInternal(this.offset + index, element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        checkForComodification();
        int size = elements.size();
        addAllInternal(this.offset + this.length, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        checkForComodification();
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.length);
        int size = elements.size();
        addAllInternal(this.offset + index, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        checkIsMutable();
        checkForComodification();
        removeRangeInternal(this.offset, this.length);
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        checkIsMutable();
        checkForComodification();
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.length);
        return removeAtInternal(this.offset + index);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        checkIsMutable();
        checkForComodification();
        int indexOf = indexOf(element);
        if (indexOf >= 0) {
            remove(indexOf);
        }
        return indexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        checkForComodification();
        return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        checkForComodification();
        return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, this.length);
        E[] eArr = this.array;
        int i = this.offset + fromIndex;
        int i2 = toIndex - fromIndex;
        boolean z = this.isReadOnly;
        ListBuilder<E> listBuilder = this.root;
        return new ListBuilder(eArr, i, i2, z, this, listBuilder == null ? this : listBuilder);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] destination) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkForComodification();
        int length = destination.length;
        int i = this.length;
        if (length < i) {
            E[] eArr = this.array;
            int i2 = this.offset;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr, i2, i + i2, destination.getClass());
            Intrinsics.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
            return tArr;
        }
        E[] eArr2 = this.array;
        int i3 = this.offset;
        ArraysKt.copyInto(eArr2, destination, 0, i3, i + i3);
        return (T[]) CollectionsKt.terminateCollectionToArray(this.length, destination);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        checkForComodification();
        E[] eArr = this.array;
        int i = this.offset;
        return ArraysKt.copyOfRange(eArr, i, this.length + i);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object other) {
        checkForComodification();
        return other == this || ((other instanceof List) && contentEquals((List) other));
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int subarrayContentHashCode;
        checkForComodification();
        subarrayContentHashCode = ListBuilderKt.subarrayContentHashCode(this.array, this.offset, this.length);
        return subarrayContentHashCode;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String subarrayContentToString;
        checkForComodification();
        subarrayContentToString = ListBuilderKt.subarrayContentToString(this.array, this.offset, this.length, this);
        return subarrayContentToString;
    }

    private final void registerModification() {
        this.modCount++;
    }

    private final void checkForComodification() {
        ListBuilder<E> listBuilder = this.root;
        if (listBuilder != null && listBuilder.modCount != this.modCount) {
            throw new ConcurrentModificationException();
        }
    }

    private final void checkIsMutable() {
        if (isEffectivelyReadOnly()) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean isEffectivelyReadOnly() {
        ListBuilder<E> listBuilder;
        return this.isReadOnly || ((listBuilder = this.root) != null && listBuilder.isReadOnly);
    }

    private final void ensureExtraCapacity(int n) {
        ensureCapacityInternal(this.length + n);
    }

    private final void ensureCapacityInternal(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        if (minCapacity > this.array.length) {
            this.array = (E[]) ListBuilderKt.copyOfUninitializedElements(this.array, AbstractList.INSTANCE.newCapacity$kotlin_stdlib(this.array.length, minCapacity));
        }
    }

    private final boolean contentEquals(List<?> other) {
        boolean subarrayContentEquals;
        subarrayContentEquals = ListBuilderKt.subarrayContentEquals(this.array, this.offset, this.length, other);
        return subarrayContentEquals;
    }

    private final void insertAtInternal(int i, int n) {
        ensureExtraCapacity(n);
        E[] eArr = this.array;
        ArraysKt.copyInto(eArr, eArr, i + n, i, this.offset + this.length);
        this.length += n;
    }

    private final void addAtInternal(int i, E element) {
        registerModification();
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.addAtInternal(i, element);
            this.array = this.backing.array;
            this.length++;
        } else {
            insertAtInternal(i, 1);
            this.array[i] = element;
        }
    }

    private final void addAllInternal(int i, Collection<? extends E> elements, int n) {
        registerModification();
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.addAllInternal(i, elements, n);
            this.array = this.backing.array;
            this.length += n;
        } else {
            insertAtInternal(i, n);
            Iterator<? extends E> it = elements.iterator();
            for (int i2 = 0; i2 < n; i2++) {
                this.array[i + i2] = it.next();
            }
        }
    }

    private final E removeAtInternal(int i) {
        registerModification();
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            this.length--;
            return listBuilder.removeAtInternal(i);
        }
        E[] eArr = this.array;
        E e = eArr[i];
        ArraysKt.copyInto(eArr, eArr, i, i + 1, this.offset + this.length);
        ListBuilderKt.resetAt(this.array, (this.offset + this.length) - 1);
        this.length--;
        return e;
    }

    private final void removeRangeInternal(int rangeOffset, int rangeLength) {
        if (rangeLength > 0) {
            registerModification();
        }
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.removeRangeInternal(rangeOffset, rangeLength);
        } else {
            E[] eArr = this.array;
            ArraysKt.copyInto(eArr, eArr, rangeOffset, rangeOffset + rangeLength, this.length);
            E[] eArr2 = this.array;
            int i = this.length;
            ListBuilderKt.resetRange(eArr2, i - rangeLength, i);
        }
        this.length -= rangeLength;
    }

    private final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
        int i;
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            i = listBuilder.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain);
        } else {
            int i2 = 0;
            int i3 = 0;
            while (i2 < rangeLength) {
                int i4 = rangeOffset + i2;
                if (elements.contains(this.array[i4]) == retain) {
                    E[] eArr = this.array;
                    i2++;
                    eArr[i3 + rangeOffset] = eArr[i4];
                    i3++;
                } else {
                    i2++;
                }
            }
            int i5 = rangeLength - i3;
            E[] eArr2 = this.array;
            ArraysKt.copyInto(eArr2, eArr2, rangeOffset + i3, rangeLength + rangeOffset, this.length);
            E[] eArr3 = this.array;
            int i6 = this.length;
            ListBuilderKt.resetRange(eArr3, i6 - i5, i6);
            i = i5;
        }
        if (i > 0) {
            registerModification();
        }
        this.length -= i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListBuilder.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\b\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u000bH\u0002J\t\u0010\u000f\u001a\u00020\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u000e\u0010\u0012\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0006H\u0016J\r\u0010\u0015\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0013J\b\u0010\u0016\u001a\u00020\u0006H\u0016J\b\u0010\u0017\u001a\u00020\u000bH\u0016J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\rR\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Itr;", ExifInterface.LONGITUDE_EAST, "", "list", "Lkotlin/collections/builders/ListBuilder;", "index", "", "(Lkotlin/collections/builders/ListBuilder;I)V", "expectedModCount", "lastIndex", "add", "", "element", "(Ljava/lang/Object;)V", "checkForComodification", "hasNext", "", "hasPrevious", "next", "()Ljava/lang/Object;", "nextIndex", "previous", "previousIndex", "remove", "set", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Itr<E> implements ListIterator<E>, KMutableListIterator {
        private int expectedModCount;
        private int index;
        private int lastIndex;
        private final ListBuilder<E> list;

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.index > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.index - 1;
        }

        public Itr(ListBuilder<E> list, int i) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
            this.index = i;
            this.lastIndex = -1;
            this.expectedModCount = list.modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.index < ((ListBuilder) this.list).length;
        }

        @Override // java.util.ListIterator
        public E previous() {
            checkForComodification();
            int i = this.index;
            if (i > 0) {
                int i2 = i - 1;
                this.index = i2;
                this.lastIndex = i2;
                return (E) ((ListBuilder) this.list).array[((ListBuilder) this.list).offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            checkForComodification();
            if (this.index < ((ListBuilder) this.list).length) {
                int i = this.index;
                this.index = i + 1;
                this.lastIndex = i;
                return (E) ((ListBuilder) this.list).array[((ListBuilder) this.list).offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public void set(E element) {
            checkForComodification();
            int i = this.lastIndex;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
            }
            this.list.set(i, element);
        }

        @Override // java.util.ListIterator
        public void add(E element) {
            checkForComodification();
            ListBuilder<E> listBuilder = this.list;
            int i = this.index;
            this.index = i + 1;
            listBuilder.add(i, element);
            this.lastIndex = -1;
            this.expectedModCount = this.list.modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            checkForComodification();
            int i = this.lastIndex;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
            }
            this.list.remove(i);
            this.index = this.lastIndex;
            this.lastIndex = -1;
            this.expectedModCount = this.list.modCount;
        }

        private final void checkForComodification() {
            if (this.list.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }
    }
}
