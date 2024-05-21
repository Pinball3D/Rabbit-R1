package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SparseArrayCompat.jvm.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u001f\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0011\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0013H\u0016J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0015\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0017J\u0018\u0010\u001d\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010\u001eJ\u001d\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0015\u0010\"\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010#J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004H\u0016J\u001d\u0010&\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u0018\u0010'\u001a\u00020\u00132\u000e\u0010(\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000H\u0016J\u001f\u0010)\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010 J\u0010\u0010*\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u001a\u0010*\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010+\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0004H\u0016J\u0018\u0010,\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u001f\u0010-\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010 J%\u0010-\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010.\u001a\u00028\u00002\u0006\u0010/\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00100J\u001d\u00101\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u00102\u001a\u000203H\u0016J\u0015\u00104\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010\u001eR\u0012\u0010\u0006\u001a\u00020\u00078\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u00078G¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f8\u0000@\u0000X\u0081\u000e¢\u0006\u0004\n\u0002\u0010\u0011¨\u00065"}, d2 = {"Landroidx/collection/SparseArrayCompat;", ExifInterface.LONGITUDE_EAST, "", "initialCapacity", "", "(I)V", "garbage", "", "isEmpty", "getIsEmpty", "()Z", "keys", "", "size", "values", "", "", "[Ljava/lang/Object;", "append", "", "key", "value", "(ILjava/lang/Object;)V", "clear", "clone", "containsKey", "containsValue", "(Ljava/lang/Object;)Z", "delete", "get", "(I)Ljava/lang/Object;", "defaultValue", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOfKey", "indexOfValue", "(Ljava/lang/Object;)I", "keyAt", "index", "put", "putAll", "other", "putIfAbsent", "remove", "removeAt", "removeAtRange", "replace", "oldValue", "newValue", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "setValueAt", "toString", "", "valueAt", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    public /* synthetic */ boolean garbage;
    public /* synthetic */ int[] keys;
    public /* synthetic */ int size;
    public /* synthetic */ Object[] values;

    public SparseArrayCompat() {
        this(0, 1, null);
    }

    public SparseArrayCompat(int i) {
        if (i == 0) {
            this.keys = ContainerHelpersKt.EMPTY_INTS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i);
            this.keys = new int[idealIntArraySize];
            this.values = new Object[idealIntArraySize];
        }
    }

    public /* synthetic */ SparseArrayCompat(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m17clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) clone;
        sparseArrayCompat.keys = (int[]) this.keys.clone();
        sparseArrayCompat.values = (Object[]) this.values.clone();
        return sparseArrayCompat;
    }

    public E get(int key) {
        return (E) SparseArrayCompatKt.commonGet(this, key);
    }

    public E get(int key, E defaultValue) {
        return (E) SparseArrayCompatKt.commonGet(this, key, defaultValue);
    }

    @Deprecated(message = "Alias for remove(int).", replaceWith = @ReplaceWith(expression = "remove(key)", imports = {}))
    public void delete(int key) {
        remove(key);
    }

    public void remove(int key) {
        SparseArrayCompatKt.commonRemove(this, key);
    }

    public final boolean getIsEmpty() {
        return isEmpty();
    }

    public boolean remove(int key, Object value) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey < 0 || !Intrinsics.areEqual(value, valueAt(indexOfKey))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }

    public void removeAt(int index) {
        if (this.values[index] != SparseArrayCompatKt.DELETED) {
            this.values[index] = SparseArrayCompatKt.DELETED;
            this.garbage = true;
        }
    }

    public void removeAtRange(int index, int size) {
        int min = Math.min(size, index + size);
        while (index < min) {
            removeAt(index);
            index++;
        }
    }

    public E replace(int key, E value) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.values;
        E e = (E) objArr[indexOfKey];
        objArr[indexOfKey] = value;
        return e;
    }

    public boolean replace(int key, E oldValue, E newValue) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey < 0 || !Intrinsics.areEqual(this.values[indexOfKey], oldValue)) {
            return false;
        }
        this.values[indexOfKey] = newValue;
        return true;
    }

    public void put(int key, E value) {
        int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        if (binarySearch >= 0) {
            this.values[binarySearch] = value;
            return;
        }
        int i = ~binarySearch;
        if (i < this.size && this.values[i] == SparseArrayCompatKt.DELETED) {
            this.keys[i] = key;
            this.values[i] = value;
            return;
        }
        if (this.garbage && this.size >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
            i = ~ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        }
        int i2 = this.size;
        if (i2 >= this.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
            int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.values = copyOf2;
        }
        int i3 = this.size;
        if (i3 - i != 0) {
            int[] iArr = this.keys;
            int i4 = i + 1;
            ArraysKt.copyInto(iArr, iArr, i4, i, i3);
            Object[] objArr = this.values;
            ArraysKt.copyInto(objArr, objArr, i4, i, this.size);
        }
        this.keys[i] = key;
        this.values[i] = value;
        this.size++;
    }

    public void putAll(SparseArrayCompat<? extends E> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        for (int i = 0; i < size; i++) {
            int keyAt = other.keyAt(i);
            E valueAt = other.valueAt(i);
            int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, keyAt);
            if (binarySearch >= 0) {
                this.values[binarySearch] = valueAt;
            } else {
                int i2 = ~binarySearch;
                if (i2 < this.size && this.values[i2] == SparseArrayCompatKt.DELETED) {
                    this.keys[i2] = keyAt;
                    this.values[i2] = valueAt;
                } else {
                    if (this.garbage && this.size >= this.keys.length) {
                        SparseArrayCompatKt.gc(this);
                        i2 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, keyAt);
                    }
                    int i3 = this.size;
                    if (i3 >= this.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
                        int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                        this.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
                        this.values = copyOf2;
                    }
                    int i4 = this.size;
                    if (i4 - i2 != 0) {
                        int[] iArr = this.keys;
                        int i5 = i2 + 1;
                        ArraysKt.copyInto(iArr, iArr, i5, i2, i4);
                        Object[] objArr = this.values;
                        ArraysKt.copyInto(objArr, objArr, i5, i2, this.size);
                    }
                    this.keys[i2] = keyAt;
                    this.values[i2] = valueAt;
                    this.size++;
                }
            }
        }
    }

    public E putIfAbsent(int key, E value) {
        E e = (E) SparseArrayCompatKt.commonGet(this, key);
        if (e == null) {
            int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
            if (binarySearch >= 0) {
                this.values[binarySearch] = value;
            } else {
                int i = ~binarySearch;
                if (i < this.size && this.values[i] == SparseArrayCompatKt.DELETED) {
                    this.keys[i] = key;
                    this.values[i] = value;
                } else {
                    if (this.garbage && this.size >= this.keys.length) {
                        SparseArrayCompatKt.gc(this);
                        i = ~ContainerHelpersKt.binarySearch(this.keys, this.size, key);
                    }
                    int i2 = this.size;
                    if (i2 >= this.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
                        int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                        this.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
                        this.values = copyOf2;
                    }
                    int i3 = this.size;
                    if (i3 - i != 0) {
                        int[] iArr = this.keys;
                        int i4 = i + 1;
                        ArraysKt.copyInto(iArr, iArr, i4, i, i3);
                        Object[] objArr = this.values;
                        ArraysKt.copyInto(objArr, objArr, i4, i, this.size);
                    }
                    this.keys[i] = key;
                    this.values[i] = value;
                    this.size++;
                }
            }
        }
        return e;
    }

    public int size() {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.size;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int index) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.keys[index];
    }

    public E valueAt(int index) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return (E) this.values[index];
    }

    public void setValueAt(int index, E value) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        this.values[index] = value;
    }

    public int indexOfKey(int key) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return ContainerHelpersKt.binarySearch(this.keys, this.size, key);
    }

    public int indexOfValue(E value) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.values[i2] == value) {
                return i2;
            }
        }
        return -1;
    }

    public boolean containsKey(int key) {
        return indexOfKey(key) >= 0;
    }

    public boolean containsValue(E value) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i = this.size;
        int i2 = 0;
        while (i2 < i) {
            if (this.values[i2] == value) {
                return i2 >= 0;
            }
            i2++;
        }
        return false;
    }

    public void clear() {
        int i = this.size;
        Object[] objArr = this.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.size = 0;
        this.garbage = false;
    }

    public void append(int key, E value) {
        int i = this.size;
        if (i != 0 && key <= this.keys[i - 1]) {
            put(key, value);
            return;
        }
        if (this.garbage && i >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
        }
        int i2 = this.size;
        if (i2 >= this.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
            int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.values = copyOf2;
        }
        this.keys[i2] = key;
        this.values[i2] = value;
        this.size = i2 + 1;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.size * 28);
        sb.append('{');
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i2));
            sb.append('=');
            E valueAt = valueAt(i2);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "buffer.toString()");
        return sb2;
    }
}
