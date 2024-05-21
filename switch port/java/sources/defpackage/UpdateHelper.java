package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1systemupdater.CheckUpdateWorker;
import tech.rabbit.r1systemupdater.OtaState;
import tech.rabbit.r1systemupdater.OtaStateHelper;
import tech.rabbit.r1systemupdater.SystemUpdater;
import tech.rabbit.r1systemupdater.model.UpdateConfig;

/* compiled from: UpdateHelper.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J(\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0018\b\u0002\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"LUpdateHelper;", "", "()V", "TAG", "", "UPDATE_CONFIG_KEY", "afterCheckRunnable", "Ljava/lang/Runnable;", "isChecking", "", "threadPoolExecutor", "Ljava/util/concurrent/ExecutorService;", "executeIfNoUpdate", "", "runnable", "initUpdateChecker", "context", "Landroid/content/Context;", "triggerOnceCheck", "triggerOnceCheckInSubThread", "listener", "Lkotlin/Function1;", "Ltech/rabbit/r1systemupdater/model/UpdateConfig;", "ota_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UpdateHelper {
    private static final String TAG = "UpdateHelper";
    public static final String UPDATE_CONFIG_KEY = "update_config";
    private static Runnable afterCheckRunnable;
    private static volatile boolean isChecking;
    public static final UpdateHelper INSTANCE = new UpdateHelper();
    private static final ExecutorService threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new SynchronousQueue());

    private UpdateHelper() {
    }

    public final void initUpdateChecker(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        WorkManager.getInstance(context.getApplicationContext()).enqueueUniquePeriodicWork("CheckUpdateWorker", ExistingPeriodicWorkPolicy.KEEP, new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) CheckUpdateWorker.class, 1L, TimeUnit.DAYS).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 10L, TimeUnit.MINUTES).build());
    }

    public final void triggerOnceCheck(Context context) {
        if (context == null) {
            return;
        }
        OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(CheckUpdateWorker.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).setExpedited(OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST).build();
        Log.d("", "start CheckUpdateWorker");
        WorkManager.getInstance(context.getApplicationContext()).enqueue(build);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void triggerOnceCheckInSubThread$default(UpdateHelper updateHelper, Context context, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        updateHelper.triggerOnceCheckInSubThread(context, function1);
    }

    public final void triggerOnceCheckInSubThread(final Context context, final Function1<? super UpdateConfig, Unit> listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (isChecking) {
            return;
        }
        isChecking = true;
        threadPoolExecutor.execute(new Runnable() { // from class: UpdateHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                UpdateHelper.triggerOnceCheckInSubThread$lambda$1(context, listener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void triggerOnceCheckInSubThread$lambda$1(Context context, final Function1 function1) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Log.i(TAG, "checking update");
        OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.CHECKING);
        SystemUpdater.getInstance(context.getApplicationContext()).check(new SystemUpdater.CheckCallback() { // from class: UpdateHelper$$ExternalSyntheticLambda1
            @Override // tech.rabbit.r1systemupdater.SystemUpdater.CheckCallback
            public final void onReuslt(UpdateConfig updateConfig) {
                UpdateHelper.triggerOnceCheckInSubThread$lambda$1$lambda$0(Function1.this, updateConfig);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void triggerOnceCheckInSubThread$lambda$1$lambda$0(Function1 function1, UpdateConfig updateConfig) {
        OtaStateHelper.INSTANCE.setUpdateConfig(updateConfig);
        if (updateConfig == null) {
            Log.i(TAG, "check update no config ");
            OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.NO_UPDATES);
        } else {
            Log.i(TAG, "check update config: " + updateConfig.getName() + ' ' + updateConfig.getVersion());
            OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.PREPARE_UPDATE);
        }
        if (function1 != null) {
            function1.invoke(updateConfig);
        }
        isChecking = false;
        if (afterCheckRunnable != null) {
            if (OtaStateHelper.INSTANCE.getUpdateConfig() == null) {
                Log.i(TAG, "run afterCheckRunnable");
                Handler handler = new Handler(Looper.getMainLooper());
                Runnable runnable = afterCheckRunnable;
                Intrinsics.checkNotNull(runnable);
                handler.post(runnable);
            }
            afterCheckRunnable = null;
        }
    }

    public final void executeIfNoUpdate(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (isChecking) {
            afterCheckRunnable = runnable;
        } else if (OtaStateHelper.INSTANCE.getUpdateConfig() == null) {
            runnable.run();
        }
    }
}
