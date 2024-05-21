package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.LongIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LongSparseArray.kt */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0000\u001a.\u0010\n\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010\u0010\u001a\u0019\u0010\u0011\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u0005H\u0080\b\u001a!\u0010\u0012\u001a\u00020\u0013\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0080\b\u001a&\u0010\u0014\u001a\u00020\u0013\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010\u0015\u001a\u0019\u0010\u0016\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u0005H\u0080\b\u001a(\u0010\u0017\u001a\u0004\u0018\u0001H\f\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0080\b¢\u0006\u0002\u0010\u0018\u001a.\u0010\u0017\u001a\u0002H\f\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010\u001a\u001a:\u0010\u001b\u001a\u0002H\u0004\"\n\b\u0000\u0010\u0004*\u0004\u0018\u0001H\f\"\u0004\b\u0001\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u001a\u001a!\u0010\u001c\u001a\u00020\u0003\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0080\b\u001a&\u0010\u001d\u001a\u00020\u0003\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010\u001e\u001a\u0019\u0010\u001f\u001a\u00020\u0013\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u0005H\u0080\b\u001a!\u0010 \u001a\u00020\u000e\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010!\u001a\u00020\u0003H\u0080\b\u001a.\u0010\"\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010\u0010\u001a)\u0010#\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u000e\u0010$\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\f0\u0005H\u0080\b\u001a0\u0010%\u001a\u0004\u0018\u0001H\f\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010\u001a\u001a!\u0010&\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0080\b\u001a.\u0010&\u001a\u00020\u0013\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010'\u001a!\u0010(\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010!\u001a\u00020\u0003H\u0080\b\u001a0\u0010)\u001a\u0004\u0018\u0001H\f\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010\u001a\u001a6\u0010)\u001a\u00020\u0013\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010*\u001a\u0002H\f2\u0006\u0010+\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010,\u001a.\u0010-\u001a\u00020\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u0002H\fH\u0080\b¢\u0006\u0002\u0010.\u001a\u0019\u0010/\u001a\u00020\u0003\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u0005H\u0080\b\u001a\u0019\u00100\u001a\u000201\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u0005H\u0080\b\u001a&\u00102\u001a\u0002H\f\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u00052\u0006\u0010!\u001a\u00020\u0003H\u0080\b¢\u0006\u0002\u00103\u001a!\u00104\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0086\n\u001aT\u00105\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u000526\u00106\u001a2\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(\r\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u000b07H\u0086\bø\u0001\u0000\u001a.\u0010:\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u0002H\u0004H\u0086\b¢\u0006\u0002\u0010\u001a\u001a7\u0010;\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00040<H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010=\u001a\u0019\u0010>\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0086\b\u001a\u0016\u0010?\u001a\u00020@\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005\u001a-\u0010A\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0005\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0086\u0002\u001a-\u0010B\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\u0004H\u0007¢\u0006\u0002\u0010'\u001a.\u0010C\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\u0004H\u0086\n¢\u0006\u0002\u0010\u0010\u001a\u001c\u0010D\u001a\b\u0012\u0004\u0012\u0002H\u00040E\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"(\u0010\u0002\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00058Æ\u0002¢\u0006\f\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006F"}, d2 = {"DELETED", "", "size", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/collection/LongSparseArray;", "getSize$annotations", "(Landroidx/collection/LongSparseArray;)V", "getSize", "(Landroidx/collection/LongSparseArray;)I", "commonAppend", "", ExifInterface.LONGITUDE_EAST, "key", "", "value", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V", "commonClear", "commonContainsKey", "", "commonContainsValue", "(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)Z", "commonGc", "commonGet", "(Landroidx/collection/LongSparseArray;J)Ljava/lang/Object;", "defaultValue", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;", "commonGetInternal", "commonIndexOfKey", "commonIndexOfValue", "(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)I", "commonIsEmpty", "commonKeyAt", "index", "commonPut", "commonPutAll", "other", "commonPutIfAbsent", "commonRemove", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Z", "commonRemoveAt", "commonReplace", "oldValue", "newValue", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;Ljava/lang/Object;)Z", "commonSetValueAt", "(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V", "commonSize", "commonToString", "", "commonValueAt", "(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;", "contains", "forEach", "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "getOrDefault", "getOrElse", "Lkotlin/Function0;", "(Landroidx/collection/LongSparseArray;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isNotEmpty", "keyIterator", "Lkotlin/collections/LongIterator;", "plus", "remove", "set", "valueIterator", "", "collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LongSparseArrayKt {
    private static final Object DELETED = new Object();

    public static /* synthetic */ void getSize$annotations(LongSparseArray longSparseArray) {
    }

    public static final <T extends E, E> T commonGetInternal(LongSparseArray<E> longSparseArray, long j, T t) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        return (binarySearch < 0 || longSparseArray.values[binarySearch] == DELETED) ? t : (T) longSparseArray.values[binarySearch];
    }

    public static final <E> void commonRemove(LongSparseArray<E> longSparseArray, long j) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        if (binarySearch < 0 || longSparseArray.values[binarySearch] == DELETED) {
            return;
        }
        longSparseArray.values[binarySearch] = DELETED;
        longSparseArray.garbage = true;
    }

    public static final <E> boolean commonRemove(LongSparseArray<E> longSparseArray, long j, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int indexOfKey = longSparseArray.indexOfKey(j);
        if (indexOfKey < 0 || !Intrinsics.areEqual(e, longSparseArray.valueAt(indexOfKey))) {
            return false;
        }
        longSparseArray.removeAt(indexOfKey);
        return true;
    }

    public static final <E> void commonRemoveAt(LongSparseArray<E> longSparseArray, int i) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.values[i] != DELETED) {
            longSparseArray.values[i] = DELETED;
            longSparseArray.garbage = true;
        }
    }

    public static final <E> E commonReplace(LongSparseArray<E> longSparseArray, long j, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int indexOfKey = longSparseArray.indexOfKey(j);
        if (indexOfKey < 0) {
            return null;
        }
        E e2 = (E) longSparseArray.values[indexOfKey];
        longSparseArray.values[indexOfKey] = e;
        return e2;
    }

    public static final <E> boolean commonReplace(LongSparseArray<E> longSparseArray, long j, E e, E e2) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int indexOfKey = longSparseArray.indexOfKey(j);
        if (indexOfKey < 0 || !Intrinsics.areEqual(longSparseArray.values[indexOfKey], e)) {
            return false;
        }
        longSparseArray.values[indexOfKey] = e2;
        return true;
    }

    public static final <E> void commonGc(LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int i = longSparseArray.size;
        long[] jArr = longSparseArray.keys;
        Object[] objArr = longSparseArray.values;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != DELETED) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        longSparseArray.garbage = false;
        longSparseArray.size = i2;
    }

    public static final <E> void commonPut(LongSparseArray<E> longSparseArray, long j, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        if (binarySearch >= 0) {
            longSparseArray.values[binarySearch] = e;
            return;
        }
        int i = ~binarySearch;
        if (i < longSparseArray.size && longSparseArray.values[i] == DELETED) {
            longSparseArray.keys[i] = j;
            longSparseArray.values[i] = e;
            return;
        }
        if (longSparseArray.garbage && longSparseArray.size >= longSparseArray.keys.length) {
            int i2 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
            i = ~ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        }
        if (longSparseArray.size >= longSparseArray.keys.length) {
            int idealLongArraySize = ContainerHelpersKt.idealLongArraySize(longSparseArray.size + 1);
            long[] copyOf = Arrays.copyOf(longSparseArray.keys, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            longSparseArray.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(longSparseArray.values, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            longSparseArray.values = copyOf2;
        }
        if (longSparseArray.size - i != 0) {
            int i5 = i + 1;
            ArraysKt.copyInto(longSparseArray.keys, longSparseArray.keys, i5, i, longSparseArray.size);
            ArraysKt.copyInto(longSparseArray.values, longSparseArray.values, i5, i, longSparseArray.size);
        }
        longSparseArray.keys[i] = j;
        longSparseArray.values[i] = e;
        longSparseArray.size++;
    }

    public static final <E> void commonPutAll(LongSparseArray<E> longSparseArray, LongSparseArray<? extends E> other) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        for (int i = 0; i < size; i++) {
            longSparseArray.put(other.keyAt(i), other.valueAt(i));
        }
    }

    public static final <E> E commonPutIfAbsent(LongSparseArray<E> longSparseArray, long j, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        E e2 = longSparseArray.get(j);
        if (e2 == null) {
            longSparseArray.put(j, e);
        }
        return e2;
    }

    public static final <E> int commonSize(LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i2;
        }
        return longSparseArray.size;
    }

    public static final <E> boolean commonIsEmpty(LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.size() == 0;
    }

    public static final <E> long commonKeyAt(LongSparseArray<E> longSparseArray, int i) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (i < 0 || i >= longSparseArray.size) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i).toString());
        }
        if (longSparseArray.garbage) {
            int i2 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
        }
        return longSparseArray.keys[i];
    }

    public static final <E> E commonValueAt(LongSparseArray<E> longSparseArray, int i) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (i < 0 || i >= longSparseArray.size) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i).toString());
        }
        if (longSparseArray.garbage) {
            int i2 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
        }
        return (E) longSparseArray.values[i];
    }

    public static final <E> void commonSetValueAt(LongSparseArray<E> longSparseArray, int i, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (i < 0 || i >= longSparseArray.size) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i).toString());
        }
        if (longSparseArray.garbage) {
            int i2 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
        }
        longSparseArray.values[i] = e;
    }

    public static final <E> int commonIndexOfKey(LongSparseArray<E> longSparseArray, long j) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i2;
        }
        return ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
    }

    public static final <E> int commonIndexOfValue(LongSparseArray<E> longSparseArray, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i2;
        }
        int i4 = longSparseArray.size;
        for (int i5 = 0; i5 < i4; i5++) {
            if (longSparseArray.values[i5] == e) {
                return i5;
            }
        }
        return -1;
    }

    public static final <E> boolean commonContainsKey(LongSparseArray<E> longSparseArray, long j) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j) >= 0;
    }

    public static final <E> boolean commonContainsValue(LongSparseArray<E> longSparseArray, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.indexOfValue(e) >= 0;
    }

    public static final <E> void commonClear(LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int i = longSparseArray.size;
        Object[] objArr = longSparseArray.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        longSparseArray.size = 0;
        longSparseArray.garbage = false;
    }

    public static final <E> void commonAppend(LongSparseArray<E> longSparseArray, long j, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.size != 0 && j <= longSparseArray.keys[longSparseArray.size - 1]) {
            longSparseArray.put(j, e);
            return;
        }
        if (longSparseArray.garbage && longSparseArray.size >= longSparseArray.keys.length) {
            int i = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i2;
        }
        int i4 = longSparseArray.size;
        if (i4 >= longSparseArray.keys.length) {
            int idealLongArraySize = ContainerHelpersKt.idealLongArraySize(i4 + 1);
            long[] copyOf = Arrays.copyOf(longSparseArray.keys, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            longSparseArray.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(longSparseArray.values, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            longSparseArray.values = copyOf2;
        }
        longSparseArray.keys[i4] = j;
        longSparseArray.values[i4] = e;
        longSparseArray.size = i4 + 1;
    }

    public static final <E> String commonToString(LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(longSparseArray.size * 28);
        sb.append('{');
        int i = longSparseArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(longSparseArray.keyAt(i2));
            sb.append('=');
            E valueAt = longSparseArray.valueAt(i2);
            if (valueAt != sb) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public static final <T> int getSize(LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.size();
    }

    public static final <T> boolean contains(LongSparseArray<T> longSparseArray, long j) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.containsKey(j);
    }

    public static final <T> void set(LongSparseArray<T> longSparseArray, long j, T t) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        longSparseArray.put(j, t);
    }

    public static final <T> LongSparseArray<T> plus(LongSparseArray<T> longSparseArray, LongSparseArray<T> other) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        LongSparseArray<T> longSparseArray2 = new LongSparseArray<>(longSparseArray.size() + other.size());
        longSparseArray2.putAll(longSparseArray);
        longSparseArray2.putAll(other);
        return longSparseArray2;
    }

    public static final <T> T getOrDefault(LongSparseArray<T> longSparseArray, long j, T t) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.get(j, t);
    }

    public static final <T> T getOrElse(LongSparseArray<T> longSparseArray, long j, Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t = longSparseArray.get(j);
        return t == null ? defaultValue.invoke() : t;
    }

    public static final <T> boolean isNotEmpty(LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return !longSparseArray.isEmpty();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Replaced with member function. Remove extension import!")
    public static final /* synthetic */ boolean remove(LongSparseArray longSparseArray, long j, Object obj) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.remove(j, obj);
    }

    public static final <T> void forEach(LongSparseArray<T> longSparseArray, Function2<? super Long, ? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            action.invoke(Long.valueOf(longSparseArray.keyAt(i)), longSparseArray.valueAt(i));
        }
    }

    public static final <T> LongIterator keyIterator(final LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return new LongIterator() { // from class: androidx.collection.LongSparseArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            public final void setIndex(int i) {
                this.index = i;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < longSparseArray.size();
            }

            @Override // kotlin.collections.LongIterator
            public long nextLong() {
                LongSparseArray<T> longSparseArray2 = longSparseArray;
                int i = this.index;
                this.index = i + 1;
                return longSparseArray2.keyAt(i);
            }
        };
    }

    public static final <T> Iterator<T> valueIterator(LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return new LongSparseArrayKt$valueIterator$1(longSparseArray);
    }

    public static final <E> E commonGet(LongSparseArray<E> longSparseArray, long j) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        if (binarySearch < 0 || longSparseArray.values[binarySearch] == DELETED) {
            return null;
        }
        return (E) longSparseArray.values[binarySearch];
    }

    public static final <E> E commonGet(LongSparseArray<E> longSparseArray, long j, E e) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        return (binarySearch < 0 || longSparseArray.values[binarySearch] == DELETED) ? e : (E) longSparseArray.values[binarySearch];
    }
}
