package tech.rabbit.r1launcher.wss;

import android.content.Context;
import android.util.Log;
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
import tech.rabbit.r1launcher.camera.CameraManager;
import tech.rabbit.r1launcher.utils.CameraController;
import tech.rabbit.r1launcher.wss.rtc.RTCNetworkManager;

/* compiled from: WebSocketValve.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/wss/WebSocketValve;", "", "()V", "MUSIC_PLAYBACK_TIMEOUT", "", "TAG", "", "TIMEOUT_TIME", "WORKER_TAG", "onScreenOff", "", "context", "Landroid/content/Context;", "onScreenOn", "ValueWorker", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WebSocketValve {
    public static final int $stable = 0;
    public static final WebSocketValve INSTANCE = new WebSocketValve();
    private static final long MUSIC_PLAYBACK_TIMEOUT = 240;
    private static final String TAG = "WebSocketValve";
    private static final long TIMEOUT_TIME = 2;
    private static final String WORKER_TAG = "WebSocketValve";

    private WebSocketValve() {
    }

    public final void onScreenOff(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        long j = RTCNetworkManager.isPlaying() ? MUSIC_PLAYBACK_TIMEOUT : TIMEOUT_TIME;
        OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(ValueWorker.class);
        Duration ofMinutes = Duration.ofMinutes(j);
        Intrinsics.checkNotNullExpressionValue(ofMinutes, "ofMinutes(...)");
        WorkManager.getInstance(context).enqueue(builder.setInitialDelay(ofMinutes).addTag("WebSocketValve").build());
    }

    public final void onScreenOn(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Log.i("WebSocketValve", "onScreenOn: connect the websocket");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m5698constructorimpl(WorkManager.getInstance(context).cancelAllWorkByTag("WebSocketValve"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        WebSocketManager.INSTANCE.connect();
    }

    /* compiled from: WebSocketValve.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/wss/WebSocketValve$ValueWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", Message.JsonKeys.PARAMS, "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
            Log.i("WebSocketValve", "onScreenOff: disconnected the websocket");
            WebSocketManager.INSTANCE.disconnect();
            RabbitEngine.INSTANCE.clearAllTask();
            CameraManager.INSTANCE.close();
            if (CameraController.INSTANCE.isNeedRotate(true, true)) {
                CameraController.INSTANCE.rotateToPrivacy();
            }
            ListenableWorker.Result success = ListenableWorker.Result.success();
            Intrinsics.checkNotNullExpressionValue(success, "success(...)");
            return success;
        }
    }
}
