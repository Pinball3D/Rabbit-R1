package androidx.media3.common.util;

import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class BundleUtil {
    private static final String TAG = "BundleUtil";
    private static Method getIBinderMethod;
    private static Method putIBinderMethod;

    public static IBinder getBinder(Bundle bundle, String str) {
        if (Util.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return getBinderByReflection(bundle, str);
    }

    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        if (Util.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            putBinderByReflection(bundle, str, iBinder);
        }
    }

    private static IBinder getBinderByReflection(Bundle bundle, String str) {
        Method method = getIBinderMethod;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                getIBinderMethod = method2;
                method2.setAccessible(true);
                method = getIBinderMethod;
            } catch (NoSuchMethodException e) {
                Log.i(TAG, "Failed to retrieve getIBinder method", e);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            Log.i(TAG, "Failed to invoke getIBinder via reflection", e2);
            return null;
        }
    }

    private static void putBinderByReflection(Bundle bundle, String str, IBinder iBinder) {
        Method method = putIBinderMethod;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                putIBinderMethod = method2;
                method2.setAccessible(true);
                method = putIBinderMethod;
            } catch (NoSuchMethodException e) {
                Log.i(TAG, "Failed to retrieve putIBinder method", e);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            Log.i(TAG, "Failed to invoke putIBinder via reflection", e2);
        }
    }

    private BundleUtil() {
    }
}
