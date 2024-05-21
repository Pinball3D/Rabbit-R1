package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.Job;

/* loaded from: classes2.dex */
public class SystemForegroundDispatcher implements OnConstraintsStateChangedListener, ExecutionListener {
    private static final String ACTION_CANCEL_WORK = "ACTION_CANCEL_WORK";
    private static final String ACTION_NOTIFY = "ACTION_NOTIFY";
    private static final String ACTION_START_FOREGROUND = "ACTION_START_FOREGROUND";
    private static final String ACTION_STOP_FOREGROUND = "ACTION_STOP_FOREGROUND";
    private static final String KEY_FOREGROUND_SERVICE_TYPE = "KEY_FOREGROUND_SERVICE_TYPE";
    private static final String KEY_GENERATION = "KEY_GENERATION";
    private static final String KEY_NOTIFICATION = "KEY_NOTIFICATION";
    private static final String KEY_NOTIFICATION_ID = "KEY_NOTIFICATION_ID";
    private static final String KEY_WORKSPEC_ID = "KEY_WORKSPEC_ID";
    static final String TAG = Logger.tagWithPrefix("SystemFgDispatcher");
    private Callback mCallback;
    final WorkConstraintsTracker mConstraintsTracker;
    private Context mContext;
    WorkGenerationalId mCurrentForegroundId;
    final Map<WorkGenerationalId, ForegroundInfo> mForegroundInfoById;
    final Object mLock;
    private final TaskExecutor mTaskExecutor;
    final Map<WorkGenerationalId, Job> mTrackedWorkSpecs;
    private WorkManagerImpl mWorkManagerImpl;
    final Map<WorkGenerationalId, WorkSpec> mWorkSpecById;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Callback {
        void cancelNotification(int notificationId);

        void notify(int notificationId, Notification notification);

        void startForeground(int notificationId, int notificationType, Notification notification);

        void stop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SystemForegroundDispatcher(Context context) {
        this.mContext = context;
        this.mLock = new Object();
        WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(this.mContext);
        this.mWorkManagerImpl = workManagerImpl;
        this.mTaskExecutor = workManagerImpl.getWorkTaskExecutor();
        this.mCurrentForegroundId = null;
        this.mForegroundInfoById = new LinkedHashMap();
        this.mTrackedWorkSpecs = new HashMap();
        this.mWorkSpecById = new HashMap();
        this.mConstraintsTracker = new WorkConstraintsTracker(this.mWorkManagerImpl.getTrackers());
        this.mWorkManagerImpl.getProcessor().addExecutionListener(this);
    }

    SystemForegroundDispatcher(Context context, WorkManagerImpl workManagerImpl, WorkConstraintsTracker tracker) {
        this.mContext = context;
        this.mLock = new Object();
        this.mWorkManagerImpl = workManagerImpl;
        this.mTaskExecutor = workManagerImpl.getWorkTaskExecutor();
        this.mCurrentForegroundId = null;
        this.mForegroundInfoById = new LinkedHashMap();
        this.mTrackedWorkSpecs = new HashMap();
        this.mWorkSpecById = new HashMap();
        this.mConstraintsTracker = tracker;
        this.mWorkManagerImpl.getProcessor().addExecutionListener(this);
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(WorkGenerationalId id, boolean needsReschedule) {
        Map.Entry<WorkGenerationalId, ForegroundInfo> entry;
        synchronized (this.mLock) {
            Job remove = this.mWorkSpecById.remove(id) != null ? this.mTrackedWorkSpecs.remove(id) : null;
            if (remove != null) {
                remove.cancel((CancellationException) null);
            }
        }
        ForegroundInfo remove2 = this.mForegroundInfoById.remove(id);
        if (id.equals(this.mCurrentForegroundId)) {
            if (this.mForegroundInfoById.size() > 0) {
                Iterator<Map.Entry<WorkGenerationalId, ForegroundInfo>> it = this.mForegroundInfoById.entrySet().iterator();
                Map.Entry<WorkGenerationalId, ForegroundInfo> next = it.next();
                while (true) {
                    entry = next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.mCurrentForegroundId = entry.getKey();
                if (this.mCallback != null) {
                    ForegroundInfo value = entry.getValue();
                    this.mCallback.startForeground(value.getNotificationId(), value.getForegroundServiceType(), value.getNotification());
                    this.mCallback.cancelNotification(value.getNotificationId());
                }
            } else {
                this.mCurrentForegroundId = null;
            }
        }
        Callback callback = this.mCallback;
        if (remove2 == null || callback == null) {
            return;
        }
        Logger.get().debug(TAG, "Removing Notification (id: " + remove2.getNotificationId() + ", workSpecId: " + id + ", notificationType: " + remove2.getForegroundServiceType());
        callback.cancelNotification(remove2.getNotificationId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCallback(Callback callback) {
        if (this.mCallback != null) {
            Logger.get().error(TAG, "A callback already exists.");
        } else {
            this.mCallback = callback;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onStartCommand(Intent intent) {
        String action = intent.getAction();
        if (ACTION_START_FOREGROUND.equals(action)) {
            handleStartForeground(intent);
            handleNotify(intent);
        } else if (ACTION_NOTIFY.equals(action)) {
            handleNotify(intent);
        } else if (ACTION_CANCEL_WORK.equals(action)) {
            handleCancelWork(intent);
        } else if (ACTION_STOP_FOREGROUND.equals(action)) {
            handleStop(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDestroy() {
        this.mCallback = null;
        synchronized (this.mLock) {
            Iterator<Job> it = this.mTrackedWorkSpecs.values().iterator();
            while (it.hasNext()) {
                it.next().cancel((CancellationException) null);
            }
        }
        this.mWorkManagerImpl.getProcessor().removeExecutionListener(this);
    }

    private void handleStartForeground(Intent intent) {
        Logger.get().info(TAG, "Started foreground service " + intent);
        final String stringExtra = intent.getStringExtra(KEY_WORKSPEC_ID);
        this.mTaskExecutor.executeOnTaskThread(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundDispatcher.1
            @Override // java.lang.Runnable
            public void run() {
                WorkSpec runningWorkSpec = SystemForegroundDispatcher.this.mWorkManagerImpl.getProcessor().getRunningWorkSpec(stringExtra);
                if (runningWorkSpec == null || !runningWorkSpec.hasConstraints()) {
                    return;
                }
                synchronized (SystemForegroundDispatcher.this.mLock) {
                    SystemForegroundDispatcher.this.mWorkSpecById.put(WorkSpecKt.generationalId(runningWorkSpec), runningWorkSpec);
                    SystemForegroundDispatcher.this.mTrackedWorkSpecs.put(WorkSpecKt.generationalId(runningWorkSpec), WorkConstraintsTrackerKt.listen(SystemForegroundDispatcher.this.mConstraintsTracker, runningWorkSpec, SystemForegroundDispatcher.this.mTaskExecutor.getTaskCoroutineDispatcher(), SystemForegroundDispatcher.this));
                }
            }
        });
    }

    private void handleNotify(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra(KEY_NOTIFICATION_ID, 0);
        int intExtra2 = intent.getIntExtra(KEY_FOREGROUND_SERVICE_TYPE, 0);
        String stringExtra = intent.getStringExtra(KEY_WORKSPEC_ID);
        WorkGenerationalId workGenerationalId = new WorkGenerationalId(stringExtra, intent.getIntExtra(KEY_GENERATION, 0));
        Notification notification = (Notification) intent.getParcelableExtra(KEY_NOTIFICATION);
        Logger.get().debug(TAG, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
        if (notification == null || this.mCallback == null) {
            return;
        }
        this.mForegroundInfoById.put(workGenerationalId, new ForegroundInfo(intExtra, notification, intExtra2));
        if (this.mCurrentForegroundId == null) {
            this.mCurrentForegroundId = workGenerationalId;
            this.mCallback.startForeground(intExtra, intExtra2, notification);
            return;
        }
        this.mCallback.notify(intExtra, notification);
        if (intExtra2 != 0) {
            Iterator<Map.Entry<WorkGenerationalId, ForegroundInfo>> it = this.mForegroundInfoById.entrySet().iterator();
            while (it.hasNext()) {
                i |= it.next().getValue().getForegroundServiceType();
            }
            ForegroundInfo foregroundInfo = this.mForegroundInfoById.get(this.mCurrentForegroundId);
            if (foregroundInfo != null) {
                this.mCallback.startForeground(foregroundInfo.getNotificationId(), i, foregroundInfo.getNotification());
            }
        }
    }

    void handleStop(Intent intent) {
        Logger.get().info(TAG, "Stopping foreground service");
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.stop();
        }
    }

    private void handleCancelWork(Intent intent) {
        Logger.get().info(TAG, "Stopping foreground work for " + intent);
        String stringExtra = intent.getStringExtra(KEY_WORKSPEC_ID);
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.mWorkManagerImpl.cancelWorkById(UUID.fromString(stringExtra));
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public void onConstraintsStateChanged(WorkSpec workSpec, ConstraintsState state) {
        if (state instanceof ConstraintsState.ConstraintsNotMet) {
            Logger.get().debug(TAG, "Constraints unmet for WorkSpec " + workSpec.id);
            this.mWorkManagerImpl.stopForegroundWork(WorkSpecKt.generationalId(workSpec));
        }
    }

    public static Intent createStartForegroundIntent(Context context, WorkGenerationalId id, ForegroundInfo info) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(ACTION_START_FOREGROUND);
        intent.putExtra(KEY_WORKSPEC_ID, id.getWorkSpecId());
        intent.putExtra(KEY_GENERATION, id.getGeneration());
        intent.putExtra(KEY_NOTIFICATION_ID, info.getNotificationId());
        intent.putExtra(KEY_FOREGROUND_SERVICE_TYPE, info.getForegroundServiceType());
        intent.putExtra(KEY_NOTIFICATION, info.getNotification());
        return intent;
    }

    public static Intent createCancelWorkIntent(Context context, String workSpecId) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(ACTION_CANCEL_WORK);
        intent.setData(Uri.parse("workspec://" + workSpecId));
        intent.putExtra(KEY_WORKSPEC_ID, workSpecId);
        return intent;
    }

    public static Intent createNotifyIntent(Context context, WorkGenerationalId id, ForegroundInfo info) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(ACTION_NOTIFY);
        intent.putExtra(KEY_NOTIFICATION_ID, info.getNotificationId());
        intent.putExtra(KEY_FOREGROUND_SERVICE_TYPE, info.getForegroundServiceType());
        intent.putExtra(KEY_NOTIFICATION, info.getNotification());
        intent.putExtra(KEY_WORKSPEC_ID, id.getWorkSpecId());
        intent.putExtra(KEY_GENERATION, id.getGeneration());
        return intent;
    }

    public static Intent createStopForegroundIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(ACTION_STOP_FOREGROUND);
        return intent;
    }
}
