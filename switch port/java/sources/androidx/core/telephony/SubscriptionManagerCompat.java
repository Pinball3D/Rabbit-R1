package androidx.core.telephony;

import android.telephony.SubscriptionManager;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class SubscriptionManagerCompat {
    private static Method sGetSlotIndexMethod;

    public static int getSlotIndex(int i) {
        if (i == -1) {
            return -1;
        }
        return Api29Impl.getSlotIndex(i);
    }

    private SubscriptionManagerCompat() {
    }

    /* loaded from: classes.dex */
    private static class Api29Impl {
        private Api29Impl() {
        }

        static int getSlotIndex(int i) {
            return SubscriptionManager.getSlotIndex(i);
        }
    }
}
