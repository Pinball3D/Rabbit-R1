package androidx.core.graphics;

import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import androidx.collection.LongSparseArray;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class WeightTypefaceApi21 {
    private static final String NATIVE_CREATE_FROM_TYPEFACE_METHOD = "nativeCreateFromTypeface";
    private static final String NATIVE_CREATE_WEIGHT_ALIAS_METHOD = "nativeCreateWeightAlias";
    private static final String NATIVE_INSTANCE_FIELD = "native_instance";
    private static final String TAG = "WeightTypeface";
    private static final Constructor<Typeface> sConstructor;
    private static final Method sNativeCreateFromTypeface;
    private static final Method sNativeCreateWeightAlias;
    private static final Field sNativeInstance;
    private static final Object sWeightCacheLock;
    private static final LongSparseArray<SparseArray<Typeface>> sWeightTypefaceCache;

    private static boolean isPrivateApiAvailable() {
        return sNativeInstance != null;
    }

    static {
        Field field;
        Method method;
        Method method2;
        Constructor<Typeface> constructor;
        try {
            field = Typeface.class.getDeclaredField(NATIVE_INSTANCE_FIELD);
            method = Typeface.class.getDeclaredMethod(NATIVE_CREATE_FROM_TYPEFACE_METHOD, Long.TYPE, Integer.TYPE);
            method.setAccessible(true);
            method2 = Typeface.class.getDeclaredMethod(NATIVE_CREATE_WEIGHT_ALIAS_METHOD, Long.TYPE, Integer.TYPE);
            method2.setAccessible(true);
            constructor = Typeface.class.getDeclaredConstructor(Long.TYPE);
            constructor.setAccessible(true);
        } catch (NoSuchFieldException | NoSuchMethodException e) {
            Log.e(TAG, e.getClass().getName(), e);
            field = null;
            method = null;
            method2 = null;
            constructor = null;
        }
        sNativeInstance = field;
        sNativeCreateFromTypeface = method;
        sNativeCreateWeightAlias = method2;
        sConstructor = constructor;
        sWeightTypefaceCache = new LongSparseArray<>(3);
        sWeightCacheLock = new Object();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Typeface createWeightStyle(Typeface typeface, int i, boolean z) {
        Typeface create;
        if (!isPrivateApiAvailable()) {
            return null;
        }
        int i2 = (i << 1) | (z ? 1 : 0);
        synchronized (sWeightCacheLock) {
            long nativeInstance = getNativeInstance(typeface);
            LongSparseArray<SparseArray<Typeface>> longSparseArray = sWeightTypefaceCache;
            SparseArray<Typeface> sparseArray = longSparseArray.get(nativeInstance);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>(4);
                longSparseArray.put(nativeInstance, sparseArray);
            } else {
                Typeface typeface2 = sparseArray.get(i2);
                if (typeface2 != null) {
                    return typeface2;
                }
            }
            if (z == typeface.isItalic()) {
                create = create(nativeCreateWeightAlias(nativeInstance, i));
            } else {
                create = create(nativeCreateFromTypefaceWithExactStyle(nativeInstance, i, z));
            }
            sparseArray.put(i2, create);
            return create;
        }
    }

    private static long getNativeInstance(Typeface typeface) {
        try {
            return sNativeInstance.getLong(typeface);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    private static long nativeCreateFromTypefaceWithExactStyle(long j, int i, boolean z) {
        try {
            return ((Long) sNativeCreateWeightAlias.invoke(null, Long.valueOf(((Long) sNativeCreateFromTypeface.invoke(null, Long.valueOf(j), Integer.valueOf(z ? 2 : 0))).longValue()), Integer.valueOf(i))).longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static long nativeCreateWeightAlias(long j, int i) {
        try {
            return ((Long) sNativeCreateWeightAlias.invoke(null, Long.valueOf(j), Integer.valueOf(i))).longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Typeface create(long j) {
        try {
            return sConstructor.newInstance(Long.valueOf(j));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private WeightTypefaceApi21() {
    }
}
