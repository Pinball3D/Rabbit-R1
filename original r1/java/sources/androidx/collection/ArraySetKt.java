package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ArraySet.kt */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0015\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b\u0000\u0010\u0004H\u0086\b\u001a+\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b\u0000\u0010\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00040\u0006\"\u0002H\u0004¢\u0006\u0002\u0010\u0007\u001a)\u0010\b\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010\b\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010\u000f\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a \u0010\u0012\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0013\u001a\u00020\u0001H\u0000\u001a \u0010\u0014\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u001a\u0019\u0010\u0016\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010\u0017\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010\u0018\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a!\u0010\u0019\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u001a\u001a\u00020\u0001H\u0080\b\u001a#\u0010\u001b\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0080\b\u001a\u0019\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a*\u0010\u001f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u001a#\u0010!\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001dH\u0080\b\u001a\u0018\u0010\"\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0000\u001a\u0019\u0010#\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a)\u0010$\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010$\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010%\u001a\u0002H\n\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010&\u001a\u00020\u0001H\u0080\b¢\u0006\u0002\u0010'\u001a&\u0010(\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a'\u0010)\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a\u0019\u0010*\u001a\u00020+\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a&\u0010,\u001a\u0002H\n\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010&\u001a\u00020\u0001H\u0080\b¢\u0006\u0002\u0010'\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"ARRAY_SET_BASE_SIZE", "", "arraySetOf", "Landroidx/collection/ArraySet;", ExifInterface.GPS_DIRECTION_TRUE, "values", "", "([Ljava/lang/Object;)Landroidx/collection/ArraySet;", "addAllInternal", "", ExifInterface.LONGITUDE_EAST, "array", "", "elements", "", "addInternal", "element", "(Landroidx/collection/ArraySet;Ljava/lang/Object;)Z", "allocArrays", "size", "binarySearchInternal", "hash", "clearInternal", "containsAllInternal", "containsInternal", "ensureCapacityInternal", "minimumCapacity", "equalsInternal", "other", "", "hashCodeInternal", "indexOf", "key", "indexOfInternal", "indexOfNull", "isEmptyInternal", "removeAllInternal", "removeAtInternal", "index", "(Landroidx/collection/ArraySet;I)Ljava/lang/Object;", "removeInternal", "retainAllInternal", "toStringInternal", "", "valueAtInternal", "collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ArraySetKt {
    public static final int ARRAY_SET_BASE_SIZE = 4;

    public static final <T> ArraySet<T> arraySetOf() {
        return new ArraySet<>(0, 1, null);
    }

    public static final <T> ArraySet<T> arraySetOf(T... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        ArraySet<T> arraySet = new ArraySet<>(values.length);
        for (T t : values) {
            arraySet.add(t);
        }
        return arraySet;
    }

    public static final <E> int binarySearchInternal(ArraySet<E> arraySet, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        try {
            return ContainerHelpersKt.binarySearch(arraySet.getHashes(), arraySet.get_size$collection(), i);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> int indexOf(ArraySet<E> arraySet, Object obj, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        if (i2 == 0) {
            return -1;
        }
        int binarySearchInternal = binarySearchInternal(arraySet, i);
        if (binarySearchInternal < 0 || Intrinsics.areEqual(obj, arraySet.getArray()[binarySearchInternal])) {
            return binarySearchInternal;
        }
        int i3 = binarySearchInternal + 1;
        while (i3 < i2 && arraySet.getHashes()[i3] == i) {
            if (Intrinsics.areEqual(obj, arraySet.getArray()[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = binarySearchInternal - 1; i4 >= 0 && arraySet.getHashes()[i4] == i; i4--) {
            if (Intrinsics.areEqual(obj, arraySet.getArray()[i4])) {
                return i4;
            }
        }
        return ~i3;
    }

    public static final <E> int indexOfNull(ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        return indexOf(arraySet, null, 0);
    }

    public static final <E> void allocArrays(ArraySet<E> arraySet, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        arraySet.setHashes$collection(new int[i]);
        arraySet.setArray$collection(new Object[i]);
    }

    public static final <E> void clearInternal(ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet.get_size$collection() != 0) {
            arraySet.setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            arraySet.setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            arraySet.set_size$collection(0);
        }
        if (arraySet.get_size$collection() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> void ensureCapacityInternal(ArraySet<E> arraySet, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        if (arraySet.getHashes().length < i) {
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i);
            if (arraySet.get_size$collection() > 0) {
                ArraysKt.copyInto$default(hashes, arraySet.getHashes(), 0, 0, arraySet.get_size$collection(), 6, (Object) null);
                ArraysKt.copyInto$default(array, arraySet.getArray(), 0, 0, arraySet.get_size$collection(), 6, (Object) null);
            }
        }
        if (arraySet.get_size$collection() != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> boolean containsInternal(ArraySet<E> arraySet, E e) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        return arraySet.indexOf(e) >= 0;
    }

    public static final <E> int indexOfInternal(ArraySet<E> arraySet, Object obj) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        return obj == null ? indexOfNull(arraySet) : indexOf(arraySet, obj, obj.hashCode());
    }

    public static final <E> E valueAtInternal(ArraySet<E> arraySet, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        return (E) arraySet.getArray()[i];
    }

    public static final <E> boolean isEmptyInternal(ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        return arraySet.get_size$collection() <= 0;
    }

    public static final <E> boolean addInternal(ArraySet<E> arraySet, E e) {
        int i;
        int indexOf;
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        if (e == null) {
            indexOf = indexOfNull(arraySet);
            i = 0;
        } else {
            int hashCode = e.hashCode();
            i = hashCode;
            indexOf = indexOf(arraySet, e, hashCode);
        }
        if (indexOf >= 0) {
            return false;
        }
        int i3 = ~indexOf;
        if (i2 >= arraySet.getHashes().length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i4);
            if (i2 != arraySet.get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            if (!(arraySet.getHashes().length == 0)) {
                ArraysKt.copyInto$default(hashes, arraySet.getHashes(), 0, 0, hashes.length, 6, (Object) null);
                ArraysKt.copyInto$default(array, arraySet.getArray(), 0, 0, array.length, 6, (Object) null);
            }
        }
        if (i3 < i2) {
            int i5 = i3 + 1;
            ArraysKt.copyInto(arraySet.getHashes(), arraySet.getHashes(), i5, i3, i2);
            ArraysKt.copyInto(arraySet.getArray(), arraySet.getArray(), i5, i3, i2);
        }
        if (i2 != arraySet.get_size$collection() || i3 >= arraySet.getHashes().length) {
            throw new ConcurrentModificationException();
        }
        arraySet.getHashes()[i3] = i;
        arraySet.getArray()[i3] = e;
        arraySet.set_size$collection(arraySet.get_size$collection() + 1);
        return true;
    }

    public static final <E> void addAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> array) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(array, "array");
        int i = array.get_size$collection();
        arraySet.ensureCapacity(arraySet.get_size$collection() + i);
        if (arraySet.get_size$collection() != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                arraySet.add(array.valueAt(i2));
            }
            return;
        }
        if (i > 0) {
            ArraysKt.copyInto$default(array.getHashes(), arraySet.getHashes(), 0, 0, i, 6, (Object) null);
            ArraysKt.copyInto$default(array.getArray(), arraySet.getArray(), 0, 0, i, 6, (Object) null);
            if (arraySet.get_size$collection() != 0) {
                throw new ConcurrentModificationException();
            }
            arraySet.set_size$collection(i);
        }
    }

    public static final <E> boolean removeInternal(ArraySet<E> arraySet, E e) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int indexOf = arraySet.indexOf(e);
        if (indexOf < 0) {
            return false;
        }
        arraySet.removeAt(indexOf);
        return true;
    }

    public static final <E> E removeAtInternal(ArraySet<E> arraySet, int i) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        E e = (E) arraySet.getArray()[i];
        if (i2 <= 1) {
            arraySet.clear();
        } else {
            int i3 = i2 - 1;
            if (arraySet.getHashes().length > 8 && arraySet.get_size$collection() < arraySet.getHashes().length / 3) {
                int i4 = arraySet.get_size$collection() > 8 ? arraySet.get_size$collection() + (arraySet.get_size$collection() >> 1) : 8;
                int[] hashes = arraySet.getHashes();
                Object[] array = arraySet.getArray();
                allocArrays(arraySet, i4);
                if (i > 0) {
                    ArraysKt.copyInto$default(hashes, arraySet.getHashes(), 0, 0, i, 6, (Object) null);
                    ArraysKt.copyInto$default(array, arraySet.getArray(), 0, 0, i, 6, (Object) null);
                }
                if (i < i3) {
                    int i5 = i + 1;
                    ArraysKt.copyInto(hashes, arraySet.getHashes(), i, i5, i2);
                    ArraysKt.copyInto(array, arraySet.getArray(), i, i5, i2);
                }
            } else {
                if (i < i3) {
                    int i6 = i + 1;
                    ArraysKt.copyInto(arraySet.getHashes(), arraySet.getHashes(), i, i6, i2);
                    ArraysKt.copyInto(arraySet.getArray(), arraySet.getArray(), i, i6, i2);
                }
                arraySet.getArray()[i3] = null;
            }
            if (i2 != arraySet.get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            arraySet.set_size$collection(i3);
        }
        return e;
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> array) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(array, "array");
        int i = array.get_size$collection();
        int i2 = arraySet.get_size$collection();
        for (int i3 = 0; i3 < i; i3++) {
            arraySet.remove(array.valueAt(i3));
        }
        return i2 != arraySet.get_size$collection();
    }

    public static final <E> boolean equalsInternal(ArraySet<E> arraySet, Object obj) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet == obj) {
            return true;
        }
        if (!(obj instanceof Set) || arraySet.size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = arraySet.get_size$collection();
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(arraySet.valueAt(i2))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static final <E> int hashCodeInternal(ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int[] hashes = arraySet.getHashes();
        int i = arraySet.get_size$collection();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += hashes[i3];
        }
        return i2;
    }

    public static final <E> String toStringInternal(ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet.isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(arraySet.get_size$collection() * 14);
        sb.append('{');
        int i = arraySet.get_size$collection();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E valueAt = arraySet.valueAt(i2);
            if (valueAt != arraySet) {
                sb.append(valueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public static final <E> boolean containsAllInternal(ArraySet<E> arraySet, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            if (!arraySet.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final <E> boolean addAllInternal(ArraySet<E> arraySet, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        arraySet.ensureCapacity(arraySet.get_size$collection() + elements.size());
        Iterator<? extends E> it = elements.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= arraySet.add(it.next());
        }
        return z;
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= arraySet.remove(it.next());
        }
        return z;
    }

    public static final <E> boolean retainAllInternal(ArraySet<E> arraySet, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        for (int i = arraySet.get_size$collection() - 1; -1 < i; i--) {
            if (!CollectionsKt.contains(elements, arraySet.getArray()[i])) {
                arraySet.removeAt(i);
                z = true;
            }
        }
        return z;
    }
}
