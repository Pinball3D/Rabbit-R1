package androidx.core.content.res;

import android.content.res.Resources;

/* loaded from: classes.dex */
public final class ConfigurationHelper {
    private ConfigurationHelper() {
    }

    public static int getDensityDpi(Resources resources) {
        return resources.getConfiguration().densityDpi;
    }
}
