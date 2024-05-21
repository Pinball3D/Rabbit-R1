package androidx.compose.ui.text.caches;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleArrayMap.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b'\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u0011\b\u0017\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u001d\b\u0016\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000¢\u0006\u0002\u0010\bJ\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00028\u0001¢\u0006\u0002\u0010\u001aJ\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0005J\u0013\u0010\u001f\u001a\u00020\u00182\b\u0010 \u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0018\u0010!\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\"J\u001b\u0010#\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010$\u001a\u00028\u0001¢\u0006\u0002\u0010%J\b\u0010&\u001a\u00020\u0005H\u0016J\u0018\u0010'\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0005H\u0004J\u0010\u0010)\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003J\b\u0010*\u001a\u00020\u0005H\u0004J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00028\u0001H\u0000¢\u0006\u0004\b,\u0010-J\u0006\u0010.\u001a\u00020\u0018J\u0013\u0010/\u001a\u00028\u00002\u0006\u00100\u001a\u00020\u0005¢\u0006\u0002\u00101J\u001d\u00102\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001¢\u0006\u0002\u0010%J\u001e\u00103\u001a\u00020\u00162\u0016\u00104\u001a\u0012\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0006\b\u0001\u0012\u00028\u00010\u0000J\u001d\u00105\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001¢\u0006\u0002\u0010%J\u0015\u00106\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000¢\u0006\u0002\u0010\"J\u001b\u00106\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001¢\u0006\u0002\u00107J\u0015\u00108\u001a\u0004\u0018\u00018\u00012\u0006\u00100\u001a\u00020\u0005¢\u0006\u0002\u00101J\u001d\u00109\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001¢\u0006\u0002\u0010%J#\u00109\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010:\u001a\u00028\u00012\u0006\u0010;\u001a\u00028\u0001¢\u0006\u0002\u0010<J\u001b\u0010=\u001a\u00028\u00012\u0006\u00100\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00028\u0001¢\u0006\u0002\u0010>J\b\u0010?\u001a\u00020@H\u0016J\u0013\u0010A\u001a\u00028\u00012\u0006\u00100\u001a\u00020\u0005¢\u0006\u0002\u00101R\u001a\u0010\t\u001a\u00020\u0005X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\u0006R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0010X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0017\u0010\u0012\u001a\u00020\u00058G¢\u0006\f\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0012\u0010\u000b¨\u0006B"}, d2 = {"Landroidx/compose/ui/text/caches/SimpleArrayMap;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "capacity", "", "(I)V", "map", "(Landroidx/compose/ui/text/caches/SimpleArrayMap;)V", "_size", "get_size", "()I", "set_size", "hashes", "", "keyValues", "", "[Ljava/lang/Object;", "size", "size$annotations", "()V", "clear", "", "containsKey", "", "key", "(Ljava/lang/Object;)Z", "containsValue", "value", "ensureCapacity", "minimumCapacity", "equals", "other", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrDefault", "defaultValue", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "hashCode", "indexOf", "hash", "indexOfKey", "indexOfNull", "indexOfValue", "indexOfValue$ui_text_release", "(Ljava/lang/Object;)I", "isEmpty", "keyAt", "index", "(I)Ljava/lang/Object;", "put", "putAll", "array", "putIfAbsent", "remove", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "removeAt", "replace", "oldValue", "newValue", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", "setValueAt", "(ILjava/lang/Object;)Ljava/lang/Object;", "toString", "", "valueAt", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SimpleArrayMap<K, V> {
    private int _size;
    private int[] hashes;
    private Object[] keyValues;

    public SimpleArrayMap() {
        this(0, 1, null);
    }

    public static /* synthetic */ void size$annotations() {
    }

    protected final int get_size() {
        return this._size;
    }

    public final boolean isEmpty() {
        return this._size <= 0;
    }

    protected final void set_size(int i) {
        this._size = i;
    }

    public final int size() {
        return this._size;
    }

    protected final int indexOf(Object key, int hash) {
        Intrinsics.checkNotNullParameter(key, "key");
        int i = this._size;
        if (i == 0) {
            return -1;
        }
        int binarySearchInternal = ContainerHelpersKt.binarySearchInternal(this.hashes, i, hash);
        if (binarySearchInternal < 0 || Intrinsics.areEqual(key, this.keyValues[binarySearchInternal << 1])) {
            return binarySearchInternal;
        }
        int i2 = binarySearchInternal + 1;
        while (i2 < i && this.hashes[i2] == hash) {
            if (Intrinsics.areEqual(key, this.keyValues[i2 << 1])) {
                return i2;
            }
            i2++;
        }
        for (int i3 = binarySearchInternal - 1; i3 >= 0 && this.hashes[i3] == hash; i3--) {
            if (Intrinsics.areEqual(key, this.keyValues[i3 << 1])) {
                return i3;
            }
        }
        return ~i2;
    }

    protected final int indexOfNull() {
        int i = this._size;
        if (i == 0) {
            return -1;
        }
        int binarySearchInternal = ContainerHelpersKt.binarySearchInternal(this.hashes, i, 0);
        if (binarySearchInternal < 0 || this.keyValues[binarySearchInternal << 1] == null) {
            return binarySearchInternal;
        }
        int i2 = binarySearchInternal + 1;
        while (i2 < i && this.hashes[i2] == 0) {
            if (this.keyValues[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = binarySearchInternal - 1; i3 >= 0 && this.hashes[i3] == 0; i3--) {
            if (this.keyValues[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public SimpleArrayMap(int i) {
        if (i == 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.keyValues = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            this.hashes = new int[i];
            this.keyValues = new Object[i << 1];
        }
        this._size = 0;
    }

    public /* synthetic */ SimpleArrayMap(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this(0, 1, null);
        if (simpleArrayMap != 0) {
            putAll(simpleArrayMap);
        }
    }

    public final void clear() {
        if (this._size > 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.keyValues = ContainerHelpersKt.EMPTY_OBJECTS;
            this._size = 0;
        }
        if (this._size > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final void ensureCapacity(int minimumCapacity) {
        int i = this._size;
        int[] iArr = this.hashes;
        if (iArr.length < minimumCapacity) {
            int[] copyOf = Arrays.copyOf(iArr, minimumCapacity);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.hashes = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.keyValues, minimumCapacity << 1);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.keyValues = copyOf2;
        }
        if (this._size != i) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(K key) {
        return indexOfKey(key) >= 0;
    }

    public final int indexOfKey(Object key) {
        return key == null ? indexOfNull() : indexOf(key, key.hashCode());
    }

    public final int indexOfValue$ui_text_release(V value) {
        int i = this._size << 1;
        Object[] objArr = this.keyValues;
        if (value == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (Intrinsics.areEqual(value, objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final boolean containsValue(V value) {
        return indexOfValue$ui_text_release(value) >= 0;
    }

    public final V get(K key) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey >= 0) {
            return (V) this.keyValues[(indexOfKey << 1) + 1];
        }
        return null;
    }

    public final V getOrDefault(K key, V defaultValue) {
        int indexOfKey = indexOfKey(key);
        return indexOfKey >= 0 ? (V) this.keyValues[(indexOfKey << 1) + 1] : defaultValue;
    }

    public final K keyAt(int index) {
        return (K) this.keyValues[index << 1];
    }

    public final V valueAt(int index) {
        return (V) this.keyValues[(index << 1) + 1];
    }

    public final V setValueAt(int index, V value) {
        int i = (index << 1) + 1;
        Object[] objArr = this.keyValues;
        V v = (V) objArr[i];
        objArr[i] = value;
        return v;
    }

    public final V put(K key, V value) {
        int hashCode;
        int indexOf;
        int i = this._size;
        if (key == null) {
            indexOf = indexOfNull();
            hashCode = 0;
        } else {
            hashCode = key.hashCode();
            indexOf = indexOf(key, hashCode);
        }
        if (indexOf >= 0) {
            int i2 = (indexOf << 1) + 1;
            Object[] objArr = this.keyValues;
            V v = (V) objArr[i2];
            objArr[i2] = value;
            return v;
        }
        int i3 = ~indexOf;
        int[] iArr = this.hashes;
        if (i >= iArr.length) {
            int i4 = 8;
            if (i >= 8) {
                i4 = (i >> 1) + i;
            } else if (i < 4) {
                i4 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i4);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.hashes = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.keyValues, i4 << 1);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.keyValues = copyOf2;
            if (i != this._size) {
                throw new ConcurrentModificationException();
            }
        }
        if (i3 < i) {
            int[] iArr2 = this.hashes;
            int i5 = i3 + 1;
            ArraysKt.copyInto(iArr2, iArr2, i5, i3, i);
            Object[] objArr2 = this.keyValues;
            ArraysKt.copyInto(objArr2, objArr2, i5 << 1, i3 << 1, this._size << 1);
        }
        int i6 = this._size;
        if (i == i6) {
            int[] iArr3 = this.hashes;
            if (i3 < iArr3.length) {
                iArr3[i3] = hashCode;
                Object[] objArr3 = this.keyValues;
                int i7 = i3 << 1;
                objArr3[i7] = key;
                objArr3[i7 + 1] = value;
                this._size = i6 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final void putAll(SimpleArrayMap<? extends K, ? extends V> array) {
        Intrinsics.checkNotNullParameter(array, "array");
        int i = array._size;
        ensureCapacity(this._size + i);
        if (this._size != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(array.keyAt(i2), array.valueAt(i2));
            }
        } else if (i > 0) {
            ArraysKt.copyInto(array.hashes, this.hashes, 0, 0, i);
            ArraysKt.copyInto(array.keyValues, this.keyValues, 0, 0, i << 1);
            this._size = i;
        }
    }

    public final V putIfAbsent(K key, V value) {
        V v = get(key);
        return v == null ? put(key, value) : v;
    }

    public final V remove(K key) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey >= 0) {
            return removeAt(indexOfKey);
        }
        return null;
    }

    public final boolean remove(K key, V value) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey < 0 || !Intrinsics.areEqual(value, valueAt(indexOfKey))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }

    public final V removeAt(int index) {
        Object[] objArr = this.keyValues;
        int i = index << 1;
        V v = (V) objArr[i + 1];
        int i2 = this._size;
        if (i2 <= 1) {
            clear();
        } else {
            int i3 = i2 - 1;
            int[] iArr = this.hashes;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                int i4 = i2 > 8 ? i2 + (i2 >> 1) : 8;
                int[] iArr2 = new int[i4];
                this.hashes = iArr2;
                this.keyValues = new Object[i4 << 1];
                if (index > 0) {
                    ArraysKt.copyInto(iArr, iArr2, 0, 0, index);
                    ArraysKt.copyInto(objArr, this.keyValues, 0, 0, i);
                }
                if (index < i3) {
                    int i5 = index + 1;
                    ArraysKt.copyInto(iArr, this.hashes, index, i5, i2);
                    ArraysKt.copyInto(objArr, this.keyValues, i, i5 << 1, i2 << 1);
                }
            } else {
                if (index < i3) {
                    int i6 = index + 1;
                    ArraysKt.copyInto(iArr, iArr, index, i6, i2);
                    Object[] objArr2 = this.keyValues;
                    ArraysKt.copyInto(objArr2, objArr2, i, i6 << 1, i2 << 1);
                }
                Object[] objArr3 = this.keyValues;
                int i7 = i3 << 1;
                objArr3[i7] = null;
                objArr3[i7 + 1] = null;
            }
            if (i2 != this._size) {
                throw new ConcurrentModificationException();
            }
            this._size = i3;
        }
        return v;
    }

    public final V replace(K key, V value) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey >= 0) {
            return setValueAt(indexOfKey, value);
        }
        return null;
    }

    public final boolean replace(K key, V oldValue, V newValue) {
        int indexOfKey = indexOfKey(key);
        if (indexOfKey < 0 || valueAt(indexOfKey) != oldValue) {
            return false;
        }
        setValueAt(indexOfKey, newValue);
        return true;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        try {
            if (other instanceof SimpleArrayMap) {
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) other;
                int i = this._size;
                if (i != simpleArrayMap._size) {
                    return false;
                }
                for (int i2 = 0; i2 < i; i2++) {
                    K keyAt = keyAt(i2);
                    V valueAt = valueAt(i2);
                    Object obj = simpleArrayMap.get(keyAt);
                    if (valueAt == null) {
                        if (obj != null || !simpleArrayMap.containsKey(keyAt)) {
                            return false;
                        }
                    } else if (!Intrinsics.areEqual(valueAt, obj)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(other instanceof Map) || this._size != ((Map) other).size()) {
                return false;
            }
            int i3 = this._size;
            for (int i4 = 0; i4 < i3; i4++) {
                K keyAt2 = keyAt(i4);
                V valueAt2 = valueAt(i4);
                Object obj2 = ((Map) other).get(keyAt2);
                if (valueAt2 == null) {
                    if (obj2 != null || !((Map) other).containsKey(keyAt2)) {
                        return false;
                    }
                } else if (!Intrinsics.areEqual(valueAt2, obj2)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public int hashCode() {
        int[] iArr = this.hashes;
        Object[] objArr = this.keyValues;
        int i = this._size;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj != null ? obj.hashCode() : 0) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this._size * 28);
        sb.append('{');
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K keyAt = keyAt(i2);
            if (keyAt != this) {
                sb.append(keyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V valueAt = valueAt(i2);
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
