package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class ObjectArrays {
    private ObjectArrays() {
    }

    public static <T> T[] newArray(Class<T> cls, int i) {
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
    }

    public static <T> T[] newArray(T[] tArr, int i) {
        return (T[]) Platform.newArray(tArr, i);
    }

    public static <T> T[] concat(T[] tArr, T[] tArr2, Class<T> cls) {
        T[] tArr3 = (T[]) newArray(cls, tArr.length + tArr2.length);
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static <T> T[] concat(@ParametricNullness T t, T[] tArr) {
        T[] tArr2 = (T[]) newArray(tArr, tArr.length + 1);
        tArr2[0] = t;
        System.arraycopy(tArr, 0, tArr2, 1, tArr.length);
        return tArr2;
    }

    public static <T> T[] concat(T[] tArr, @ParametricNullness T t) {
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length + 1);
        tArr2[tArr.length] = t;
        return tArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] toArrayImpl(Collection<?> collection, T[] tArr) {
        int size = collection.size();
        if (tArr.length < size) {
            tArr = (T[]) newArray(tArr, size);
        }
        fillArray(collection, tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] toArrayImpl(Object[] objArr, int i, int i2, T[] tArr) {
        Preconditions.checkPositionIndexes(i, i + i2, objArr.length);
        if (tArr.length < i2) {
            tArr = (T[]) newArray(tArr, i2);
        } else if (tArr.length > i2) {
            tArr[i2] = null;
        }
        System.arraycopy(objArr, i, tArr, 0, i2);
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] toArrayImpl(Collection<?> collection) {
        return fillArray(collection, new Object[collection.size()]);
    }

    static Object[] copyAsObjectArray(Object[] objArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, objArr.length);
        if (i2 == 0) {
            return new Object[0];
        }
        Object[] objArr2 = new Object[i2];
        System.arraycopy(objArr, i, objArr2, 0, i2);
        return objArr2;
    }

    private static Object[] fillArray(Iterable<?> iterable, Object[] objArr) {
        Iterator<?> it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return objArr;
    }

    static void swap(Object[] objArr, int i, int i2) {
        Object obj = objArr[i];
        objArr[i] = objArr[i2];
        objArr[i2] = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] checkElementsNotNull(Object... objArr) {
        checkElementsNotNull(objArr, objArr.length);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] checkElementsNotNull(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            checkElementNotNull(objArr[i2], i2);
        }
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object checkElementNotNull(@CheckForNull Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(new StringBuilder(20).append("at index ").append(i).toString());
    }
}
