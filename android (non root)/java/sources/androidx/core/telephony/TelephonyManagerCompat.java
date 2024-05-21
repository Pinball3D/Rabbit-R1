package androidx.core.telephony;

import android.telephony.TelephonyManager;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class TelephonyManagerCompat {
    private static Method sGetDeviceIdMethod;
    private static Method sGetSubIdMethod;

    public static String getImei(TelephonyManager telephonyManager) {
        return Api26Impl.getImei(telephonyManager);
    }

    public static int getSubscriptionId(TelephonyManager telephonyManager) {
        return Api30Impl.getSubscriptionId(telephonyManager);
    }

    private TelephonyManagerCompat() {
    }

    /* loaded from: classes.dex */
    private static class Api30Impl {
        private Api30Impl() {
        }

        static int getSubscriptionId(TelephonyManager telephonyManager) {
            return telephonyManager.getSubscriptionId();
        }
    }

    /* loaded from: classes.dex */
    private static class Api26Impl {
        private Api26Impl() {
        }

        static String getImei(TelephonyManager telephonyManager) {
            return telephonyManager.getImei();
        }
    }

    /* loaded from: classes.dex */
    private static class Api23Impl {
        private Api23Impl() {
        }

        static String getDeviceId(TelephonyManager telephonyManager, int i) {
            return telephonyManager.getDeviceId(i);
        }
    }
}
