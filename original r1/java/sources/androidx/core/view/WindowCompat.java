package androidx.core.view;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    private WindowCompat() {
    }

    public static <T extends View> T requireViewById(Window window, int i) {
        return (T) Api28Impl.requireViewById(window, i);
    }

    public static void setDecorFitsSystemWindows(Window window, boolean z) {
        Api30Impl.setDecorFitsSystemWindows(window, z);
    }

    public static WindowInsetsControllerCompat getInsetsController(Window window, View view) {
        return new WindowInsetsControllerCompat(window, view);
    }

    /* loaded from: classes.dex */
    static class Api16Impl {
        private Api16Impl() {
        }

        static void setDecorFitsSystemWindows(Window window, boolean z) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    /* loaded from: classes.dex */
    static class Api30Impl {
        private Api30Impl() {
        }

        static void setDecorFitsSystemWindows(Window window, boolean z) {
            window.setDecorFitsSystemWindows(z);
        }
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static <T> T requireViewById(Window window, int i) {
            return (T) window.requireViewById(i);
        }
    }
}
