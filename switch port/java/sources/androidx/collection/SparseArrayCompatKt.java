package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SparseArrayCompat.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a.\u0010\u0002\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\t\u001a\u0019\u0010\n\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a!\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0080\b\u001a&\u0010\r\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u000e\u001a'\u0010\u000f\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¢\u0006\u0002\u0010\u0010\u001a-\u0010\u000f\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u0002H\u0004H\u0000¢\u0006\u0002\u0010\u0012\u001a!\u0010\u0013\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0080\b\u001a&\u0010\u0014\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u0015\u001a\u0019\u0010\u0016\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a!\u0010\u0017\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u0007H\u0080\b\u001a.\u0010\u0019\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\t\u001a)\u0010\u001a\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u000e\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00040\u0005H\u0080\b\u001a0\u0010\u001c\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u0012\u001a \u0010\u001d\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a+\u0010\u001d\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0080\b\u001a!\u0010\u001e\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u0007H\u0080\b\u001a)\u0010\u001f\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0080\b\u001a0\u0010!\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u0012\u001a6\u0010!\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\"\u001a\u0002H\u00042\u0006\u0010#\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010$\u001a.\u0010%\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\t\u001a\u0019\u0010&\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a\u0019\u0010'\u001a\u00020(\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a&\u0010)\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u0007H\u0080\b¢\u0006\u0002\u0010\u0010\u001a\u0018\u0010*\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0002\u001a:\u0010+\u001a\u0002H,\"\u0004\b\u0000\u0010\u0004\"\n\b\u0001\u0010,*\u0004\u0018\u0001H\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u0002H,H\u0082\b¢\u0006\u0002\u0010\u0012\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"DELETED", "", "commonAppend", "", ExifInterface.LONGITUDE_EAST, "Landroidx/collection/SparseArrayCompat;", "key", "", "value", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)V", "commonClear", "commonContainsKey", "", "commonContainsValue", "(Landroidx/collection/SparseArrayCompat;Ljava/lang/Object;)Z", "commonGet", "(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;", "defaultValue", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;", "commonIndexOfKey", "commonIndexOfValue", "(Landroidx/collection/SparseArrayCompat;Ljava/lang/Object;)I", "commonIsEmpty", "commonKeyAt", "index", "commonPut", "commonPutAll", "other", "commonPutIfAbsent", "commonRemove", "commonRemoveAt", "commonRemoveAtRange", "size", "commonReplace", "oldValue", "newValue", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;Ljava/lang/Object;)Z", "commonSetValueAt", "commonSize", "commonToString", "", "commonValueAt", "gc", "internalGet", ExifInterface.GPS_DIRECTION_TRUE, "collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SparseArrayCompatKt {
    private static final Object DELETED = new Object();

    private static final <E, T extends E> T internalGet(SparseArrayCompat<E> sparseArrayCompat, int i, T t) {
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        return (binarySearch < 0 || sparseArrayCompat.values[binarySearch] == DELETED) ? t : (T) sparseArrayCompat.values[binarySearch];
    }

    public static final <E> void commonRemove(SparseArrayCompat<E> sparseArrayCompat, int i) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        if (binarySearch >= 0) {
            Object obj = sparseArrayCompat.values[binarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                sparseArrayCompat.values[binarySearch] = obj2;
                sparseArrayCompat.garbage = true;
            }
        }
    }

    public static final <E> boolean commonRemove(SparseArrayCompat<E> sparseArrayCompat, int i, Object obj) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int indexOfKey = sparseArrayCompat.indexOfKey(i);
        if (indexOfKey < 0 || !Intrinsics.areEqual(obj, sparseArrayCompat.valueAt(indexOfKey))) {
            return false;
        }
        sparseArrayCompat.removeAt(indexOfKey);
        return true;
    }

    public static final <E> void commonRemoveAt(SparseArrayCompat<E> sparseArrayCompat, int i) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.values[i] != DELETED) {
            sparseArrayCompat.values[i] = DELETED;
            sparseArrayCompat.garbage = true;
        }
    }

    public static final <E> void commonRemoveAtRange(SparseArrayCompat<E> sparseArrayCompat, int i, int i2) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int min = Math.min(i2, i + i2);
        while (i < min) {
            sparseArrayCompat.removeAt(i);
            i++;
        }
    }

    public static final <E> E commonReplace(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int indexOfKey = sparseArrayCompat.indexOfKey(i);
        if (indexOfKey < 0) {
            return null;
        }
        E e2 = (E) sparseArrayCompat.values[indexOfKey];
        sparseArrayCompat.values[indexOfKey] = e;
        return e2;
    }

    public static final <E> boolean commonReplace(SparseArrayCompat<E> sparseArrayCompat, int i, E e, E e2) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int indexOfKey = sparseArrayCompat.indexOfKey(i);
        if (indexOfKey < 0 || !Intrinsics.areEqual(sparseArrayCompat.values[indexOfKey], e)) {
            return false;
        }
        sparseArrayCompat.values[indexOfKey] = e2;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> void gc(SparseArrayCompat<E> sparseArrayCompat) {
        int i = sparseArrayCompat.size;
        int[] iArr = sparseArrayCompat.keys;
        Object[] objArr = sparseArrayCompat.values;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != DELETED) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        sparseArrayCompat.garbage = false;
        sparseArrayCompat.size = i2;
    }

    public static final <E> void commonPut(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        if (binarySearch >= 0) {
            sparseArrayCompat.values[binarySearch] = e;
            return;
        }
        int i2 = ~binarySearch;
        if (i2 < sparseArrayCompat.size && sparseArrayCompat.values[i2] == DELETED) {
            sparseArrayCompat.keys[i2] = i;
            sparseArrayCompat.values[i2] = e;
            return;
        }
        if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
            gc(sparseArrayCompat);
            i2 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        }
        if (sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(sparseArrayCompat.size + 1);
            int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            sparseArrayCompat.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            sparseArrayCompat.values = copyOf2;
        }
        if (sparseArrayCompat.size - i2 != 0) {
            int i3 = i2 + 1;
            ArraysKt.copyInto(sparseArrayCompat.keys, sparseArrayCompat.keys, i3, i2, sparseArrayCompat.size);
            ArraysKt.copyInto(sparseArrayCompat.values, sparseArrayCompat.values, i3, i2, sparseArrayCompat.size);
        }
        sparseArrayCompat.keys[i2] = i;
        sparseArrayCompat.values[i2] = e;
        sparseArrayCompat.size++;
    }

    public static final <E> void commonPutAll(SparseArrayCompat<E> sparseArrayCompat, SparseArrayCompat<? extends E> other) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        for (int i = 0; i < size; i++) {
            int keyAt = other.keyAt(i);
            E valueAt = other.valueAt(i);
            int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, keyAt);
            if (binarySearch >= 0) {
                sparseArrayCompat.values[binarySearch] = valueAt;
            } else {
                int i2 = ~binarySearch;
                if (i2 < sparseArrayCompat.size && sparseArrayCompat.values[i2] == DELETED) {
                    sparseArrayCompat.keys[i2] = keyAt;
                    sparseArrayCompat.values[i2] = valueAt;
                } else {
                    if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        gc(sparseArrayCompat);
                        i2 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, keyAt);
                    }
                    if (sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(sparseArrayCompat.size + 1);
                        int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                        sparseArrayCompat.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
                        sparseArrayCompat.values = copyOf2;
                    }
                    if (sparseArrayCompat.size - i2 != 0) {
                        int i3 = i2 + 1;
                        ArraysKt.copyInto(sparseArrayCompat.keys, sparseArrayCompat.keys, i3, i2, sparseArrayCompat.size);
                        ArraysKt.copyInto(sparseArrayCompat.values, sparseArrayCompat.values, i3, i2, sparseArrayCompat.size);
                    }
                    sparseArrayCompat.keys[i2] = keyAt;
                    sparseArrayCompat.values[i2] = valueAt;
                    sparseArrayCompat.size++;
                }
            }
        }
    }

    public static final <E> E commonPutIfAbsent(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        E e2 = (E) commonGet(sparseArrayCompat, i);
        if (e2 == null) {
            int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
            if (binarySearch >= 0) {
                sparseArrayCompat.values[binarySearch] = e;
            } else {
                int i2 = ~binarySearch;
                if (i2 < sparseArrayCompat.size && sparseArrayCompat.values[i2] == DELETED) {
                    sparseArrayCompat.keys[i2] = i;
                    sparseArrayCompat.values[i2] = e;
                } else {
                    if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        gc(sparseArrayCompat);
                        i2 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
                    }
                    if (sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(sparseArrayCompat.size + 1);
                        int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                        sparseArrayCompat.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
                        sparseArrayCompat.values = copyOf2;
                    }
                    if (sparseArrayCompat.size - i2 != 0) {
                        int i3 = i2 + 1;
                        ArraysKt.copyInto(sparseArrayCompat.keys, sparseArrayCompat.keys, i3, i2, sparseArrayCompat.size);
                        ArraysKt.copyInto(sparseArrayCompat.values, sparseArrayCompat.values, i3, i2, sparseArrayCompat.size);
                    }
                    sparseArrayCompat.keys[i2] = i;
                    sparseArrayCompat.values[i2] = e;
                    sparseArrayCompat.size++;
                }
            }
        }
        return e2;
    }

    public static final <E> int commonSize(SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return sparseArrayCompat.size;
    }

    public static final <E> boolean commonIsEmpty(SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return sparseArrayCompat.size() == 0;
    }

    public static final <E> int commonKeyAt(SparseArrayCompat<E> sparseArrayCompat, int i) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return sparseArrayCompat.keys[i];
    }

    public static final <E> E commonValueAt(SparseArrayCompat<E> sparseArrayCompat, int i) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return (E) sparseArrayCompat.values[i];
    }

    public static final <E> void commonSetValueAt(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        sparseArrayCompat.values[i] = e;
    }

    public static final <E> int commonIndexOfKey(SparseArrayCompat<E> sparseArrayCompat, int i) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
    }

    public static final <E> int commonIndexOfValue(SparseArrayCompat<E> sparseArrayCompat, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        int i = sparseArrayCompat.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (sparseArrayCompat.values[i2] == e) {
                return i2;
            }
        }
        return -1;
    }

    public static final <E> boolean commonContainsKey(SparseArrayCompat<E> sparseArrayCompat, int i) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return sparseArrayCompat.indexOfKey(i) >= 0;
    }

    public static final <E> void commonClear(SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int i = sparseArrayCompat.size;
        Object[] objArr = sparseArrayCompat.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        sparseArrayCompat.size = 0;
        sparseArrayCompat.garbage = false;
    }

    public static final <E> void commonAppend(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.size != 0 && i <= sparseArrayCompat.keys[sparseArrayCompat.size - 1]) {
            sparseArrayCompat.put(i, e);
            return;
        }
        if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
            gc(sparseArrayCompat);
        }
        int i2 = sparseArrayCompat.size;
        if (i2 >= sparseArrayCompat.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
            int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            sparseArrayCompat.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            sparseArrayCompat.values = copyOf2;
        }
        sparseArrayCompat.keys[i2] = i;
        sparseArrayCompat.values[i2] = e;
        sparseArrayCompat.size = i2 + 1;
    }

    public static final <E> String commonToString(SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(sparseArrayCompat.size * 28);
        sb.append('{');
        int i = sparseArrayCompat.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(sparseArrayCompat.keyAt(i2));
            sb.append('=');
            E valueAt = sparseArrayCompat.valueAt(i2);
            if (valueAt != sparseArrayCompat) {
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

    public static final <E> E commonGet(SparseArrayCompat<E> sparseArrayCompat, int i) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        if (binarySearch < 0 || sparseArrayCompat.values[binarySearch] == DELETED) {
            return null;
        }
        return (E) sparseArrayCompat.values[binarySearch];
    }

    public static final <E> E commonGet(SparseArrayCompat<E> sparseArrayCompat, int i, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        return (binarySearch < 0 || sparseArrayCompat.values[binarySearch] == DELETED) ? e : (E) sparseArrayCompat.values[binarySearch];
    }

    public static final <E> boolean commonContainsValue(SparseArrayCompat<E> sparseArrayCompat, E e) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        int i = sparseArrayCompat.size;
        int i2 = 0;
        while (i2 < i) {
            if (sparseArrayCompat.values[i2] == e) {
                return i2 >= 0;
            }
            i2++;
        }
        return false;
    }
}
