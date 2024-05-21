.class public final Ltech/rabbit/r1launcher/RLApp;
.super Landroid/app/Application;
.source "RLApp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/RLApp;",
        "Landroid/app/Application;",
        "()V",
        "getAppVersion",
        "",
        "getOSFingerprint",
        "onCreate",
        "",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private final getAppVersion()Ljava/lang/String;
    .locals 2

    .line 38
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/RLApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/RLApp;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 40
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v0, "versionName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getOSFingerprint()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v0, "FINGERPRINT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startUp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v1}, LAppConfig;->getVersionBrief()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r1Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, LAppConfig;->setAppContext(Landroid/content/Context;)V

    .line 21
    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->setDeviceId(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/RLApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time_zone"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 25
    sget-object v0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    const-string v2, "wss://r1-api.rabbit.tech/session"

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->setRabbitServiceUrl(Ljava/lang/String;)V

    .line 26
    sget-object v0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    sget-object v2, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v2}, LAppConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->setDeviceId(Ljava/lang/String;)V

    .line 27
    sget-object v0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/RLApp;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->setAppVersion(Ljava/lang/String;)V

    .line 28
    sget-object v0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/RLApp;->getOSFingerprint()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->setOsVersion(Ljava/lang/String;)V

    .line 30
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServices;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServices;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/RabbitServices;->setup()V

    .line 32
    sget-object p0, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p0, v1}, Ltech/rabbit/common/utils/RabbitCommon;->setSContext(Landroid/content/Context;)V

    .line 33
    invoke-static {v1}, Lorg/mediasoup/droid/MediasoupClient;->initialize(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object p0

    iput-object v1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mContext:Landroid/content/Context;

    return-void
.end method
