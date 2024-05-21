.class public final Ltech/rabbit/r1launcher/wss/RabbitEngine;
.super Ljava/lang/Object;
.source "RabbitEngine.kt"

# interfaces
.implements LTaskEventReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRabbitEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RabbitEngine.kt\ntech/rabbit/r1launcher/wss/RabbitEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,568:1\n1#2:569\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001YB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0012J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u0012J\u000e\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0004J\u0018\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0004H\u0016J\u0006\u0010%\u001a\u00020\u0012J\u0016\u0010&\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010.\u001a\u00020\u0012J\u0016\u0010/\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0004J\u000e\u00101\u001a\u00020\u00122\u0006\u00102\u001a\u00020)J\u0019\u00103\u001a\u00020\u00122\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020605\u00a2\u0006\u0002\u00107J\u000e\u00108\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u00109\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0004J\u000e\u0010:\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010;\u001a\u00020\u0012J\u000e\u0010<\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010=\u001a\u00020\u0012J\u000e\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020)J\u0019\u0010@\u001a\u00020\u00122\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020605\u00a2\u0006\u0002\u00107J\u000e\u0010A\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0004J\u000e\u0010B\u001a\u00020\u00122\u0006\u00102\u001a\u00020)J\u000e\u0010C\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010D\u001a\u00020\u0012J\u000e\u0010E\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u0004J\u000e\u0010G\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010H\u001a\u00020\u00122\u0006\u0010I\u001a\u00020\u0004J\u000e\u0010J\u001a\u00020\u00122\u0006\u0010I\u001a\u00020\u0004J\u000e\u0010K\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010L\u001a\u00020\u0012J\u000e\u0010M\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010N\u001a\u00020\u00122\u0006\u0010O\u001a\u00020\u0006J\u000e\u0010P\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020)J\u000e\u0010Q\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020)J\u000e\u0010R\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020)J\u0016\u0010S\u001a\u00020\u00122\u0006\u0010T\u001a\u00020\u00042\u0006\u0010+\u001a\u00020UJ\u000e\u0010V\u001a\u00020\u00122\u0006\u0010W\u001a\u00020\u001aJ\u0006\u0010X\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010\u000f\u001a \u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Z"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/wss/RabbitEngine;",
        "LTaskEventReporter;",
        "()V",
        "TAG",
        "",
        "flutterService",
        "LTaskOperationDistributor;",
        "playedSeconds",
        "",
        "getPlayedSeconds",
        "()J",
        "setPlayedSeconds",
        "(J)V",
        "previousDurationSeconds",
        "",
        "printCallback",
        "Lkotlin/Function3;",
        "Lkotlin/Result;",
        "",
        "clearAllTask",
        "clearCover",
        "getTaskInfo",
        "task",
        "name",
        "onChargingStateChange",
        "isCharging",
        "",
        "sendActorShow",
        "json",
        "sendCancel",
        "taskIdArg",
        "sendClear",
        "sendDeviceLostEvent",
        "deviceLostInfo",
        "sendEvent",
        "eventName",
        "payload",
        "sendFoodDeliveryCardClose",
        "sendJsonPayload",
        "taskName",
        "results",
        "Lcom/alibaba/fastjson/JSONObject;",
        "sendLoginState",
        "state",
        "Ltech/rabbit/r1launcher/wss/LoginState;",
        "sendManualTask",
        "sendMusicCardClose",
        "sendMusicPlayerMessage",
        "messageName",
        "sendPhotoTask",
        "order",
        "sendProductSelection",
        "rideProducts",
        "",
        "Ltech/rabbit/r1launcher/models/RideProduct;",
        "([Ltech/rabbit/r1launcher/models/RideProduct;)V",
        "sendRabbitAddressPageShow",
        "sendRabbitIdleState",
        "sendRabbitState",
        "sendRecordingShow",
        "sendRideHistory",
        "sendRideShareCardClose",
        "sendRideStatus",
        "status",
        "sendRiderShareProductSelection",
        "sendServerStateInfo",
        "sendSimpleResultTask",
        "sendStockShow",
        "sendTTSFinish",
        "sendTTSShow",
        "text",
        "sendTranslatorEvent",
        "sendUpdateDropOffAddress",
        "address",
        "sendUpdatePickUpAddress",
        "sendUpdateTranslator",
        "sendVisionCardClose",
        "sendWeatherShow",
        "setup",
        "taskOperationDistributor",
        "showReceiptPage",
        "showRideStatus",
        "showRideTip",
        "syncPasscodeVerifyState",
        "moduleName",
        "Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;",
        "updateDeviceStatus",
        "isScreenOn",
        "updateLostMode",
        "PasscodeVerifyState",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

