package androidx.work.impl.utils;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteTableLockedException;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.os.UserManagerCompat;
import androidx.core.util.Consumer;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabasePathHelper;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ForceStopRunnable implements Runnable {
    static final String ACTION_FORCE_STOP_RESCHEDULE = "ACTION_FORCE_STOP_RESCHEDULE";
    private static final int ALARM_ID = -1;
    private static final long BACKOFF_DURATION_MS = 300;
    static final int MAX_ATTEMPTS = 3;
    private static final String TAG = Logger.tagWithPrefix("ForceStopRunnable");
    private static final long TEN_YEARS = TimeUnit.DAYS.toMillis(3650);
    private final Context mContext;
    private final PreferenceUtils mPreferenceUtils;
    private int mRetryCount = 0;
    private final WorkManagerImpl mWorkManager;

    public ForceStopRunnable(Context context, WorkManagerImpl workManager) {
        this.mContext = context.getApplicationContext();
        this.mWorkManager = workManager;
        this.mPreferenceUtils = workManager.getPreferenceUtils();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (multiProcessChecks()) {
                while (true) {
                    try {
                        WorkDatabasePathHelper.migrateDatabase(this.mContext);
                        Logger.get().debug(TAG, "Performing cleanup operations.");
                        try {
                            forceStopRunnable();
                            break;
                        } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteTableLockedException e) {
                            int i = this.mRetryCount + 1;
                            this.mRetryCount = i;
                            if (i >= 3) {
                                String str = UserManagerCompat.isUserUnlocked(this.mContext) ? "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store." : "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                                Logger logger = Logger.get();
                                String str2 = TAG;
                                logger.error(str2, str, e);
                                IllegalStateException illegalStateException = new IllegalStateException(str, e);
                                Consumer<Throwable> initializationExceptionHandler = this.mWorkManager.getConfiguration().getInitializationExceptionHandler();
                                if (initializationExceptionHandler != null) {
                                    Logger.get().debug(str2, "Routing exception to the specified exception handler", illegalStateException);
                                    initializationExceptionHandler.accept(illegalStateException);
                                } else {
                                    throw illegalStateException;
                                }
                            } else {
                                Logger.get().debug(TAG, "Retrying after " + (i * BACKOFF_DURATION_MS), e);
                                sleep(this.mRetryCount * BACKOFF_DURATION_MS);
                            }
                        }
                    } catch (SQLiteException e2) {
                        Logger.get().error(TAG, "Unexpected SQLite exception during migrations");
                        IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e2);
                        Consumer<Throwable> initializationExceptionHandler2 = this.mWorkManager.getConfiguration().getInitializationExceptionHandler();
                        if (initializationExceptionHandler2 != null) {
                            initializationExceptionHandler2.accept(illegalStateException2);
                        } else {
                            throw illegalStateException2;
                        }
                    }
                }
            }
        } finally {
            this.mWorkManager.onForceStopRunnableCompleted();
        }
    }

    public boolean isForceStopped() {
        try {
            PendingIntent pendingIntent = getPendingIntent(this.mContext, 570425344);
            if (pendingIntent != null) {
                pendingIntent.cancel();
            }
            List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.mContext.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                long lastForceStopEventMillis = this.mPreferenceUtils.getLastForceStopEventMillis();
                for (int i = 0; i < historicalProcessExitReasons.size(); i++) {
                    ApplicationExitInfo applicationExitInfo = historicalProcessExitReasons.get(i);
                    if (applicationExitInfo.getReason() == 10 && applicationExitInfo.getTimestamp() >= lastForceStopEventMillis) {
                        return true;
                    }
                }
            }
            return false;
        } catch (IllegalArgumentException | SecurityException e) {
            Logger.get().warning(TAG, "Ignoring exception", e);
            return true;
        }
    }

    public void forceStopRunnable() {
        boolean cleanUp = cleanUp();
        if (shouldRescheduleWorkers()) {
            Logger.get().debug(TAG, "Rescheduling Workers.");
            this.mWorkManager.rescheduleEligibleWork();
            this.mWorkManager.getPreferenceUtils().setNeedsReschedule(false);
        } else if (isForceStopped()) {
            Logger.get().debug(TAG, "Application was force-stopped, rescheduling.");
            this.mWorkManager.rescheduleEligibleWork();
            this.mPreferenceUtils.setLastForceStopEventMillis(this.mWorkManager.getConfiguration().getClock().currentTimeMillis());
        } else if (cleanUp) {
            Logger.get().debug(TAG, "Found unfinished work, scheduling it.");
            Schedulers.schedule(this.mWorkManager.getConfiguration(), this.mWorkManager.getWorkDatabase(), this.mWorkManager.getSchedulers());
        }
    }

    public boolean cleanUp() {
        boolean reconcileJobs = SystemJobScheduler.reconcileJobs(this.mContext, this.mWorkManager.getWorkDatabase());
        WorkDatabase workDatabase = this.mWorkManager.getWorkDatabase();
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkProgressDao workProgressDao = workDatabase.workProgressDao();
        workDatabase.beginTransaction();
        try {
            List<WorkSpec> runningWork = workSpecDao.getRunningWork();
            boolean z = (runningWork == null || runningWork.isEmpty()) ? false : true;
            if (z) {
                for (WorkSpec workSpec : runningWork) {
                    workSpecDao.setState(WorkInfo.State.ENQUEUED, workSpec.id);
                    workSpecDao.setStopReason(workSpec.id, WorkInfo.STOP_REASON_UNKNOWN);
                    workSpecDao.markWorkSpecScheduled(workSpec.id, -1L);
                }
            }
            workProgressDao.deleteAll();
            workDatabase.setTransactionSuccessful();
            return z || reconcileJobs;
        } finally {
            workDatabase.endTransaction();
        }
    }

    public boolean shouldRescheduleWorkers() {
        return this.mWorkManager.getPreferenceUtils().getNeedsReschedule();
    }

    public boolean multiProcessChecks() {
        Configuration configuration = this.mWorkManager.getConfiguration();
        if (TextUtils.isEmpty(configuration.getDefaultProcessName())) {
            Logger.get().debug(TAG, "The default process name was not specified.");
            return true;
        }
        boolean isDefaultProcess = ProcessUtils.isDefaultProcess(this.mContext, configuration);
        Logger.get().debug(TAG, "Is default app process = " + isDefaultProcess);
        return isDefaultProcess;
    }

    public void sleep(long duration) {
        try {
            Thread.sleep(duration);
        } catch (InterruptedException unused) {
        }
    }

    private static PendingIntent getPendingIntent(Context context, int flags) {
        return PendingIntent.getBroadcast(context, -1, getIntent(context), flags);
    }

    static Intent getIntent(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction(ACTION_FORCE_STOP_RESCHEDULE);
        return intent;
    }

    static void setAlarm(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent pendingIntent = getPendingIntent(context, 167772160);
        long currentTimeMillis = System.currentTimeMillis() + TEN_YEARS;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, pendingIntent);
        }
    }

    /* loaded from: classes2.dex */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        private static final String TAG = Logger.tagWithPrefix("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !ForceStopRunnable.ACTION_FORCE_STOP_RESCHEDULE.equals(intent.getAction())) {
                return;
            }
            Logger.get().verbose(TAG, "Rescheduling alarm that keeps track of force-stops.");
            ForceStopRunnable.setAlarm(context);
        }
    }
}
