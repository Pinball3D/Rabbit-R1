package tech.rabbit.r1launcher.rabbit;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import io.sentry.protocol.Message;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.RabbitCommon;
import tech.rabbit.r1launcher.wss.RabbitEngine;
import tech.rabbit.r1launcher.wss.rtc.RTCNetworkManager;

/* compiled from: MusicOutTimeOp.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;", "", "()V", "TAG", "", "TIMEOUT_TIME", "", "WORKER_TAG", "cancleTiming", "", "startTiming", "ValueWorker", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MusicOutTimeOp {
    public static final int $stable = 0;
    private static final long TIMEOUT_TIME = 240;
    public static final MusicOutTimeOp INSTANCE = new MusicOutTimeOp();
    private static final String TAG = "MusiceOutTimeOp";
    private static final String WORKER_TAG = "MusiceOutTimeOp";

    private MusicOutTimeOp() {
    }

    public final void startTiming() {
        System.out.print((Object) "music playing time: start timing");
        OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(ValueWorker.class);
        Duration ofMinutes = Duration.ofMinutes(TIMEOUT_TIME);
        Intrinsics.checkNotNullExpressionValue(ofMinutes, "ofMinutes(...)");
        WorkManager.getInstance(RabbitCommon.INSTANCE.getSContext()).enqueue(builder.setInitialDelay(ofMinutes).addTag(WORKER_TAG).build());
    }

    public final void cancleTiming() {
        System.out.print((Object) "music playing time: cancle timing");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m5698constructorimpl(WorkManager.getInstance(RabbitCommon.INSTANCE.getSContext()).cancelAllWorkByTag(WORKER_TAG));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* compiled from: MusicOutTimeOp.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp$ValueWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", Message.JsonKeys.PARAMS, "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ValueWorker extends Worker {
        public static final int $stable = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValueWorker(Context context, WorkerParameters params) {
            super(context, params);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(params, "params");
        }

        @Override // androidx.work.Worker
        public ListenableWorker.Result doWork() {
            System.out.print((Object) "music playing time: 4 hours clean all task");
            RTCNetworkManager.pausePlay();
            RabbitEngine.INSTANCE.clearAllTask();
            ListenableWorker.Result success = ListenableWorker.Result.success();
            Intrinsics.checkNotNullExpressionValue(success, "success(...)");
            return success;
        }
    }
}
