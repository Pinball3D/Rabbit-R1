package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CircularArray.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0011\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0002\u0010\u0014J\u0006\u0010\u0016\u001a\u00020\u0012J\b\u0010\u0017\u001a\u00020\u0012H\u0002J\u0016\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u000b\u0010\u001d\u001a\u00028\u0000¢\u0006\u0002\u0010\fJ\u000b\u0010\u001e\u001a\u00028\u0000¢\u0006\u0002\u0010\fJ\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0004J\u000e\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u0004R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\n\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\fR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/collection/CircularArray;", ExifInterface.LONGITUDE_EAST, "", "minCapacity", "", "(I)V", "capacityBitmask", "elements", "", "[Ljava/lang/Object;", "first", "getFirst", "()Ljava/lang/Object;", "head", "last", "getLast", "tail", "addFirst", "", "element", "(Ljava/lang/Object;)V", "addLast", "clear", "doubleCapacity", "get", "index", "(I)Ljava/lang/Object;", "isEmpty", "", "popFirst", "popLast", "removeFromEnd", MetricSummary.JsonKeys.COUNT, "removeFromStart", "size", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CircularArray<E> {
    private int capacityBitmask;
    private E[] elements;
    private int head;
    private int tail;

    public CircularArray() {
        this(0, 1, null);
    }

    public final boolean isEmpty() {
        return this.head == this.tail;
    }

    public final int size() {
        return this.capacityBitmask & (this.tail - this.head);
    }

    public CircularArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1".toString());
        }
        if (i > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30".toString());
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.capacityBitmask = i - 1;
        this.elements = (E[]) new Object[i];
    }

    public /* synthetic */ CircularArray(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 8 : i);
    }

    private final void doubleCapacity() {
        E[] eArr = this.elements;
        int length = eArr.length;
        int i = this.head;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        E[] eArr2 = (E[]) new Object[i3];
        ArraysKt.copyInto(eArr, eArr2, 0, i, length);
        ArraysKt.copyInto(this.elements, eArr2, i2, 0, this.head);
        this.elements = eArr2;
        this.head = 0;
        this.tail = length;
        this.capacityBitmask = i3 - 1;
    }

    public final void addFirst(E element) {
        int i = (this.head - 1) & this.capacityBitmask;
        this.head = i;
        this.elements[i] = element;
        if (i == this.tail) {
            doubleCapacity();
        }
    }

    public final void addLast(E element) {
        E[] eArr = this.elements;
        int i = this.tail;
        eArr[i] = element;
        int i2 = this.capacityBitmask & (i + 1);
        this.tail = i2;
        if (i2 == this.head) {
            doubleCapacity();
        }
    }

    public final E popFirst() {
        int i = this.head;
        if (i == this.tail) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E[] eArr = this.elements;
        E e = eArr[i];
        eArr[i] = null;
        this.head = (i + 1) & this.capacityBitmask;
        return e;
    }

    public final E popLast() {
        int i = this.head;
        int i2 = this.tail;
        if (i == i2) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.capacityBitmask & (i2 - 1);
        E[] eArr = this.elements;
        E e = eArr[i3];
        eArr[i3] = null;
        this.tail = i3;
        return e;
    }

    public final void clear() {
        removeFromStart(size());
    }

    public final void removeFromStart(int count) {
        if (count <= 0) {
            return;
        }
        if (count > size()) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.elements.length;
        int i = this.head;
        if (count < length - i) {
            length = i + count;
        }
        while (i < length) {
            this.elements[i] = null;
            i++;
        }
        int i2 = this.head;
        int i3 = length - i2;
        int i4 = count - i3;
        this.head = this.capacityBitmask & (i2 + i3);
        if (i4 > 0) {
            for (int i5 = 0; i5 < i4; i5++) {
                this.elements[i5] = null;
            }
            this.head = i4;
        }
    }

    public final void removeFromEnd(int count) {
        if (count <= 0) {
            return;
        }
        if (count > size()) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = this.tail;
        int i2 = count < i ? i - count : 0;
        for (int i3 = i2; i3 < i; i3++) {
            this.elements[i3] = null;
        }
        int i4 = this.tail;
        int i5 = i4 - i2;
        int i6 = count - i5;
        this.tail = i4 - i5;
        if (i6 > 0) {
            int length = this.elements.length;
            this.tail = length;
            int i7 = length - i6;
            for (int i8 = i7; i8 < length; i8++) {
                this.elements[i8] = null;
            }
            this.tail = i7;
        }
    }

    public final E getFirst() {
        int i = this.head;
        if (i == this.tail) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E e = this.elements[i];
        Intrinsics.checkNotNull(e);
        return e;
    }

    public final E getLast() {
        int i = this.head;
        int i2 = this.tail;
        if (i == i2) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E e = this.elements[this.capacityBitmask & (i2 - 1)];
        Intrinsics.checkNotNull(e);
        return e;
    }

    public final E get(int index) {
        if (index < 0 || index >= size()) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        E e = this.elements[this.capacityBitmask & (this.head + index)];
        Intrinsics.checkNotNull(e);
        return e;
    }
}