.field private static final TAG:Ljava/lang/String; = "RabbitEngine"

.field private static flutterService:LTaskOperationDistributor;

.field private static playedSeconds:J

.field private static previousDurationSeconds:I

.field private static final printCallback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    .line 57
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$printCallback$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$printCallback$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->printCallback:Lkotlin/jvm/functions/Function3;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFlutterService$p()LTaskOperationDistributor;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->flutterService:LTaskOperationDistributor;

    return-object v0
.end method

.method public static final synthetic access$getPrintCallback$p()Lkotlin/jvm/functions/Function3;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->printCallback:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method


# virtual methods
.method public final clearAllTask()V
    .locals 1

    .line 553
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/camera/CameraManager;->setNeedReopenCamera(Z)V

    .line 554
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$clearAllTask$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final clearCover()V
    .locals 0

    .line 180
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$clearCover$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$clearCover$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getPlayedSeconds()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->playedSeconds:J

    return-wide v0
.end method

.method public getTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->getTask()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 547
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final onChargingStateChange(Z)V
    .locals 0

    .line 562
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$onChargingStateChange$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$onChargingStateChange$1;-><init>(Z)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendActorShow(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendActorShow$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendActorShow$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendCancel(Ljava/lang/String;)V
    .locals 0

    const-string p0, "taskIdArg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendCancel$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendCancel$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendClear()V
    .locals 1

    .line 257
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    const-string v0, "{\"kernel\":{\"clear\":{}}}"

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    return-void
.end method

.method public final sendDeviceLostEvent(Ljava/lang/String;)V
    .locals 0

    const-string p0, "deviceLostInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendDeviceLostEvent$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendDeviceLostEvent$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string p0, "eventName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payload"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sendEvent(): "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RabbitEngine"

    invoke-static {v0, p0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->getTask()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 271
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->onFlutterEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p0, "sys.screen"

    .line 272
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "off"

    .line 274
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 275
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->startJudgeNeedScreenOff()V

    goto/16 :goto_0

    :cond_1
    const-string p0, "sys.suicide"

    .line 278
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 279
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 280
    sget-object p0, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p0}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 281
    :cond_2
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "sys.reset_acc"

    .line 282
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, ""

    .line 283
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/Constant;->saveLoginToken(Ljava/lang/String;)V

    .line 284
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendEvent$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$sendEvent$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    const-wide/16 p1, 0x12c

    invoke-static {p1, p2, p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    :cond_4
    const-string p0, "sys.go_settings_wireless"

    .line 289
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/high16 v0, 0x10000000

    if-eqz p0, :cond_5

    .line 290
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    sget-object p1, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p1}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string p0, "sys.go_settings_display"

    .line 294
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 295
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 297
    sget-object p1, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p1}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string p0, "sys.go_settings_sound"

    .line 299
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 300
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    sget-object p1, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p1}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string p0, "sys.go_settings_bluetooth"

    .line 304
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 305
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    sget-object p1, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p1}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string p0, "sys.go_settings_ime"

    .line 309
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 310
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    sget-object p1, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p1}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string p0, "sys.go_settings_date"

    .line 314
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 315
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.DATE_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    sget-object p1, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p1}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string p0, "sys.shutdown"

    .line 319
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "power"

    if-eqz v0, :cond_b

    .line 320
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :try_start_0
    const-string p0, "android.os.ServiceManager"

    .line 322
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "getService"

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    .line 323
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, p2, [Ljava/lang/Object;

    aput-object v2, p1, v1

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "android.os.IPowerManager$Stub"

    .line 325
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "asInterface"

    new-array v3, p2, [Ljava/lang/Class;

    .line 326
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 327
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "shutdown"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    .line 330
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, p2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 328
    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 334
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object v0, v2, p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    const-string p0, "sys.reboot"

    .line 339
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 340
    sget-object p0, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p0}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 341
    check-cast p0, Landroid/os/PowerManager;

    const-string p1, " "

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string p0, "sys.tts_mute"

    .line 344
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 345
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/rabbit/TTSPlayerState;->updateState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string p0, "user.send_text"

    .line 346
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "\"}}}"

    if-eqz p0, :cond_e

    .line 347
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "{\"kernel\":{\"userText\":{\"text\":\""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_e
    const-string p0, "camera.flip"

    .line 348
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "getBoolean(...)"

    if-eqz p0, :cond_f

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "camera.flip -> "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 350
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string p1, "cameraState"

    .line 351
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "isForce"

    .line 352
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 353
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "toLowerCase(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 354
    sget-object v0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-virtual {v0, p2, p0}, Ltech/rabbit/r1launcher/utils/CameraController;->isNeedRotate(ZZ)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 355
    sget-object p0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateWithName(Ljava/lang/String;)V

    .line 356
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->rotateWithName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string p0, "service.send"

    .line 358
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 359
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_10
    const-string p0, "ride_share.order_confirm"

    .line 360
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 361
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "{\"uber\": {\"selectProduct\": {\"id\": \""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_11
    const-string p0, "service.passcode_verify"

    .line 362
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 363
    sget-object p0, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p0}, Ltech/rabbit/common/utils/RabbitCommon;->getSWeakActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_18

    sget-object p1, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->Companion:Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;

    invoke-virtual {p1, p0, p2}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;->launch(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string p0, "food_delivery.order_confirm"

    .line 364
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 365
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    const-string p1, "{\"doorDash\": {\"placeOrder\": {}}}"

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_13
    const-string p0, "recording.stop"

    .line 366
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 367
    sget-object p0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->setNeedIntercept(Z)V

    .line 368
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->stopRecording()V

    goto/16 :goto_0

    :cond_14
    const-string p0, "translator.state"

    .line 369
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 370
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string p1, "status"

    .line 371
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 372
    sget-object p1, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->setTransaltor(Z)V

    goto :goto_0

    :cond_15
    const-string p0, "shake.enable"

    .line 373
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "enable"

    if-eqz p0, :cond_16

    .line 374
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 375
    invoke-static {}, Ltech/rabbit/common/utils/ShakeUtils;->getInstance()Ltech/rabbit/common/utils/ShakeUtils;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ltech/rabbit/common/utils/ShakeUtils;->setShakeEnable(Z)V

    goto :goto_0

    :cond_16
    const-string p0, "screenoff.enable"

    .line 376
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 377
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 378
    sget-object p1, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isHomePage(Z)V

    goto :goto_0

    :cond_17
    const-string p0, "addflag.screenon"

    .line 379
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 380
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 381
    sget-object p1, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->isHomePage(Z)V

    :cond_18
    :goto_0
    return-void
.end method

.method public final sendFoodDeliveryCardClose()V
    .locals 0

    .line 454
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendFoodDeliveryCardClose$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$sendFoodDeliveryCardClose$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendJsonPayload(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    const-string p0, "taskName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "results"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendJsonPayload$1;

    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendJsonPayload$1;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendLoginState(Ltech/rabbit/r1launcher/wss/LoginState;)V
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendLoginState$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendLoginState$1;-><init>(Ltech/rabbit/r1launcher/wss/LoginState;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendManualTask(Ljava/lang/String;)V
    .locals 0

    const-string p0, "payload"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendManualTask$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendManualTask$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendMusicCardClose()V
    .locals 0

    .line 464
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendMusicCardClose$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$sendMusicCardClose$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendMusicPlayerMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "messageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payload"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendMusicPlayerMessage$1;

    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendMusicPlayerMessage$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendPhotoTask(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    const-string p0, "order"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendPhotoTask$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendPhotoTask$1;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendProductSelection([Ltech/rabbit/r1launcher/models/RideProduct;)V
    .locals 0

    const-string p0, "rideProducts"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendProductSelection$1;-><init>([Ltech/rabbit/r1launcher/models/RideProduct;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRabbitAddressPageShow(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRabbitAddressPageShow$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRabbitAddressPageShow$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRabbitIdleState(Ljava/lang/String;)V
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRabbitIdleState$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRabbitIdleState$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRabbitState(Ljava/lang/String;)V
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRabbitState$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRabbitState$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRecordingShow()V
    .locals 1

    .line 142
    sget-object p0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/constant/EventInterceptor;->setNeedIntercept(Z)V

    .line 143
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->startRecording()V

    .line 144
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRecordingShow$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRecordingShow$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRideHistory(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRideHistory$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRideHistory$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRideShareCardClose()V
    .locals 0

    .line 444
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRideShareCardClose$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRideShareCardClose$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRideStatus(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    const-string p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRideStatus$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRideStatus$1;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendRiderShareProductSelection([Ltech/rabbit/r1launcher/models/RideProduct;)V
    .locals 0

    const-string p0, "rideProducts"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRiderShareProductSelection$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendRiderShareProductSelection$1;-><init>([Ltech/rabbit/r1launcher/models/RideProduct;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendServerStateInfo(Ljava/lang/String;)V
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendServerStateInfo$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendServerStateInfo$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendSimpleResultTask(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    const-string p0, "order"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendSimpleResultTask$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendSimpleResultTask$1;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendStockShow(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendStockShow$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendStockShow$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendTTSFinish()V
    .locals 0

    .line 74
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendTTSFinish$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$sendTTSFinish$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendTTSShow(Ljava/lang/String;)V
    .locals 0

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendTTSShow$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendTTSShow$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendTranslatorEvent(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendTranslatorEvent$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendTranslatorEvent$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendUpdateDropOffAddress(Ljava/lang/String;)V
    .locals 2

    const-string p0, "address"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateDropOffAddress$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendUpdatePickUpAddress(Ljava/lang/String;)V
    .locals 2

    const-string p0, "address"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdatePickUpAddress$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdatePickUpAddress$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendUpdateTranslator(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateTranslator$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendUpdateTranslator$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendVisionCardClose()V
    .locals 1

    .line 474
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/camera/CameraManager;->setNeedReopenCamera(Z)V

    .line 475
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendVisionCardClose$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$sendVisionCardClose$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendWeatherShow(Ljava/lang/String;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendWeatherShow$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$sendWeatherShow$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setPlayedSeconds(J)V
    .locals 0

    sput-wide p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->playedSeconds:J

    return-void
.end method

.method public final setup(LTaskOperationDistributor;)V
    .locals 0

    const-string p0, "taskOperationDistributor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->flutterService:LTaskOperationDistributor;

    return-void
.end method

.method public final showReceiptPage(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$showReceiptPage$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$showReceiptPage$1;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final showRideStatus(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$showRideStatus$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$showRideStatus$1;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final showRideTip(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$showRideTip$1;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine$showRideTip$1;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final syncPasscodeVerifyState(Ljava/lang/String;Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;)V
    .locals 0

    const-string p0, "moduleName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    new-instance p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;

    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine$syncPasscodeVerifyState$1;-><init>(Ljava/lang/String;Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final updateDeviceStatus(Z)V
    .locals 2

    .line 386
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"screen\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "statusUpdate"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 387
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 386
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 391
    sget-object p1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toJSONString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    return-void
.end method

.method public final updateLostMode()V
    .locals 0

    .line 188
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$updateLostMode$1;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine$updateLostMode$1;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
