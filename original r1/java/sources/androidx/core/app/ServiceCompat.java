package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class ServiceCompat {
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_Q = 255;
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U = 1073745919;
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface StopForegroundFlags {
    }

    private ServiceCompat() {
    }

    public static void startForeground(Service service, int i, Notification notification, int i2) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.startForeground(service, i, notification, i2);
        } else {
            Api29Impl.startForeground(service, i, notification, i2);
        }
    }

    public static void stopForeground(Service service, int i) {
        Api24Impl.stopForeground(service, i);
    }

    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        static void stopForeground(Service service, int i) {
            service.stopForeground(i);
        }
    }

    /* loaded from: classes.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static void startForeground(Service service, int i, Notification notification, int i2) {
            if (i2 == 0 || i2 == -1) {
                service.startForeground(i, notification, i2);
            } else {
                service.startForeground(i, notification, i2 & 255);
            }
        }
    }

    /* loaded from: classes.dex */
    static class Api34Impl {
        private Api34Impl() {
        }

        static void startForeground(Service service, int i, Notification notification, int i2) {
            if (i2 == 0 || i2 == -1) {
                service.startForeground(i, notification, i2);
            } else {
                service.startForeground(i, notification, i2 & ServiceCompat.FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U);
            }
        }
    }
}
