package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.Network;
import android.net.Uri;
import android.os.PersistableBundle;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class SystemJobService extends JobService implements ExecutionListener {
    private static final String TAG = Logger.tagWithPrefix("SystemJobService");
    private final Map<WorkGenerationalId, JobParameters> mJobParameters = new HashMap();
    private final StartStopTokens mStartStopTokens = new StartStopTokens();
    private WorkLauncher mWorkLauncher;
    private WorkManagerImpl mWorkManagerImpl;

    static int stopReason(int jobReason) {
        switch (jobReason) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return jobReason;
            default:
                return WorkInfo.STOP_REASON_UNKNOWN;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
            this.mWorkManagerImpl = workManagerImpl;
            Processor processor = workManagerImpl.getProcessor();
            this.mWorkLauncher = new WorkLauncherImpl(processor, this.mWorkManagerImpl.getWorkTaskExecutor());
            processor.addExecutionListener(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
            Logger.get().warning(TAG, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.mWorkManagerImpl;
        if (workManagerImpl != null) {
            workManagerImpl.getProcessor().removeExecutionListener(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters params) {
        if (this.mWorkManagerImpl == null) {
            Logger.get().debug(TAG, "WorkManager is not initialized; requesting retry.");
            jobFinished(params, true);
            return false;
        }
        WorkGenerationalId workGenerationalIdFromJobParameters = workGenerationalIdFromJobParameters(params);
        if (workGenerationalIdFromJobParameters == null) {
            Logger.get().error(TAG, "WorkSpec id not found!");
            return false;
        }
        synchronized (this.mJobParameters) {
            if (this.mJobParameters.containsKey(workGenerationalIdFromJobParameters)) {
                Logger.get().debug(TAG, "Job is already being executed by SystemJobService: " + workGenerationalIdFromJobParameters);
                return false;
            }
            Logger.get().debug(TAG, "onStartJob for " + workGenerationalIdFromJobParameters);
            this.mJobParameters.put(workGenerationalIdFromJobParameters, params);
            WorkerParameters.RuntimeExtras runtimeExtras = new WorkerParameters.RuntimeExtras();
            if (Api24Impl.getTriggeredContentUris(params) != null) {
                runtimeExtras.triggeredContentUris = Arrays.asList(Api24Impl.getTriggeredContentUris(params));
            }
            if (Api24Impl.getTriggeredContentAuthorities(params) != null) {
                runtimeExtras.triggeredContentAuthorities = Arrays.asList(Api24Impl.getTriggeredContentAuthorities(params));
            }
            runtimeExtras.network = Api28Impl.getNetwork(params);
            this.mWorkLauncher.startWork(this.mStartStopTokens.tokenFor(workGenerationalIdFromJobParameters), runtimeExtras);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters params) {
        if (this.mWorkManagerImpl == null) {
            Logger.get().debug(TAG, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        WorkGenerationalId workGenerationalIdFromJobParameters = workGenerationalIdFromJobParameters(params);
        if (workGenerationalIdFromJobParameters == null) {
            Logger.get().error(TAG, "WorkSpec id not found!");
            return false;
        }
        Logger.get().debug(TAG, "onStopJob for " + workGenerationalIdFromJobParameters);
        synchronized (this.mJobParameters) {
            this.mJobParameters.remove(workGenerationalIdFromJobParameters);
        }
        StartStopToken remove = this.mStartStopTokens.remove(workGenerationalIdFromJobParameters);
        if (remove != null) {
            this.mWorkLauncher.stopWorkWithReason(remove, Api31Impl.getStopReason(params));
        }
        return !this.mWorkManagerImpl.getProcessor().isCancelled(workGenerationalIdFromJobParameters.getWorkSpecId());
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(WorkGenerationalId id, boolean needsReschedule) {
        JobParameters remove;
        Logger.get().debug(TAG, id.getWorkSpecId() + " executed on JobScheduler");
        synchronized (this.mJobParameters) {
            remove = this.mJobParameters.remove(id);
        }
        this.mStartStopTokens.remove(id);
        if (remove != null) {
            jobFinished(remove, needsReschedule);
        }
    }

    private static WorkGenerationalId workGenerationalIdFromJobParameters(JobParameters parameters) {
        try {
            PersistableBundle extras = parameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    /* loaded from: classes2.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        static Uri[] getTriggeredContentUris(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentUris();
        }

        static String[] getTriggeredContentAuthorities(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentAuthorities();
        }
    }

    /* loaded from: classes2.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static Network getNetwork(JobParameters jobParameters) {
            return jobParameters.getNetwork();
        }
    }

    /* loaded from: classes2.dex */
    static class Api31Impl {
        private Api31Impl() {
        }

        static int getStopReason(JobParameters jobParameters) {
            return SystemJobService.stopReason(jobParameters.getStopReason());
        }
    }
}
