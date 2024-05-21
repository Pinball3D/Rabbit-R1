package com.google.android.exoplayer2.scheduler;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public final class PlatformScheduler implements Scheduler {
    private static final String KEY_REQUIREMENTS = "requirements";
    private static final String KEY_SERVICE_ACTION = "service_action";
    private static final String KEY_SERVICE_PACKAGE = "service_package";
    private static final int SUPPORTED_REQUIREMENTS;
    private static final String TAG = "PlatformScheduler";
    private final int jobId;
    private final JobScheduler jobScheduler;
    private final ComponentName jobServiceComponentName;

    static {
        SUPPORTED_REQUIREMENTS = (Util.SDK_INT >= 26 ? 16 : 0) | 15;
    }

    public PlatformScheduler(Context context, int i) {
        Context applicationContext = context.getApplicationContext();
        this.jobId = i;
        this.jobServiceComponentName = new ComponentName(applicationContext, (Class<?>) PlatformSchedulerService.class);
        this.jobScheduler = (JobScheduler) Assertions.checkNotNull((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }

    @Override // com.google.android.exoplayer2.scheduler.Scheduler
    public boolean schedule(Requirements requirements, String str, String str2) {
        return this.jobScheduler.schedule(buildJobInfo(this.jobId, this.jobServiceComponentName, requirements, str2, str)) == 1;
    }

    @Override // com.google.android.exoplayer2.scheduler.Scheduler
    public boolean cancel() {
        this.jobScheduler.cancel(this.jobId);
        return true;
    }

    @Override // com.google.android.exoplayer2.scheduler.Scheduler
    public Requirements getSupportedRequirements(Requirements requirements) {
        return requirements.filterRequirements(SUPPORTED_REQUIREMENTS);
    }

    private static JobInfo buildJobInfo(int i, ComponentName componentName, Requirements requirements, String str, String str2) {
        Requirements filterRequirements = requirements.filterRequirements(SUPPORTED_REQUIREMENTS);
        if (!filterRequirements.equals(requirements)) {
            Log.w(TAG, "Ignoring unsupported requirements: " + (filterRequirements.getRequirements() ^ requirements.getRequirements()));
        }
        JobInfo.Builder builder = new JobInfo.Builder(i, componentName);
        if (requirements.isUnmeteredNetworkRequired()) {
            builder.setRequiredNetworkType(2);
        } else if (requirements.isNetworkRequired()) {
            builder.setRequiredNetworkType(1);
        }
        builder.setRequiresDeviceIdle(requirements.isIdleRequired());
        builder.setRequiresCharging(requirements.isChargingRequired());
        if (Util.SDK_INT >= 26 && requirements.isStorageNotLowRequired()) {
            builder.setRequiresStorageNotLow(true);
        }
        builder.setPersisted(true);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(KEY_SERVICE_ACTION, str);
        persistableBundle.putString(KEY_SERVICE_PACKAGE, str2);
        persistableBundle.putInt("requirements", requirements.getRequirements());
        builder.setExtras(persistableBundle);
        return builder.build();
    }

    /* loaded from: classes2.dex */
    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
            if (notMetRequirements == 0) {
                Util.startForegroundService(this, new Intent((String) Assertions.checkNotNull(extras.getString(PlatformScheduler.KEY_SERVICE_ACTION))).setPackage((String) Assertions.checkNotNull(extras.getString(PlatformScheduler.KEY_SERVICE_PACKAGE))));
                return false;
            }
            Log.w(PlatformScheduler.TAG, "Requirements not met: " + notMetRequirements);
            jobFinished(jobParameters, true);
            return false;
        }
    }
}
