package androidx.core.view;

import android.os.Build;
import android.view.VelocityTracker;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class VelocityTrackerCompat {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface VelocityTrackableMotionEventAxis {
    }

    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }

    public static boolean isAxisSupported(VelocityTracker velocityTracker, int i) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.isAxisSupported(velocityTracker, i);
        }
        return i == 0 || i == 1;
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getAxisVelocity(velocityTracker, i);
        }
        if (i == 0) {
            return velocityTracker.getXVelocity();
        }
        if (i == 1) {
            return velocityTracker.getYVelocity();
        }
        return 0.0f;
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.getAxisVelocity(velocityTracker, i, i2);
        }
        if (i == 0) {
            return velocityTracker.getXVelocity(i2);
        }
        if (i == 1) {
            return velocityTracker.getYVelocity(i2);
        }
        return 0.0f;
    }

    /* loaded from: classes.dex */
    private static class Api34Impl {
        private Api34Impl() {
        }

        static boolean isAxisSupported(VelocityTracker velocityTracker, int i) {
            return velocityTracker.isAxisSupported(i);
        }

        static float getAxisVelocity(VelocityTracker velocityTracker, int i, int i2) {
            return velocityTracker.getAxisVelocity(i, i2);
        }

        static float getAxisVelocity(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getAxisVelocity(i);
        }
    }

    private VelocityTrackerCompat() {
    }
}
