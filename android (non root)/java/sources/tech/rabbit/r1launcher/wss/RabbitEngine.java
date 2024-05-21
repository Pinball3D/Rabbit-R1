package tech.rabbit.r1launcher.wss;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import defpackage.TaskEventReporter;
import defpackage.TaskOperationDistributor;
import io.sentry.SentryLockReason;
import io.sentry.protocol.SentryThread;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.common.utils.RabbitCommon;
import tech.rabbit.common.utils.ShakeUtils;
import tech.rabbit.r1launcher.camera.CameraManager;
import tech.rabbit.r1launcher.constant.EventInterceptor;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.models.RideProduct;
import tech.rabbit.r1launcher.passcode.VerifyPasscodeActivity;
import tech.rabbit.r1launcher.rabbit.ScreenOffOp;
import tech.rabbit.r1launcher.rabbit.TTSPlayerState;
import tech.rabbit.r1launcher.rabbit.VoiceRecorder;
import tech.rabbit.r1launcher.rabbit.flutter_proxy.MusicTaskProxy;
import tech.rabbit.r1launcher.utils.CameraController;

/* compiled from: RabbitEngine.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001YB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0012J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u0012J\u000e\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0004J\u0018\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0004H\u0016J\u0006\u0010%\u001a\u00020\u0012J\u0016\u0010&\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010.\u001a\u00020\u0012J\u0016\u0010/\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0004J\u000e\u00101\u001a\u00020\u00122\u0006\u00102\u001a\u00020)J\u0019\u00103\u001a\u00020\u00122\f\u00104\u001a\b\u0012\u0004\u0012\u00020605¢\u0006\u0002\u00107J\u000e\u00108\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u00109\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0004J\u000e\u0010:\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010;\u001a\u00020\u0012J\u000e\u0010<\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010=\u001a\u00020\u0012J\u000e\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020)J\u0019\u0010@\u001a\u00020\u00122\f\u00104\u001a\b\u0012\u0004\u0012\u00020605¢\u0006\u0002\u00107J\u000e\u0010A\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0004J\u000e\u0010B\u001a\u00020\u00122\u0006\u00102\u001a\u00020)J\u000e\u0010C\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010D\u001a\u00020\u0012J\u000e\u0010E\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u0004J\u000e\u0010G\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010H\u001a\u00020\u00122\u0006\u0010I\u001a\u00020\u0004J\u000e\u0010J\u001a\u00020\u00122\u0006\u0010I\u001a\u00020\u0004J\u000e\u0010K\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010L\u001a\u00020\u0012J\u000e\u0010M\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010N\u001a\u00020\u00122\u0006\u0010O\u001a\u00020\u0006J\u000e\u0010P\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020)J\u000e\u0010Q\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020)J\u000e\u0010R\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020)J\u0016\u0010S\u001a\u00020\u00122\u0006\u0010T\u001a\u00020\u00042\u0006\u0010+\u001a\u00020UJ\u000e\u0010V\u001a\u00020\u00122\u0006\u0010W\u001a\u00020\u001aJ\u0006\u0010X\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R,\u0010\u000f\u001a \u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Z"}, d2 = {"Ltech/rabbit/r1launcher/wss/RabbitEngine;", "LTaskEventReporter;", "()V", "TAG", "", "flutterService", "LTaskOperationDistributor;", "playedSeconds", "", "getPlayedSeconds", "()J", "setPlayedSeconds", "(J)V", "previousDurationSeconds", "", "printCallback", "Lkotlin/Function3;", "Lkotlin/Result;", "", "clearAllTask", "clearCover", "getTaskInfo", "task", "name", "onChargingStateChange", "isCharging", "", "sendActorShow", "json", "sendCancel", "taskIdArg", "sendClear", "sendDeviceLostEvent", "deviceLostInfo", "sendEvent", "eventName", "payload", "sendFoodDeliveryCardClose", "sendJsonPayload", "taskName", "results", "Lcom/alibaba/fastjson/JSONObject;", "sendLoginState", SentryThread.JsonKeys.STATE, "Ltech/rabbit/r1launcher/wss/LoginState;", "sendManualTask", "sendMusicCardClose", "sendMusicPlayerMessage", "messageName", "sendPhotoTask", "order", "sendProductSelection", "rideProducts", "", "Ltech/rabbit/r1launcher/models/RideProduct;", "([Ltech/rabbit/r1launcher/models/RideProduct;)V", "sendRabbitAddressPageShow", "sendRabbitIdleState", "sendRabbitState", "sendRecordingShow", "sendRideHistory", "sendRideShareCardClose", "sendRideStatus", "status", "sendRiderShareProductSelection", "sendServerStateInfo", "sendSimpleResultTask", "sendStockShow", "sendTTSFinish", "sendTTSShow", "text", "sendTranslatorEvent", "sendUpdateDropOffAddress", SentryLockReason.JsonKeys.ADDRESS, "sendUpdatePickUpAddress", "sendUpdateTranslator", "sendVisionCardClose", "sendWeatherShow", "setup", "taskOperationDistributor", "showReceiptPage", "showRideStatus", "showRideTip", "syncPasscodeVerifyState", "moduleName", "Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;", "updateDeviceStatus", "isScreenOn", "updateLostMode", "PasscodeVerifyState", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RabbitEngine implements TaskEventReporter {
    private static final String TAG = "RabbitEngine";
    private static TaskOperationDistributor flutterService;
    private static long playedSeconds;
    private static int previousDurationSeconds;
    public static final RabbitEngine INSTANCE = new RabbitEngine();
    private static final Function3<String, Result<Unit>, String, Unit> printCallback = new Function3<String, Result<? extends Unit>, String, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$printCallback$1
        public final void invoke(String tag, Object obj, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(String str, Result<? extends Unit> result, String str2) {
            invoke(str, result.getValue(), str2);
            return Unit.INSTANCE;
        }
    };
    public static final int $stable = 8;

    public final long getPlayedSeconds() {
        return playedSeconds;
    }

    public final void setPlayedSeconds(long j) {
        playedSeconds = j;
    }

    public final void setup(TaskOperationDistributor taskOperationDistributor) {
        Intrinsics.checkNotNullParameter(taskOperationDistributor, "taskOperationDistributor");
        flutterService = taskOperationDistributor;
    }

    private RabbitEngine() {
    }

    public final void sendTTSShow(final String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendTTSShow$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = text;
                final String str2 = text;
                taskOperationDistributor.onTTS(str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendTTSShow$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7525invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7525invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendTTSShow", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendTTSFinish() {
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendTTSFinish$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.onTTSFinish(new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendTTSFinish$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7524invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7524invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendTTSFinish", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendCancel(final String taskIdArg) {
        Intrinsics.checkNotNullParameter(taskIdArg, "taskIdArg");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendCancel$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = taskIdArg;
                final String str2 = taskIdArg;
                taskOperationDistributor.onCancel(str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendCancel$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7503invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7503invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendCancel, taskID=" + str2, Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendManualTask(final String payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendManualTask$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = payload;
                final String str2 = payload;
                taskOperationDistributor.onTask("ManualTask", "ManualTask", "", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendManualTask$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7508invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7508invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendManualTask", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendActorShow(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendActorShow$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = json;
                final String str2 = json;
                taskOperationDistributor.onTask("SearchActorTask", "SearchActorTask", "", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendActorShow$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7502invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7502invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendActorShow", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendWeatherShow(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendWeatherShow$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = json;
                final String str2 = json;
                taskOperationDistributor.onTask("SearchWeatherTask", "SearchWeatherTask", "", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendWeatherShow$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7533invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7533invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendWeatherShow", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendStockShow(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendStockShow$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = json;
                final String str2 = json;
                taskOperationDistributor.onTask("SearchStockTask", "SearchStockTask", "", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendStockShow$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7523invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7523invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendStockShow", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendRabbitState(final String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRabbitState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = state;
                final String str2 = state;
                taskOperationDistributor.syncState("", "rabbit", SentryThread.JsonKeys.STATE, str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRabbitState$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7515invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7515invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendRabbitState", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendRabbitIdleState(final String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRabbitIdleState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = state;
                final String str2 = state;
                taskOperationDistributor.syncState("", "rabbit", "idleState", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRabbitIdleState$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7514invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7514invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendRabbitIdleState", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendRecordingShow() {
        EventInterceptor.INSTANCE.setNeedIntercept(true);
        VoiceRecorder.INSTANCE.startRecording();
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRecordingShow$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.onTask("RecordingTask", "RecordingTask", "", "", new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRecordingShow$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7516invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7516invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendRecordingShow", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendTranslatorEvent(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendTranslatorEvent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = json;
                final String str2 = json;
                taskOperationDistributor.onTask("TranslatorTask", "TranslatorTask", "", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendTranslatorEvent$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7526invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7526invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendTranslationEvent", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendUpdateTranslator(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdateTranslator$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = json;
                final String str2 = json;
                taskOperationDistributor.syncState("TranslatorTask", "TranslatorTask", NotificationCompat.CATEGORY_PROGRESS, str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdateTranslator$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7531invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7531invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendTranslationEvent", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendDeviceLostEvent(final String deviceLostInfo) {
        Intrinsics.checkNotNullParameter(deviceLostInfo, "deviceLostInfo");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendDeviceLostEvent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = deviceLostInfo;
                final String str2 = deviceLostInfo;
                taskOperationDistributor.syncState("", "deviceState", "deviceState", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendDeviceLostEvent$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7504invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7504invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendDeviceLostEvent", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void clearCover() {
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$clearCover$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.syncState("", "clearCover", "", "", new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$clearCover$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7500invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7500invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("clearCover", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void updateLostMode() {
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$updateLostMode$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                final String lostMode = Constant.getLostMode();
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                Intrinsics.checkNotNull(lostMode);
                taskOperationDistributor.syncState("", "deviceState", "deviceState", lostMode, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$updateLostMode$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7538invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7538invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String lostMode2 = lostMode;
                        Intrinsics.checkNotNullExpressionValue(lostMode2, "$lostMode");
                        function3.invoke("sendDeviceLostEvent", m5697boximpl, lostMode2);
                    }
                });
            }
        });
    }

    public final void sendMusicPlayerMessage(final String messageName, final String payload) {
        Intrinsics.checkNotNullParameter(messageName, "messageName");
        Intrinsics.checkNotNullParameter(payload, "payload");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendMusicPlayerMessage$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = messageName;
                String str2 = payload;
                final String str3 = messageName;
                final String str4 = payload;
                taskOperationDistributor.onTask("MusicTask", str, "", str2, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendMusicPlayerMessage$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7510invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7510invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke(str3, Result.m5697boximpl(obj), str4);
                    }
                });
            }
        });
    }

    public final void sendProductSelection(final RideProduct[] rideProducts) {
        Intrinsics.checkNotNullParameter(rideProducts, "rideProducts");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendProductSelection$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSON.toJSONString(rideProducts);
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final RideProduct[] rideProductArr = rideProducts;
                taskOperationDistributor.onTask("RideOrderTask", "RideOrderTask", "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendProductSelection$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7512invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7512invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = JSON.toJSONString(rideProductArr);
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke("sendProductSelection", m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    public final void sendJsonPayload(final String taskName, final JSONObject results) {
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(results, "results");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendJsonPayload$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = taskName;
                String jSONString = results.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final String str2 = taskName;
                final JSONObject jSONObject = results;
                taskOperationDistributor.onTask(str, str, "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendJsonPayload$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7506invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7506invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        String str3 = "send " + str2;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = jSONObject.toJSONString();
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke(str3, m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    public final void sendSimpleResultTask(final JSONObject order) {
        Intrinsics.checkNotNullParameter(order, "order");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendSimpleResultTask$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSONObject.this.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final JSONObject jSONObject = JSONObject.this;
                taskOperationDistributor.onTask("SearchSimpleResultTask", "SearchSimpleResultTask", "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendSimpleResultTask$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7522invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7522invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = JSONObject.this.toJSONString();
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke("sendImageResultTask", m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    public final void sendPhotoTask(final JSONObject order) {
        Intrinsics.checkNotNullParameter(order, "order");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendPhotoTask$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSONObject.this.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                taskOperationDistributor.onTask("PhotoTask", "PhotoTask", "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendPhotoTask$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7511invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7511invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendPhotoTask", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendLoginState(final LoginState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendLoginState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String name = LoginState.this.name();
                final LoginState loginState = LoginState.this;
                taskOperationDistributor.syncState("", "loginState", SentryThread.JsonKeys.STATE, name, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendLoginState$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7507invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7507invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendRabbitState", Result.m5697boximpl(obj), LoginState.this.name());
                    }
                });
            }
        });
    }

    public final void sendClear() {
        WebSocketManager.INSTANCE.send("{\"kernel\":{\"clear\":{}}}");
    }

    public final void sendServerStateInfo(final String state) {
        Intrinsics.checkNotNullParameter(state, "state");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendServerStateInfo$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = state;
                final String str2 = state;
                taskOperationDistributor.syncState("", "serverState", SentryThread.JsonKeys.STATE, str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendServerStateInfo$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7521invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7521invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendServerStateInfo", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    @Override // defpackage.TaskEventReporter
    public void sendEvent(String eventName, String payload) {
        Object systemService;
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(payload, "payload");
        RLog.d(TAG, "sendEvent(): " + eventName + ' ' + payload);
        if (Intrinsics.areEqual(eventName, MusicTaskProxy.INSTANCE.getTask())) {
            MusicTaskProxy.INSTANCE.onFlutterEvent(payload);
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.screen")) {
            if (Intrinsics.areEqual(payload, DebugKt.DEBUG_PROPERTY_VALUE_OFF)) {
                ScreenOffOp.INSTANCE.startJudgeNeedScreenOff();
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.suicide")) {
            System.out.println((Object) "sys.suicide");
            Activity sWeakActivity = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity != null) {
                sWeakActivity.finish();
            }
            System.exit(0);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        }
        if (Intrinsics.areEqual(eventName, "sys.reset_acc")) {
            Constant.saveLoginToken("");
            KotlinUtilKt.postDelayOnMainThread(300L, new Function0<Object>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendEvent$1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Activity sWeakActivity2 = RabbitCommon.INSTANCE.getSWeakActivity();
                    if (sWeakActivity2 != null) {
                        sWeakActivity2.finish();
                    }
                    System.exit(0);
                    throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
                }
            });
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.go_settings_wireless")) {
            Intent intent = new Intent("android.settings.WIRELESS_SETTINGS");
            intent.setFlags(268435456);
            Activity sWeakActivity2 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity2 != null) {
                sWeakActivity2.startActivity(intent);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.go_settings_display")) {
            Intent intent2 = new Intent("android.settings.DISPLAY_SETTINGS");
            intent2.setFlags(268435456);
            Activity sWeakActivity3 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity3 != null) {
                sWeakActivity3.startActivity(intent2);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.go_settings_sound")) {
            Intent intent3 = new Intent("android.settings.SOUND_SETTINGS");
            intent3.setFlags(268435456);
            Activity sWeakActivity4 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity4 != null) {
                sWeakActivity4.startActivity(intent3);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.go_settings_bluetooth")) {
            Intent intent4 = new Intent("android.settings.BLUETOOTH_SETTINGS");
            intent4.setFlags(268435456);
            Activity sWeakActivity5 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity5 != null) {
                sWeakActivity5.startActivity(intent4);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.go_settings_ime")) {
            Intent intent5 = new Intent("android.settings.INPUT_METHOD_SETTINGS");
            intent5.setFlags(268435456);
            Activity sWeakActivity6 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity6 != null) {
                sWeakActivity6.startActivity(intent5);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.go_settings_date")) {
            Intent intent6 = new Intent("android.settings.DATE_SETTINGS");
            intent6.setFlags(268435456);
            Activity sWeakActivity7 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity7 != null) {
                sWeakActivity7.startActivity(intent6);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.shutdown")) {
            System.out.println((Object) "sys.shutdown");
            try {
                Object invoke = Class.forName("android.os.IPowerManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "power"));
                invoke.getClass().getMethod("shutdown", Boolean.TYPE, String.class, Boolean.TYPE).invoke(invoke, false, null, true);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (Intrinsics.areEqual(eventName, "sys.reboot")) {
            Activity sWeakActivity8 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity8 == null || (systemService = sWeakActivity8.getSystemService("power")) == null) {
                return;
            }
            ((PowerManager) systemService).reboot(" ");
            return;
        }
        if (Intrinsics.areEqual(eventName, "sys.tts_mute")) {
            TTSPlayerState.INSTANCE.updateState(payload);
            return;
        }
        if (Intrinsics.areEqual(eventName, "user.send_text")) {
            WebSocketManager.INSTANCE.send("{\"kernel\":{\"userText\":{\"text\":\"" + payload + "\"}}}");
            return;
        }
        if (Intrinsics.areEqual(eventName, "camera.flip")) {
            System.out.println((Object) ("camera.flip -> " + payload));
            JSONObject parseObject = JSON.parseObject(payload);
            String string = parseObject.getString("cameraState");
            Boolean bool = parseObject.getBoolean("isForce");
            Intrinsics.checkNotNullExpressionValue(bool, "getBoolean(...)");
            boolean booleanValue = bool.booleanValue();
            Intrinsics.checkNotNull(string);
            String lowerCase = string.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (CameraController.INSTANCE.isNeedRotate(Intrinsics.areEqual(lowerCase, "privacy"), booleanValue)) {
                CameraController.INSTANCE.rotateWithName(string);
                CameraManager.INSTANCE.rotateWithName(string);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "service.send")) {
            WebSocketManager.INSTANCE.send(payload);
            return;
        }
        if (Intrinsics.areEqual(eventName, "ride_share.order_confirm")) {
            WebSocketManager.INSTANCE.send("{\"uber\": {\"selectProduct\": {\"id\": \"" + payload + "\"}}}");
            return;
        }
        if (Intrinsics.areEqual(eventName, "service.passcode_verify")) {
            Activity sWeakActivity9 = RabbitCommon.INSTANCE.getSWeakActivity();
            if (sWeakActivity9 != null) {
                VerifyPasscodeActivity.INSTANCE.launch(sWeakActivity9, payload);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(eventName, "food_delivery.order_confirm")) {
            WebSocketManager.INSTANCE.send("{\"doorDash\": {\"placeOrder\": {}}}");
            return;
        }
        if (Intrinsics.areEqual(eventName, "recording.stop")) {
            EventInterceptor.INSTANCE.setNeedIntercept(false);
            VoiceRecorder.INSTANCE.stopRecording();
            return;
        }
        if (Intrinsics.areEqual(eventName, "translator.state")) {
            Boolean bool2 = JSON.parseObject(payload).getBoolean("status");
            EventInterceptor eventInterceptor = EventInterceptor.INSTANCE;
            Intrinsics.checkNotNull(bool2);
            eventInterceptor.setTransaltor(bool2.booleanValue());
            return;
        }
        if (Intrinsics.areEqual(eventName, "shake.enable")) {
            JSONObject parseObject2 = JSON.parseObject(payload);
            ShakeUtils shakeUtils = ShakeUtils.getInstance();
            Boolean bool3 = parseObject2.getBoolean("enable");
            Intrinsics.checkNotNullExpressionValue(bool3, "getBoolean(...)");
            shakeUtils.setShakeEnable(bool3.booleanValue());
            return;
        }
        if (Intrinsics.areEqual(eventName, "screenoff.enable")) {
            JSONObject parseObject3 = JSON.parseObject(payload);
            ScreenOffOp screenOffOp = ScreenOffOp.INSTANCE;
            Boolean bool4 = parseObject3.getBoolean("enable");
            Intrinsics.checkNotNullExpressionValue(bool4, "getBoolean(...)");
            screenOffOp.isHomePage(bool4.booleanValue());
            return;
        }
        if (Intrinsics.areEqual(eventName, "addflag.screenon")) {
            JSONObject parseObject4 = JSON.parseObject(payload);
            ScreenOffOp screenOffOp2 = ScreenOffOp.INSTANCE;
            Boolean bool5 = parseObject4.getBoolean("enable");
            Intrinsics.checkNotNullExpressionValue(bool5, "getBoolean(...)");
            screenOffOp2.isHomePage(bool5.booleanValue());
        }
    }

    public final void updateDeviceStatus(boolean isScreenOn) {
        JSONObject jSONObject = new JSONObject((Map<String, Object>) MapsKt.mapOf(TuplesKt.to("statusUpdate", "{\"screen\":\"" + (isScreenOn ? DebugKt.DEBUG_PROPERTY_VALUE_ON : DebugKt.DEBUG_PROPERTY_VALUE_OFF) + "\" }")));
        WebSocketManager webSocketManager = WebSocketManager.INSTANCE;
        String jSONString = jSONObject.toJSONString();
        Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
        webSocketManager.send(jSONString);
    }

    public final void sendUpdatePickUpAddress(final String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        KotlinUtilKt.postDelayOnMainThread(1000L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdatePickUpAddress$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                TaskOperationDistributor taskOperationDistributor2;
                TaskOperationDistributor taskOperationDistributor3;
                TaskOperationDistributor taskOperationDistributor4;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor2 = null;
                } else {
                    taskOperationDistributor2 = taskOperationDistributor;
                }
                String str = address;
                final String str2 = address;
                taskOperationDistributor2.syncState("PickupAddressTask", "PickupAddressTask", SentryLockReason.JsonKeys.ADDRESS, str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdatePickUpAddress$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7529invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7529invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendPickupAddress", Result.m5697boximpl(obj), str2);
                    }
                });
                taskOperationDistributor3 = RabbitEngine.flutterService;
                if (taskOperationDistributor3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor4 = null;
                } else {
                    taskOperationDistributor4 = taskOperationDistributor3;
                }
                String str3 = address;
                final String str4 = address;
                taskOperationDistributor4.syncState("PickUp", "PickUpAddress", "update", str3, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdatePickUpAddress$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7530invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7530invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("updateSavingDropOffData", Result.m5697boximpl(obj), str4);
                    }
                });
            }
        });
    }

    public final void sendUpdateDropOffAddress(final String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        KotlinUtilKt.postDelayOnMainThread(1000L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdateDropOffAddress$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                TaskOperationDistributor taskOperationDistributor2;
                TaskOperationDistributor taskOperationDistributor3;
                TaskOperationDistributor taskOperationDistributor4;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor2 = null;
                } else {
                    taskOperationDistributor2 = taskOperationDistributor;
                }
                String str = address;
                final String str2 = address;
                taskOperationDistributor2.syncState("DropOffAddressTask", "DropOffAddressTask", SentryLockReason.JsonKeys.ADDRESS, str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdateDropOffAddress$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7527invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7527invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendUpdateDropOffAddress", Result.m5697boximpl(obj), str2);
                    }
                });
                taskOperationDistributor3 = RabbitEngine.flutterService;
                if (taskOperationDistributor3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor4 = null;
                } else {
                    taskOperationDistributor4 = taskOperationDistributor3;
                }
                String str3 = address;
                final String str4 = address;
                taskOperationDistributor4.syncState("DropOff", "DropOffAddress", "update", str3, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendUpdateDropOffAddress$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7528invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7528invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("updateSavingDropOffData", Result.m5697boximpl(obj), str4);
                    }
                });
            }
        });
    }

    public final void sendRiderShareProductSelection(final RideProduct[] rideProducts) {
        Intrinsics.checkNotNullParameter(rideProducts, "rideProducts");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRiderShareProductSelection$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSON.toJSONString(rideProducts);
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final RideProduct[] rideProductArr = rideProducts;
                taskOperationDistributor.onTask("RiderShareSearchTask", "RiderShareSearchTask", "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRiderShareProductSelection$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7520invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7520invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = JSON.toJSONString(rideProductArr);
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke("sendRiderShareSelection", m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    public final void sendRabbitAddressPageShow(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRabbitAddressPageShow$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = json;
                final String str2 = json;
                taskOperationDistributor.onTask("RiderShareConfirmAddressTask", "RiderShareConfirmAddressTask", "", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRabbitAddressPageShow$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7513invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7513invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("rsConfirmAddressShow", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    public final void sendRideShareCardClose() {
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRideShareCardClose$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.syncState("onRideShareCloseTask", "closeUber", Service.UBER.getTag(), "", new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRideShareCardClose$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7518invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7518invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendUberCloseTask", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendFoodDeliveryCardClose() {
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendFoodDeliveryCardClose$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.onTask("closeFoodDelivery", "closeFoodDelivery", Service.FOOD_DELIVERY.getTag(), "", new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendFoodDeliveryCardClose$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7505invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7505invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("closeFoodDelivery", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendMusicCardClose() {
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendMusicCardClose$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.syncState("onMusicCloseTask", "closeMusic", Service.SPOTIFY.getTag(), "", new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendMusicCardClose$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7509invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7509invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendUberCloseTask", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendVisionCardClose() {
        CameraManager.INSTANCE.setNeedReopenCamera(false);
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendVisionCardClose$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.syncState("onVisionCloseTask", "closeVision", Service.VISION.getTag(), "", new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendVisionCardClose$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7532invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7532invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendVisionCardClose", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendRideStatus(final JSONObject status) {
        Intrinsics.checkNotNullParameter(status, "status");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRideStatus$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                RabbitEngine.INSTANCE.showRideStatus(JSONObject.this);
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSONObject.this.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final JSONObject jSONObject = JSONObject.this;
                taskOperationDistributor.syncState("UberDetailTask", "UberDetailTask", "uberStatus", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRideStatus$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7519invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7519invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = JSONObject.this.toJSONString();
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke("sendRideStatus", m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    public final void showReceiptPage(final JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$showReceiptPage$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSONObject.this.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final JSONObject jSONObject = JSONObject.this;
                taskOperationDistributor.onTask("UberReceiptTask", "UberReceiptTask", "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$showReceiptPage$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7534invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7534invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = JSONObject.this.toJSONString();
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke("UberReceiptTask", m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    public final void showRideTip(final JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$showRideTip$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSONObject.this.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final JSONObject jSONObject = JSONObject.this;
                taskOperationDistributor.onTask("UberTipTask", "UberTipTask", "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$showRideTip$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7536invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7536invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = JSONObject.this.toJSONString();
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke("UberTipTask", m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    public final void showRideStatus(final JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$showRideStatus$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String jSONString = JSONObject.this.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                final JSONObject jSONObject = JSONObject.this;
                taskOperationDistributor.onTask("UberDetailTask", "UberDetailTask", "", jSONString, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$showRideStatus$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7535invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7535invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        Result m5697boximpl = Result.m5697boximpl(obj);
                        String jSONString2 = JSONObject.this.toJSONString();
                        Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                        function3.invoke("sendStockShow", m5697boximpl, jSONString2);
                    }
                });
            }
        });
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: RabbitEngine.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;", "", "(Ljava/lang/String;I)V", "Succeed", "Failed", "Cancel", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PasscodeVerifyState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PasscodeVerifyState[] $VALUES;
        public static final PasscodeVerifyState Succeed = new PasscodeVerifyState("Succeed", 0);
        public static final PasscodeVerifyState Failed = new PasscodeVerifyState("Failed", 1);
        public static final PasscodeVerifyState Cancel = new PasscodeVerifyState("Cancel", 2);

        private static final /* synthetic */ PasscodeVerifyState[] $values() {
            return new PasscodeVerifyState[]{Succeed, Failed, Cancel};
        }

        public static EnumEntries<PasscodeVerifyState> getEntries() {
            return $ENTRIES;
        }

        public static PasscodeVerifyState valueOf(String str) {
            return (PasscodeVerifyState) Enum.valueOf(PasscodeVerifyState.class, str);
        }

        public static PasscodeVerifyState[] values() {
            return (PasscodeVerifyState[]) $VALUES.clone();
        }

        private PasscodeVerifyState(String str, int i) {
        }

        static {
            PasscodeVerifyState[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }
    }

    public final void syncPasscodeVerifyState(final String moduleName, final PasscodeVerifyState state) {
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(state, "state");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$syncPasscodeVerifyState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                TaskOperationDistributor taskOperationDistributor2 = taskOperationDistributor;
                StringBuilder append = new StringBuilder("{\"module\":\"").append(moduleName).append("\",\"state\":\"");
                String name = state.name();
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                taskOperationDistributor2.syncState("", "PasscodeVerifyState", SentryThread.JsonKeys.STATE, append.append(lowerCase).append("\"}").toString(), new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$syncPasscodeVerifyState$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7537invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7537invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("syncPasscodeVerifyState", Result.m5697boximpl(obj), "");
                    }
                });
            }
        });
    }

    public final void sendRideHistory(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRideHistory$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                String str = json;
                final String str2 = json;
                taskOperationDistributor.onTask("RideHistoryTask", "RideHistoryTask", "", str, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$sendRideHistory$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7517invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7517invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("sendRideHistory", Result.m5697boximpl(obj), str2);
                    }
                });
            }
        });
    }

    @Override // defpackage.TaskEventReporter
    public String getTaskInfo(String task, String name) {
        Intrinsics.checkNotNullParameter(task, "task");
        Intrinsics.checkNotNullParameter(name, "name");
        return Intrinsics.areEqual(MusicTaskProxy.INSTANCE.getTask(), task) ? MusicTaskProxy.INSTANCE.getInfo(name) : "";
    }

    public final void clearAllTask() {
        CameraManager.INSTANCE.setNeedReopenCamera(false);
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$clearAllTask$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.clearAllTask(new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$clearAllTask$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7499invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7499invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("clearAllTask", Result.m5697boximpl(obj), "success = " + Result.m5705isSuccessimpl(obj));
                    }
                });
            }
        });
    }

    public final void onChargingStateChange(final boolean isCharging) {
        KotlinUtilKt.runOnMainThread(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$onChargingStateChange$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TaskOperationDistributor taskOperationDistributor;
                taskOperationDistributor = RabbitEngine.flutterService;
                if (taskOperationDistributor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flutterService");
                    taskOperationDistributor = null;
                }
                taskOperationDistributor.onChargingStateChange(isCharging, new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.wss.RabbitEngine$onChargingStateChange$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                        m7501invoke(result.getValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m7501invoke(Object obj) {
                        Function3 function3;
                        function3 = RabbitEngine.printCallback;
                        function3.invoke("onChargingStateChange", Result.m5697boximpl(obj), "success = " + Result.m5705isSuccessimpl(obj));
                    }
                });
            }
        });
    }
}
