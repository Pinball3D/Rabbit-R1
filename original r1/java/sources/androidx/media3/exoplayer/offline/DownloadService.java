package androidx.media3.exoplayer.offline;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.NotificationUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.offline.DownloadManager;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.exoplayer.scheduler.Requirements;
import androidx.media3.exoplayer.scheduler.Scheduler;
import java.util.HashMap;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public abstract class DownloadService extends Service {
    public static final String ACTION_ADD_DOWNLOAD = "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD";
    public static final String ACTION_INIT = "androidx.media3.exoplayer.downloadService.action.INIT";
    public static final String ACTION_PAUSE_DOWNLOADS = "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS";
    public static final String ACTION_REMOVE_ALL_DOWNLOADS = "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS";
    public static final String ACTION_REMOVE_DOWNLOAD = "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD";
    private static final String ACTION_RESTART = "androidx.media3.exoplayer.downloadService.action.RESTART";
    public static final String ACTION_RESUME_DOWNLOADS = "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS";
    public static final String ACTION_SET_REQUIREMENTS = "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS";
    public static final String ACTION_SET_STOP_REASON = "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON";
    public static final long DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL = 1000;
    public static final int FOREGROUND_NOTIFICATION_ID_NONE = 0;
    public static final String KEY_CONTENT_ID = "content_id";
    public static final String KEY_DOWNLOAD_REQUEST = "download_request";
    public static final String KEY_FOREGROUND = "foreground";
    public static final String KEY_REQUIREMENTS = "requirements";
    public static final String KEY_STOP_REASON = "stop_reason";
    private static final String TAG = "DownloadService";
    private static final HashMap<Class<? extends DownloadService>, DownloadManagerHelper> downloadManagerHelpers = new HashMap<>();
    private final int channelDescriptionResourceId;
    private final String channelId;
    private final int channelNameResourceId;
    private DownloadManagerHelper downloadManagerHelper;
    private final ForegroundNotificationUpdater foregroundNotificationUpdater;
    private boolean isDestroyed;
    private boolean isStopped;
    private int lastStartId;
    private boolean startedInForeground;
    private boolean taskRemoved;

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStopped() {
        return this.isStopped;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean needsStartedService(int i) {
        return i == 2 || i == 5 || i == 7;
    }

    protected abstract DownloadManager getDownloadManager();

    protected abstract Notification getForegroundNotification(List<Download> list, int i);

    protected abstract Scheduler getScheduler();

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.taskRemoved = true;
    }

    protected DownloadService(int i) {
        this(i, 1000L);
    }

    protected DownloadService(int i, long j) {
        this(i, j, null, 0, 0);
    }

    protected DownloadService(int i, long j, String str, int i2, int i3) {
        if (i == 0) {
            this.foregroundNotificationUpdater = null;
            this.channelId = null;
            this.channelNameResourceId = 0;
            this.channelDescriptionResourceId = 0;
            return;
        }
        this.foregroundNotificationUpdater = new ForegroundNotificationUpdater(i, j);
        this.channelId = str;
        this.channelNameResourceId = i2;
        this.channelDescriptionResourceId = i3;
    }

    public static Intent buildAddDownloadIntent(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, boolean z) {
        return buildAddDownloadIntent(context, cls, downloadRequest, 0, z);
    }

    public static Intent buildAddDownloadIntent(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, int i, boolean z) {
        return getIntent(context, cls, ACTION_ADD_DOWNLOAD, z).putExtra("download_request", downloadRequest).putExtra("stop_reason", i);
    }

    public static Intent buildRemoveDownloadIntent(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        return getIntent(context, cls, ACTION_REMOVE_DOWNLOAD, z).putExtra("content_id", str);
    }

    public static Intent buildRemoveAllDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_REMOVE_ALL_DOWNLOADS, z);
    }

    public static Intent buildResumeDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_RESUME_DOWNLOADS, z);
    }

    public static Intent buildPauseDownloadsIntent(Context context, Class<? extends DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_PAUSE_DOWNLOADS, z);
    }

    public static Intent buildSetStopReasonIntent(Context context, Class<? extends DownloadService> cls, String str, int i, boolean z) {
        return getIntent(context, cls, ACTION_SET_STOP_REASON, z).putExtra("content_id", str).putExtra("stop_reason", i);
    }

    public static Intent buildSetRequirementsIntent(Context context, Class<? extends DownloadService> cls, Requirements requirements, boolean z) {
        return getIntent(context, cls, ACTION_SET_REQUIREMENTS, z).putExtra("requirements", requirements);
    }

    public static void sendAddDownload(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, boolean z) {
        startService(context, buildAddDownloadIntent(context, cls, downloadRequest, z), z);
    }

    public static void sendAddDownload(Context context, Class<? extends DownloadService> cls, DownloadRequest downloadRequest, int i, boolean z) {
        startService(context, buildAddDownloadIntent(context, cls, downloadRequest, i, z), z);
    }

    public static void sendRemoveDownload(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        startService(context, buildRemoveDownloadIntent(context, cls, str, z), z);
    }

    public static void sendRemoveAllDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        startService(context, buildRemoveAllDownloadsIntent(context, cls, z), z);
    }

    public static void sendResumeDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        startService(context, buildResumeDownloadsIntent(context, cls, z), z);
    }

    public static void sendPauseDownloads(Context context, Class<? extends DownloadService> cls, boolean z) {
        startService(context, buildPauseDownloadsIntent(context, cls, z), z);
    }

    public static void sendSetStopReason(Context context, Class<? extends DownloadService> cls, String str, int i, boolean z) {
        startService(context, buildSetStopReasonIntent(context, cls, str, i, z), z);
    }

    public static void sendSetRequirements(Context context, Class<? extends DownloadService> cls, Requirements requirements, boolean z) {
        startService(context, buildSetRequirementsIntent(context, cls, requirements, z), z);
    }

    public static void start(Context context, Class<? extends DownloadService> cls) {
        context.startService(getIntent(context, cls, ACTION_INIT));
    }

    public static void startForeground(Context context, Class<? extends DownloadService> cls) {
        Util.startForegroundService(context, getIntent(context, cls, ACTION_INIT, true));
    }

    public static void clearDownloadManagerHelpers() {
        downloadManagerHelpers.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Service
    public void onCreate() {
        String str = this.channelId;
        if (str != null) {
            NotificationUtil.createNotificationChannel(this, str, this.channelNameResourceId, this.channelDescriptionResourceId, 2);
        }
        Class<?> cls = getClass();
        HashMap<Class<? extends DownloadService>, DownloadManagerHelper> hashMap = downloadManagerHelpers;
        DownloadManagerHelper downloadManagerHelper = (DownloadManagerHelper) hashMap.get(cls);
        if (downloadManagerHelper == null) {
            boolean z = this.foregroundNotificationUpdater != null;
            Scheduler scheduler = (z && (Util.SDK_INT < 31)) ? getScheduler() : null;
            DownloadManager downloadManager = getDownloadManager();
            downloadManager.resumeDownloads();
            downloadManagerHelper = new DownloadManagerHelper(getApplicationContext(), downloadManager, z, scheduler, cls);
            hashMap.put(cls, downloadManagerHelper);
        }
        this.downloadManagerHelper = downloadManagerHelper;
        downloadManagerHelper.attachService(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        String str2;
        ForegroundNotificationUpdater foregroundNotificationUpdater;
        this.lastStartId = i2;
        this.taskRemoved = false;
        if (intent != null) {
            str = intent.getAction();
            str2 = intent.getStringExtra("content_id");
            this.startedInForeground |= intent.getBooleanExtra("foreground", false) || ACTION_RESTART.equals(str);
        } else {
            str = null;
            str2 = null;
        }
        if (str == null) {
            str = ACTION_INIT;
        }
        DownloadManager downloadManager = ((DownloadManagerHelper) Assertions.checkNotNull(this.downloadManagerHelper)).downloadManager;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2068303304:
                if (str.equals(ACTION_SET_STOP_REASON)) {
                    c = 0;
                    break;
                }
                break;
            case -1192305801:
                if (str.equals(ACTION_REMOVE_DOWNLOAD)) {
                    c = 1;
                    break;
                }
                break;
            case -659421309:
                if (str.equals(ACTION_RESTART)) {
                    c = 2;
                    break;
                }
                break;
            case -238450692:
                if (str.equals(ACTION_INIT)) {
                    c = 3;
                    break;
                }
                break;
            case 32678949:
                if (str.equals(ACTION_RESUME_DOWNLOADS)) {
                    c = 4;
                    break;
                }
                break;
            case 464223742:
                if (str.equals(ACTION_REMOVE_ALL_DOWNLOADS)) {
                    c = 5;
                    break;
                }
                break;
            case 829812082:
                if (str.equals(ACTION_ADD_DOWNLOAD)) {
                    c = 6;
                    break;
                }
                break;
            case 845668953:
                if (str.equals(ACTION_SET_REQUIREMENTS)) {
                    c = 7;
                    break;
                }
                break;
            case 1746253622:
                if (str.equals(ACTION_PAUSE_DOWNLOADS)) {
                    c = '\b';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (!((Intent) Assertions.checkNotNull(intent)).hasExtra("stop_reason")) {
                    Log.e(TAG, "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                } else {
                    downloadManager.setStopReason(str2, intent.getIntExtra("stop_reason", 0));
                    break;
                }
            case 1:
                if (str2 == null) {
                    Log.e(TAG, "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                } else {
                    downloadManager.removeDownload(str2);
                    break;
                }
            case 2:
            case 3:
                break;
            case 4:
                downloadManager.resumeDownloads();
                break;
            case 5:
                downloadManager.removeAllDownloads();
                break;
            case 6:
                DownloadRequest downloadRequest = (DownloadRequest) ((Intent) Assertions.checkNotNull(intent)).getParcelableExtra("download_request");
                if (downloadRequest == null) {
                    Log.e(TAG, "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                } else {
                    downloadManager.addDownload(downloadRequest, intent.getIntExtra("stop_reason", 0));
                    break;
                }
            case 7:
                Requirements requirements = (Requirements) ((Intent) Assertions.checkNotNull(intent)).getParcelableExtra("requirements");
                if (requirements == null) {
                    Log.e(TAG, "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                } else {
                    downloadManager.setRequirements(requirements);
                    break;
                }
            case '\b':
                downloadManager.pauseDownloads();
                break;
            default:
                Log.e(TAG, "Ignored unrecognized action: " + str);
                break;
        }
        if (Util.SDK_INT >= 26 && this.startedInForeground && (foregroundNotificationUpdater = this.foregroundNotificationUpdater) != null) {
            foregroundNotificationUpdater.showNotificationIfNotAlready();
        }
        this.isStopped = false;
        if (downloadManager.isIdle()) {
            onIdle();
        }
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.isDestroyed = true;
        ((DownloadManagerHelper) Assertions.checkNotNull(this.downloadManagerHelper)).detachService(this);
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.stopPeriodicUpdates();
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    protected final void invalidateForegroundNotification() {
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater == null || this.isDestroyed) {
            return;
        }
        foregroundNotificationUpdater.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloads(List<Download> list) {
        if (this.foregroundNotificationUpdater != null) {
            for (int i = 0; i < list.size(); i++) {
                if (needsStartedService(list.get(i).state)) {
                    this.foregroundNotificationUpdater.startPeriodicUpdates();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloadChanged(Download download) {
        if (this.foregroundNotificationUpdater != null) {
            if (needsStartedService(download.state)) {
                this.foregroundNotificationUpdater.startPeriodicUpdates();
            } else {
                this.foregroundNotificationUpdater.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloadRemoved() {
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIdle() {
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.stopPeriodicUpdates();
        }
        if (((DownloadManagerHelper) Assertions.checkNotNull(this.downloadManagerHelper)).updateScheduler()) {
            if (Util.SDK_INT < 28 && this.taskRemoved) {
                stopSelf();
                this.isStopped = true;
            } else {
                this.isStopped |= stopSelfResult(this.lastStartId);
            }
        }
    }

    private static Intent getIntent(Context context, Class<? extends DownloadService> cls, String str, boolean z) {
        return getIntent(context, cls, str).putExtra("foreground", z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent getIntent(Context context, Class<? extends DownloadService> cls, String str) {
        return new Intent(context, cls).setAction(str);
    }

    private static void startService(Context context, Intent intent, boolean z) {
        if (z) {
            Util.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class ForegroundNotificationUpdater {
        private final Handler handler = new Handler(Looper.getMainLooper());
        private boolean notificationDisplayed;
        private final int notificationId;
        private boolean periodicUpdatesStarted;
        private final long updateInterval;

        public ForegroundNotificationUpdater(int i, long j) {
            this.notificationId = i;
            this.updateInterval = j;
        }

        public void startPeriodicUpdates() {
            this.periodicUpdatesStarted = true;
            update();
        }

        public void stopPeriodicUpdates() {
            this.periodicUpdatesStarted = false;
            this.handler.removeCallbacksAndMessages(null);
        }

        public void showNotificationIfNotAlready() {
            if (this.notificationDisplayed) {
                return;
            }
            update();
        }

        public void invalidate() {
            if (this.notificationDisplayed) {
                update();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void update() {
            DownloadManager downloadManager = ((DownloadManagerHelper) Assertions.checkNotNull(DownloadService.this.downloadManagerHelper)).downloadManager;
            Notification foregroundNotification = DownloadService.this.getForegroundNotification(downloadManager.getCurrentDownloads(), downloadManager.getNotMetRequirements());
            if (!this.notificationDisplayed) {
                DownloadService.this.startForeground(this.notificationId, foregroundNotification);
                this.notificationDisplayed = true;
            } else {
                ((NotificationManager) DownloadService.this.getSystemService("notification")).notify(this.notificationId, foregroundNotification);
            }
            if (this.periodicUpdatesStarted) {
                this.handler.removeCallbacksAndMessages(null);
                this.handler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.offline.DownloadService$ForegroundNotificationUpdater$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadService.ForegroundNotificationUpdater.this.update();
                    }
                }, this.updateInterval);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class DownloadManagerHelper implements DownloadManager.Listener {
        private final Context context;
        private final DownloadManager downloadManager;
        private DownloadService downloadService;
        private final boolean foregroundAllowed;
        private Requirements scheduledRequirements;
        private final Scheduler scheduler;
        private final Class<? extends DownloadService> serviceClass;

        private DownloadManagerHelper(Context context, DownloadManager downloadManager, boolean z, Scheduler scheduler, Class<? extends DownloadService> cls) {
            this.context = context;
            this.downloadManager = downloadManager;
            this.foregroundAllowed = z;
            this.scheduler = scheduler;
            this.serviceClass = cls;
            downloadManager.addListener(this);
            updateScheduler();
        }

        public void attachService(final DownloadService downloadService) {
            Assertions.checkState(this.downloadService == null);
            this.downloadService = downloadService;
            if (this.downloadManager.isInitialized()) {
                Util.createHandlerForCurrentOrMainLooper().postAtFrontOfQueue(new Runnable() { // from class: androidx.media3.exoplayer.offline.DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadService.DownloadManagerHelper.this.m5254xee6ee963(downloadService);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$attachService$0$androidx-media3-exoplayer-offline-DownloadService$DownloadManagerHelper, reason: not valid java name */
        public /* synthetic */ void m5254xee6ee963(DownloadService downloadService) {
            downloadService.notifyDownloads(this.downloadManager.getCurrentDownloads());
        }

        public void detachService(DownloadService downloadService) {
            Assertions.checkState(this.downloadService == downloadService);
            this.downloadService = null;
        }

        public boolean updateScheduler() {
            boolean isWaitingForRequirements = this.downloadManager.isWaitingForRequirements();
            if (this.scheduler == null) {
                return !isWaitingForRequirements;
            }
            if (!isWaitingForRequirements) {
                cancelScheduler();
                return true;
            }
            Requirements requirements = this.downloadManager.getRequirements();
            if (!this.scheduler.getSupportedRequirements(requirements).equals(requirements)) {
                cancelScheduler();
                return false;
            }
            if (!schedulerNeedsUpdate(requirements)) {
                return true;
            }
            if (this.scheduler.schedule(requirements, this.context.getPackageName(), DownloadService.ACTION_RESTART)) {
                this.scheduledRequirements = requirements;
                return true;
            }
            Log.w(DownloadService.TAG, "Failed to schedule restart");
            cancelScheduler();
            return false;
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void onInitialized(DownloadManager downloadManager) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloads(downloadManager.getCurrentDownloads());
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void onDownloadChanged(DownloadManager downloadManager, Download download, Exception exc) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloadChanged(download);
            }
            if (serviceMayNeedRestart() && DownloadService.needsStartedService(download.state)) {
                Log.w(DownloadService.TAG, "DownloadService wasn't running. Restarting.");
                restartService();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void onDownloadRemoved(DownloadManager downloadManager, Download download) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloadRemoved();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public final void onIdle(DownloadManager downloadManager) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.onIdle();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void onRequirementsStateChanged(DownloadManager downloadManager, Requirements requirements, int i) {
            updateScheduler();
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void onWaitingForRequirementsChanged(DownloadManager downloadManager, boolean z) {
            if (z || downloadManager.getDownloadsPaused() || !serviceMayNeedRestart()) {
                return;
            }
            List<Download> currentDownloads = downloadManager.getCurrentDownloads();
            for (int i = 0; i < currentDownloads.size(); i++) {
                if (currentDownloads.get(i).state == 0) {
                    restartService();
                    return;
                }
            }
        }

        private boolean schedulerNeedsUpdate(Requirements requirements) {
            return !Util.areEqual(this.scheduledRequirements, requirements);
        }

        @RequiresNonNull({"scheduler"})
        private void cancelScheduler() {
            Requirements requirements = new Requirements(0);
            if (schedulerNeedsUpdate(requirements)) {
                this.scheduler.cancel();
                this.scheduledRequirements = requirements;
            }
        }

        private boolean serviceMayNeedRestart() {
            DownloadService downloadService = this.downloadService;
            return downloadService == null || downloadService.isStopped();
        }

        private void restartService() {
            if (this.foregroundAllowed) {
                try {
                    Util.startForegroundService(this.context, DownloadService.getIntent(this.context, this.serviceClass, DownloadService.ACTION_RESTART));
                    return;
                } catch (IllegalStateException unused) {
                    Log.w(DownloadService.TAG, "Failed to restart (foreground launch restriction)");
                    return;
                }
            }
            try {
                this.context.startService(DownloadService.getIntent(this.context, this.serviceClass, DownloadService.ACTION_INIT));
            } catch (IllegalStateException unused2) {
                Log.w(DownloadService.TAG, "Failed to restart (process is idle)");
            }
        }
    }
}
