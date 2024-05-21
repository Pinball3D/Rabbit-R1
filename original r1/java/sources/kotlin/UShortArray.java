package kotlin;

import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: UShortArray.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0001\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\u0005\u0010\tJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b!\u0010\u000bJ\u000f\u0010\"\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010$J\u0016\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020&H\u0096\u0002¢\u0006\u0004\b'\u0010(J \u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020/HÖ\u0001¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\r\u0088\u0001\u0007\u0092\u0001\u00020\b\u0082\u0002\u0004\n\u0002\b!¨\u00063"}, d2 = {"Lkotlin/UShortArray;", "", "Lkotlin/UShort;", "size", "", "constructor-impl", "(I)[S", "storage", "", "([S)[S", "getSize-impl", "([S)I", "getStorage$annotations", "()V", "contains", "", "element", "contains-xj2QHRw", "([SS)Z", "containsAll", "elements", "containsAll-impl", "([SLjava/util/Collection;)Z", "equals", "other", "", "equals-impl", "([SLjava/lang/Object;)Z", "get", "index", "get-Mh2AYeg", "([SI)S", "hashCode", "hashCode-impl", "isEmpty", "isEmpty-impl", "([S)Z", "iterator", "", "iterator-impl", "([S)Ljava/util/Iterator;", "set", "", "value", "set-01HTLdE", "([SIS)V", "toString", "", "toString-impl", "([S)Ljava/lang/String;", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class UShortArray implements Collection<UShort>, KMappedMarker {
    private final short[] storage;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UShortArray m6030boximpl(short[] sArr) {
        return new UShortArray(sArr);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static short[] m6032constructorimpl(short[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m6035equalsimpl(short[] sArr, Object obj) {
        return (obj instanceof UShortArray) && Intrinsics.areEqual(sArr, ((UShortArray) obj).getStorage());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6036equalsimpl0(short[] sArr, short[] sArr2) {
        return Intrinsics.areEqual(sArr, sArr2);
    }

    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m6039hashCodeimpl(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m6043toStringimpl(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(UShort uShort) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-xj2QHRw, reason: not valid java name */
    public boolean m6044addxj2QHRw(short s) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UShort> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m6035equalsimpl(this.storage, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m6039hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    public String toString() {
        return m6043toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ short[] getStorage() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UShort) {
            return m6045containsxj2QHRw(((UShort) obj).getData());
        }
        return false;
    }

    private /* synthetic */ UShortArray(short[] sArr) {
        this.storage = sArr;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static short[] m6031constructorimpl(int i) {
        return m6032constructorimpl(new short[i]);
    }

    /* renamed from: get-Mh2AYeg, reason: not valid java name */
    public static final short m6037getMh2AYeg(short[] sArr, int i) {
        return UShort.m5979constructorimpl(sArr[i]);
    }

    /* renamed from: set-01HTLdE, reason: not valid java name */
    public static final void m6042set01HTLdE(short[] sArr, int i, short s) {
        sArr[i] = s;
    }

    /* renamed from: getSize-impl, reason: not valid java name */
    public static int m6038getSizeimpl(short[] sArr) {
        return sArr.length;
    }

    @Override // java.util.Collection
    /* renamed from: getSize, reason: merged with bridge method [inline-methods] */
    public int size() {
        return m6038getSizeimpl(this.storage);
    }

    /* renamed from: iterator-impl, reason: not valid java name */
    public static java.util.Iterator<UShort> m6041iteratorimpl(short[] sArr) {
        return new Iterator(sArr);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Iterator<UShort> iterator() {
        return m6041iteratorimpl(this.storage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UShortArray.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0017\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\tH\u0096\u0002J\u0013\u0010\n\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b!¨\u0006\r"}, d2 = {"Lkotlin/UShortArray$Iterator;", "", "Lkotlin/UShort;", "array", "", "([S)V", "index", "", "hasNext", "", "next", "next-Mh2AYeg", "()S", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Iterator implements java.util.Iterator<UShort>, KMappedMarker {
        private final short[] array;
        private int index;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public Iterator(short[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.array = array;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ UShort next() {
            return UShort.m5973boximpl(m6047nextMh2AYeg());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        /* renamed from: next-Mh2AYeg, reason: not valid java name */
        public short m6047nextMh2AYeg() {
            int i = this.index;
            short[] sArr = this.array;
            if (i >= sArr.length) {
                throw new NoSuchElementException(String.valueOf(this.index));
            }
            this.index = i + 1;
            return UShort.m5979constructorimpl(sArr[i]);
        }
    }

    /* renamed from: contains-xj2QHRw, reason: not valid java name */
    public boolean m6045containsxj2QHRw(short s) {
        return m6033containsxj2QHRw(this.storage, s);
    }

    /* renamed from: contains-xj2QHRw, reason: not valid java name */
    public static boolean m6033containsxj2QHRw(short[] sArr, short s) {
        return ArraysKt.contains(sArr, s);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return m6034containsAllimpl(this.storage, elements);
    }

    /* renamed from: containsAll-impl, reason: not valid java name */
    public static boolean m6034containsAllimpl(short[] sArr, Collection<UShort> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<UShort> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof UShort) || !ArraysKt.contains(sArr, ((UShort) obj).getData())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static boolean m6040isEmptyimpl(short[] sArr) {
        return sArr.length == 0;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m6040isEmptyimpl(this.storage);
    }
}
