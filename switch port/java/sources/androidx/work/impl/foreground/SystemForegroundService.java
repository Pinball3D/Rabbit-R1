package androidx.work.impl.foreground;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.LifecycleService;
import androidx.work.Logger;
import androidx.work.impl.foreground.SystemForegroundDispatcher;

/* loaded from: classes2.dex */
public class SystemForegroundService extends LifecycleService implements SystemForegroundDispatcher.Callback {
    private static final String TAG = Logger.tagWithPrefix("SystemFgService");
    private static SystemForegroundService sForegroundService = null;
    SystemForegroundDispatcher mDispatcher;
    private Handler mHandler;
    private boolean mIsShutdown;
    NotificationManager mNotificationManager;

    public static SystemForegroundService getInstance() {
        return sForegroundService;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        sForegroundService = this;
        initializeDispatcher();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        super.onStartCommand(intent, flags, startId);
        if (this.mIsShutdown) {
            Logger.get().info(TAG, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.mDispatcher.onDestroy();
            initializeDispatcher();
            this.mIsShutdown = false;
        }
        if (intent == null) {
            return 3;
        }
        this.mDispatcher.onStartCommand(intent);
        return 3;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.mDispatcher.onDestroy();
    }

    private void initializeDispatcher() {
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mNotificationManager = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.mDispatcher = systemForegroundDispatcher;
        systemForegroundDispatcher.setCallback(this);
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.Callback
    public void stop() {
        this.mIsShutdown = true;
        Logger.get().debug(TAG, "All commands completed.");
        stopForeground(true);
        sForegroundService = null;
        stopSelf();
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.Callback
    public void startForeground(final int notificationId, final int notificationType, final Notification notification) {
        this.mHandler.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.1
            @Override // java.lang.Runnable
            public void run() {
                Api31Impl.startForeground(SystemForegroundService.this, notificationId, notification, notificationType);
            }
        });
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.Callback
    public void notify(final int notificationId, final Notification notification) {
        this.mHandler.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.2
            @Override // java.lang.Runnable
            public void run() {
                SystemForegroundService.this.mNotificationManager.notify(notificationId, notification);
            }
        });
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.Callback
    public void cancelNotification(final int notificationId) {
        this.mHandler.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.3
            @Override // java.lang.Runnable
            public void run() {
                SystemForegroundService.this.mNotificationManager.cancel(notificationId);
            }
        });
    }

    /* loaded from: classes2.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static void startForeground(Service service, int id, Notification notification, int foregroundServiceType) {
            service.startForeground(id, notification, foregroundServiceType);
        }
    }

    /* loaded from: classes2.dex */
    static class Api31Impl {
        private Api31Impl() {
        }

        static void startForeground(Service service, int id, Notification notification, int foregroundServiceType) {
            try {
                service.startForeground(id, notification, foregroundServiceType);
            } catch (ForegroundServiceStartNotAllowedException e) {
                Logger.get().warning(SystemForegroundService.TAG, "Unable to start foreground service", e);
            }
        }
    }
}
