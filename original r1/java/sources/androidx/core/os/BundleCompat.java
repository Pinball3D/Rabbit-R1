package androidx.core.os;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class BundleCompat {
    private BundleCompat() {
    }

    public static <T> T getParcelable(Bundle bundle, String str, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return (T) Api33Impl.getParcelable(bundle, str, cls);
        }
        T t = (T) bundle.getParcelable(str);
        if (cls.isInstance(t)) {
            return t;
        }
        return null;
    }

    public static Parcelable[] getParcelableArray(Bundle bundle, String str, Class<? extends Parcelable> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return (Parcelable[]) Api33Impl.getParcelableArray(bundle, str, cls);
        }
        return bundle.getParcelableArray(str);
    }

    public static <T> ArrayList<T> getParcelableArrayList(Bundle bundle, String str, Class<? extends T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.getParcelableArrayList(bundle, str, cls);
        }
        return bundle.getParcelableArrayList(str);
    }

    public static <T> SparseArray<T> getSparseParcelableArray(Bundle bundle, String str, Class<? extends T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.getSparseParcelableArray(bundle, str, cls);
        }
        return bundle.getSparseParcelableArray(str);
    }

    public static IBinder getBinder(Bundle bundle, String str) {
        return Api18Impl.getBinder(bundle, str);
    }

    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        Api18Impl.putBinder(bundle, str, iBinder);
    }

    /* loaded from: classes.dex */
    static class Api33Impl {
        private Api33Impl() {
        }

        static <T> T getParcelable(Bundle bundle, String str, Class<T> cls) {
            return (T) bundle.getParcelable(str, cls);
        }

        static <T> T[] getParcelableArray(Bundle bundle, String str, Class<T> cls) {
            return (T[]) bundle.getParcelableArray(str, cls);
        }

        static <T> ArrayList<T> getParcelableArrayList(Bundle bundle, String str, Class<? extends T> cls) {
            return bundle.getParcelableArrayList(str, cls);
        }

        static <T> SparseArray<T> getSparseParcelableArray(Bundle bundle, String str, Class<? extends T> cls) {
            return bundle.getSparseParcelableArray(str, cls);
        }
    }

    /* loaded from: classes.dex */
    static class Api18Impl {
        private Api18Impl() {
        }

        static IBinder getBinder(Bundle bundle, String str) {
            return bundle.getBinder(str);
        }

        static void putBinder(Bundle bundle, String str, IBinder iBinder) {
            bundle.putBinder(str, iBinder);
        }
    }

    /* loaded from: classes.dex */
    static class BeforeApi18Impl {
        private static final String TAG = "BundleCompat";
        private static Method sGetIBinderMethod;
        private static boolean sGetIBinderMethodFetched;
        private static Method sPutIBinderMethod;
        private static boolean sPutIBinderMethodFetched;

        private BeforeApi18Impl() {
        }

        public static IBinder getBinder(Bundle bundle, String str) {
            if (!sGetIBinderMethodFetched) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    sGetIBinderMethod = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i(TAG, "Failed to retrieve getIBinder method", e);
                }
                sGetIBinderMethodFetched = true;
            }
            Method method2 = sGetIBinderMethod;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i(TAG, "Failed to invoke getIBinder via reflection", e2);
                    sGetIBinderMethod = null;
                }
            }
            return null;
        }

        public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
            if (!sPutIBinderMethodFetched) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    sPutIBinderMethod = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i(TAG, "Failed to retrieve putIBinder method", e);
                }
                sPutIBinderMethodFetched = true;
            }
            Method method2 = sPutIBinderMethod;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i(TAG, "Failed to invoke putIBinder via reflection", e2);
                    sPutIBinderMethod = null;
                }
            }
        }
    }
}
