package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.Logger;

/* loaded from: classes2.dex */
public class PackageManagerHelper {
    private static final String TAG = Logger.tagWithPrefix("PackageManagerHelper");

    private static boolean isComponentEnabled(int setting, boolean defaults) {
        return setting == 0 ? defaults : setting == 1;
    }

    private PackageManagerHelper() {
    }

    public static void setComponentEnabled(Context context, Class<?> klazz, boolean enabled) {
        try {
            if (enabled == isComponentEnabled(getComponentEnabledSetting(context, klazz.getName()), false)) {
                Logger.get().debug(TAG, "Skipping component enablement for " + klazz.getName());
            } else {
                context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, klazz.getName()), enabled ? 1 : 2, 1);
                Logger.get().debug(TAG, klazz.getName() + " " + (enabled ? "enabled" : "disabled"));
            }
        } catch (Exception e) {
            Logger.get().debug(TAG, klazz.getName() + "could not be " + (enabled ? "enabled" : "disabled"), e);
        }
    }

    public static boolean isComponentExplicitlyEnabled(Context context, Class<?> klazz) {
        return isComponentEnabled(getComponentEnabledSetting(context, klazz.getName()), false);
    }

    public static boolean isComponentExplicitlyEnabled(Context context, String className) {
        return getComponentEnabledSetting(context, className) == 1;
    }

    private static int getComponentEnabledSetting(Context context, String className) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, className));
    }
}
