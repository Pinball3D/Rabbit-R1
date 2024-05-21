package tech.rabbit.r1systemupdater;

import android.content.Context;
import android.util.Log;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1systemupdater.SystemUpdater;
import tech.rabbit.r1systemupdater.model.UpdateConfig;

/* compiled from: CheckUpdateWorker.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Ltech/rabbit/r1systemupdater/CheckUpdateWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "mUpdateConfig", "Ltech/rabbit/r1systemupdater/model/UpdateConfig;", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "ota_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CheckUpdateWorker extends Worker {
    private static final String TAG = "CheckUpdateWorker";
    private UpdateConfig mUpdateConfig;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckUpdateWorker(Context context, WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Log.i(TAG, "doWork");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.CHECKING);
        SystemUpdater.getInstance(getApplicationContext()).check(new SystemUpdater.CheckCallback() { // from class: tech.rabbit.r1systemupdater.CheckUpdateWorker$$ExternalSyntheticLambda0
            @Override // tech.rabbit.r1systemupdater.SystemUpdater.CheckCallback
            public final void onReuslt(UpdateConfig updateConfig) {
                CheckUpdateWorker.doWork$lambda$0(CheckUpdateWorker.this, countDownLatch, updateConfig);
            }
        });
        try {
            countDownLatch.await(20L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (this.mUpdateConfig == null) {
            Log.i(TAG, "check update no config ");
            OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.NO_UPDATES);
        } else {
            StringBuilder sb = new StringBuilder("check update config: ");
            UpdateConfig updateConfig = this.mUpdateConfig;
            Intrinsics.checkNotNull(updateConfig);
            StringBuilder append = sb.append(updateConfig.getName()).append(' ');
            UpdateConfig updateConfig2 = this.mUpdateConfig;
            Intrinsics.checkNotNull(updateConfig2);
            Log.i(TAG, append.append(updateConfig2.getVersion()).toString());
            OtaStateHelper.INSTANCE.setUpdateConfig(this.mUpdateConfig);
            OtaStateHelper.INSTANCE.getLiveState().postValue(OtaState.PREPARE_UPDATE);
        }
        Log.i(TAG, "result success");
        ListenableWorker.Result success = ListenableWorker.Result.success();
        Intrinsics.checkNotNullExpressionValue(success, "success(...)");
        return success;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doWork$lambda$0(CheckUpdateWorker this$0, CountDownLatch latch, UpdateConfig updateConfig) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(latch, "$latch");
        this$0.mUpdateConfig = updateConfig;
        latch.countDown();
    }
}
