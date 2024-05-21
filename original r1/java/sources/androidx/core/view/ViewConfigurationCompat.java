package androidx.core.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.InputDevice;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ViewConfigurationCompat {
    private static final String TAG = "ViewConfigCompat";
    private static Method sGetScaledScrollFactorMethod;

    @Deprecated
    public static int getScaledPagingTouchSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledPagingTouchSlop();
    }

    @Deprecated
    public static boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return viewConfiguration.hasPermanentMenuKey();
    }

    public static float getScaledHorizontalScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        return Api26Impl.getScaledHorizontalScrollFactor(viewConfiguration);
    }

    public static float getScaledVerticalScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        return Api26Impl.getScaledVerticalScrollFactor(viewConfiguration);
    }

    private static float getLegacyScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        if (sGetScaledScrollFactorMethod != null) {
            try {
                return ((Integer) r0.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception unused) {
                Log.i(TAG, "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    public static int getScaledHoverSlop(ViewConfiguration viewConfiguration) {
        return Api28Impl.getScaledHoverSlop(viewConfiguration);
    }

    public static boolean shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration viewConfiguration, Context context) {
        return Api28Impl.shouldShowMenuShortcutsWhenKeyboardPresent(viewConfiguration);
    }

    public static int getScaledMinimumFlingVelocity(Context context, ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getScaledMinimumFlingVelocity(viewConfiguration, i, i2, i3);
        }
        if (!isInputDeviceInfoValid(i, i2, i3)) {
            return Integer.MAX_VALUE;
        }
        Resources resources = context.getResources();
        int preApi34MinimumFlingVelocityResId = getPreApi34MinimumFlingVelocityResId(resources, i3, i2);
        if (preApi34MinimumFlingVelocityResId != 0) {
            int dimensionPixelSize = resources.getDimensionPixelSize(preApi34MinimumFlingVelocityResId);
            if (dimensionPixelSize < 0) {
                return Integer.MAX_VALUE;
            }
            return dimensionPixelSize;
        }
        return viewConfiguration.getScaledMinimumFlingVelocity();
    }

    public static int getScaledMaximumFlingVelocity(Context context, ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getScaledMaximumFlingVelocity(viewConfiguration, i, i2, i3);
        }
        if (!isInputDeviceInfoValid(i, i2, i3)) {
            return Integer.MIN_VALUE;
        }
        Resources resources = context.getResources();
        int preApi34MaximumFlingVelocityResId = getPreApi34MaximumFlingVelocityResId(resources, i3, i2);
        if (preApi34MaximumFlingVelocityResId != 0) {
            int dimensionPixelSize = resources.getDimensionPixelSize(preApi34MaximumFlingVelocityResId);
            if (dimensionPixelSize < 0) {
                return Integer.MIN_VALUE;
            }
            return dimensionPixelSize;
        }
        return viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private ViewConfigurationCompat() {
    }

    /* loaded from: classes.dex */
    static class Api26Impl {
        private Api26Impl() {
        }

        static float getScaledHorizontalScrollFactor(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledHorizontalScrollFactor();
        }

        static float getScaledVerticalScrollFactor(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledVerticalScrollFactor();
        }
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static int getScaledHoverSlop(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledHoverSlop();
        }

        static boolean shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration viewConfiguration) {
            return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
        }
    }

    /* loaded from: classes.dex */
    static class Api34Impl {
        private Api34Impl() {
        }

        static int getScaledMaximumFlingVelocity(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
            return viewConfiguration.getScaledMaximumFlingVelocity(i, i2, i3);
        }

        static int getScaledMinimumFlingVelocity(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
            return viewConfiguration.getScaledMinimumFlingVelocity(i, i2, i3);
        }
    }

    private static int getPreApi34MaximumFlingVelocityResId(Resources resources, int i, int i2) {
        if (i == 4194304 && i2 == 26) {
            return getPlatformResId(resources, "config_viewMaxRotaryEncoderFlingVelocity", "dimen");
        }
        return 0;
    }

    private static int getPreApi34MinimumFlingVelocityResId(Resources resources, int i, int i2) {
        if (i == 4194304 && i2 == 26) {
            return getPlatformResId(resources, "config_viewMinRotaryEncoderFlingVelocity", "dimen");
        }
        return 0;
    }

    private static int getPlatformResId(Resources resources, String str, String str2) {
        return resources.getIdentifier(str, str2, "android");
    }

    private static boolean isInputDeviceInfoValid(int i, int i2, int i3) {
        InputDevice device = InputDevice.getDevice(i);
        return (device == null || device.getMotionRange(i2, i3) == null) ? false : true;
    }
}
