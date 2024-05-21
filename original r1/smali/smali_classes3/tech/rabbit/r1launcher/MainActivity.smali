.class public final Ltech/rabbit/r1launcher/MainActivity;
.super Lio/flutter/embedding/android/FlutterActivity;
.source "MainActivity.kt"

# interfaces
.implements LDeviceControl;
.implements Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;
.implements Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;
.implements Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ntech/rabbit/r1launcher/MainActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,570:1\n1#2:571\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010&\u001a\u00020\u0019H\u0016J\u000e\u0010\'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\u0017J\u0006\u0010)\u001a\u00020\u0019J\u0008\u0010*\u001a\u00020\u0019H\u0002J\u0010\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020-H\u0016J\u0008\u0010.\u001a\u00020\u0019H\u0016J\u0008\u0010/\u001a\u00020\u0019H\u0016J\u0008\u00100\u001a\u00020\u000cH\u0016J\u0008\u00101\u001a\u00020\u0014H\u0016J\u0008\u00102\u001a\u000203H\u0016J\u0008\u00104\u001a\u000203H\u0016J\u0008\u00105\u001a\u00020\u0019H\u0016J\u0012\u00106\u001a\u00020\u00192\u0008\u00107\u001a\u0004\u0018\u000108H\u0014J\u0008\u00109\u001a\u00020\u0019H\u0014J\u0008\u0010:\u001a\u00020\u0019H\u0016J\u001a\u0010;\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020#2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u001a\u0010?\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020#2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u0008\u0010@\u001a\u00020\u0019H\u0014J\u0008\u0010A\u001a\u00020\u0019H\u0014J\u0008\u0010B\u001a\u00020\u0019H\u0016J\u0008\u0010C\u001a\u00020\u0019H\u0016J\u0008\u0010D\u001a\u00020\u0019H\u0016J\u0010\u0010E\u001a\u00020\u00192\u0006\u0010F\u001a\u00020GH\u0016J\u0008\u0010H\u001a\u00020\u0019H\u0014J\u0008\u0010I\u001a\u00020\u0019H\u0014J\u0008\u0010J\u001a\u00020\u0019H\u0016J\u0010\u0010K\u001a\u00020\u00192\u0006\u0010L\u001a\u00020MH\u0002J\u0010\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u0014H\u0016J\u0012\u0010P\u001a\u00020\u00192\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0012\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0015\u001a\u001a\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00190\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006S"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/MainActivity;",
        "Lio/flutter/embedding/android/FlutterActivity;",
        "LDeviceControl;",
        "Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;",
        "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;",
        "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;",
        "()V",
        "batteryChargingStateBroadcastReceiver",
        "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;",
        "deviceEvents",
        "LDeviceEventsDispatcher;",
        "hasInit",
        "",
        "value",
        "isCharging",
        "setCharging",
        "(Z)V",
        "isRotationEnabled",
        "setRotationEnabled",
        "lastShakeTime",
        "",
        "listener",
        "Lkotlin/Function3;",
        "Landroid/content/Context;",
        "Landroid/bluetooth/BluetoothDevice;",
        "",
        "orientationListener",
        "Landroid/view/OrientationEventListener;",
        "rotationMessageHandler",
        "Landroid/os/Handler;",
        "runnable",
        "Ljava/lang/Runnable;",
        "screenBroadcastReceiver",
        "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;",
        "shakeThreshold",
        "",
        "taskOperationDistributor",
        "LTaskOperationDistributor;",
        "addScreenOnFlag",
        "checkNetworkConnection",
        "context",
        "checkPermissions",
        "checkUpdate",
        "configureFlutterEngine",
        "flutterEngine",
        "Lio/flutter/embedding/engine/FlutterEngine;",
        "disableRotation",
        "enableRotation",
        "getBatteryChargingState",
        "getBatteryLevel",
        "getVersion",
        "",
        "getVersionBrief",
        "onCharging",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onDisCharging",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onPause",
        "onResume",
        "onScreenOff",
        "onScreenOn",
        "onScreenUnlock",
        "onShake",
        "speed",
        "",
        "onStart",
        "onStop",
        "removeScreenOnFlag",
        "setDartMessenger",
        "binaryMessenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "setVolume",
        "level",
        "startUpdateActivity",
        "config",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private batteryChargingStateBroadcastReceiver:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;

.field private deviceEvents:LDeviceEventsDispatcher;

.field private hasInit:Z

.field private isCharging:Z

.field private isRotationEnabled:Z

.field private lastShakeTime:J

.field private final listener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private orientationListener:Landroid/view/OrientationEventListener;

.field private final rotationMessageHandler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;

.field private screenBroadcastReceiver:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;

.field private final shakeThreshold:I

.field private taskOperationDistributor:LTaskOperationDistributor;


# direct methods
.method public static synthetic $r8$lambda$5WU16lI156ZsydmD1akJ5k4mM40(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/MainActivity;->checkNetworkConnection$lambda$3(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8IefBLYNoY5RbDdwJWsjHF54gBM(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/MainActivity;->onCreate$lambda$1(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E6LgL6xmcs1Si2OYcVw9cZmI-XQ()V
    .locals 0

    invoke-static {}, Ltech/rabbit/r1launcher/MainActivity;->runnable$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Ltech/rabbit/r1launcher/MainActivity;->shakeThreshold:I

    .line 88
    sget-object v0, Ltech/rabbit/r1launcher/MainActivity$listener$1;->INSTANCE:Ltech/rabbit/r1launcher/MainActivity$listener$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Ltech/rabbit/r1launcher/MainActivity;->listener:Lkotlin/jvm/functions/Function3;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/MainActivity;->rotationMessageHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Ltech/rabbit/r1launcher/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/MainActivity$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/MainActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getDeviceEvents$p(Ltech/rabbit/r1launcher/MainActivity;)LDeviceEventsDispatcher;
    .locals 0

    .line 74
    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->deviceEvents:LDeviceEventsDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getRotationMessageHandler$p(Ltech/rabbit/r1launcher/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->rotationMessageHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getRunnable$p(Ltech/rabbit/r1launcher/MainActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isRotationEnabled$p(Ltech/rabbit/r1launcher/MainActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Ltech/rabbit/r1launcher/MainActivity;->isRotationEnabled:Z

    return p0
.end method

.method public static final synthetic access$setRunnable$p(Ltech/rabbit/r1launcher/MainActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 74
    iput-object p1, p0, Ltech/rabbit/r1launcher/MainActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$startUpdateActivity(Ltech/rabbit/r1launcher/MainActivity;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/MainActivity;->startUpdateActivity(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method

.method private static final checkNetworkConnection$lambda$3(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 480
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSampleRate(Ljava/lang/Double;)V

    return-void
.end method

.method private final checkUpdate()V
    .locals 3

    .line 542
    sget-object v0, LUpdateHelper;->INSTANCE:LUpdateHelper;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ltech/rabbit/r1launcher/MainActivity$checkUpdate$1;

    invoke-direct {v2, p0}, Ltech/rabbit/r1launcher/MainActivity$checkUpdate$1;-><init>(Ltech/rabbit/r1launcher/MainActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, LUpdateHelper;->triggerOnceCheckInSubThread(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final onCreate$lambda$1(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const-string v0, "$windowInsetsController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private static final runnable$lambda$0()V
    .locals 0

    return-void
.end method

.method private final setCharging(Z)V
    .locals 0

    .line 520
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->onChargingStateChange(Z)V

    return-void
.end method

.method private final setDartMessenger(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ltech/rabbit/r1launcher/MainActivityKt;->access$setGlobalBinaryMessenger$p(Ljava/lang/ref/WeakReference;)V

    .line 244
    new-instance v0, LDeviceEventsDispatcher;

    invoke-direct {v0, p1}, LDeviceEventsDispatcher;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/MainActivity;->deviceEvents:LDeviceEventsDispatcher;

    .line 245
    new-instance v0, LTaskOperationDistributor;

    invoke-direct {v0, p1}, LTaskOperationDistributor;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/MainActivity;->taskOperationDistributor:LTaskOperationDistributor;

    .line 247
    sget-object v0, LTaskEventReporter;->Companion:LTaskEventReporter$Companion;

    sget-object v1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    check-cast v1, LTaskEventReporter;

    invoke-virtual {v0, p1, v1}, LTaskEventReporter$Companion;->setUp(Lio/flutter/plugin/common/BinaryMessenger;LTaskEventReporter;)V

    .line 248
    sget-object v0, LDeviceControl;->Companion:LDeviceControl$Companion;

    move-object v1, p0

    check-cast v1, LDeviceControl;

    invoke-virtual {v0, p1, v1}, LDeviceControl$Companion;->setUp(Lio/flutter/plugin/common/BinaryMessenger;LDeviceControl;)V

    .line 250
    sget-object p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    iget-object v0, p0, Ltech/rabbit/r1launcher/MainActivity;->taskOperationDistributor:LTaskOperationDistributor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "taskOperationDistributor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->setup(LTaskOperationDistributor;)V

    .line 251
    sget-object p1, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->deviceEvents:LDeviceEventsDispatcher;

    if-nez p0, :cond_1

    const-string p0, "deviceEvents"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {p1, v1}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->setup(LDeviceEventsDispatcher;)V

    return-void
.end method

.method private final setRotationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/MainActivity;->isRotationEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/MainActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private final startUpdateActivity(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 2

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tech.rabbit.r1launcher.action.UPDATE_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 535
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "update_config"

    .line 536
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 537
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ltech/rabbit/r1launcher/MainActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public addScreenOnFlag()V
    .locals 1

    .line 291
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public final checkNetworkConnection(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity"

    .line 469
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 470
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Ltech/rabbit/r1launcher/MainActivity;->hasInit:Z

    if-nez p1, :cond_1

    .line 479
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    new-instance v0, Ltech/rabbit/r1launcher/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/MainActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 482
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object v0

    iput-object p1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mContext:Landroid/content/Context;

    .line 483
    sget-object p1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;

    check-cast v0, Ltech/rabbit/r1launcher/wss/RWebSocketListener;

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->addMessageListener(Ltech/rabbit/r1launcher/wss/RWebSocketListener;)V

    .line 484
    sget-object p1, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/rabbit/VoiceRecorder;->init(Landroid/app/Activity;)V

    .line 485
    invoke-direct {p0}, Ltech/rabbit/r1launcher/MainActivity;->checkUpdate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/MainActivity;->hasInit:Z

    .line 488
    :cond_1
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->connect()V

    goto :goto_1

    .line 473
    :cond_2
    :goto_0
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    sget-object v1, Ltech/rabbit/r1launcher/wss/LoginState;->NoNetwork:Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendLoginState(Ltech/rabbit/r1launcher/wss/LoginState;)V

    .line 474
    new-instance v0, Ltech/rabbit/r1launcher/MainActivity$checkNetworkConnection$1;

    invoke-direct {v0, p0, p1}, Ltech/rabbit/r1launcher/MainActivity$checkNetworkConnection$1;-><init>(Ltech/rabbit/r1launcher/MainActivity;Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 p0, 0x3e8

    invoke-static {p0, p1, v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    .line 490
    :goto_1
    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->getLostMode()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    .line 491
    :cond_3
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->updateLostMode()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final checkPermissions()V
    .locals 22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.NEARBY_WIFI_DEVICES"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission.RECORD_AUDIO"

    const/4 v6, 0x1

    if-lt v0, v1, :cond_1

    .line 323
    move-object/from16 v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 322
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 326
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 330
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.BLUETOOTH"

    .line 340
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 344
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    .line 348
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 351
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 355
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    .line 371
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.NETWORK_SETTINGS"

    .line 376
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.NETWORK_STACK"

    .line 381
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.NETWORK_SETUP_WIZARD"

    .line 386
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    :cond_0
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v7, "android.permission.READ_MEDIA_IMAGES"

    const-string v8, "android.permission.READ_MEDIA_VIDEO"

    const-string v9, "android.permission.READ_MEDIA_AUDIO"

    const-string v10, "android.permission.RECORD_AUDIO"

    const-string v11, "android.permission.BLUETOOTH"

    const-string v12, "android.permission.BLUETOOTH_CONNECT"

    const-string v13, "android.permission.BLUETOOTH_ADMIN"

    const-string v14, "android.permission.BLUETOOTH_SCAN"

    const-string v15, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v16, "android.permission.ACCESS_FINE_LOCATION"

    const-string v17, "android.permission.NEARBY_WIFI_DEVICES"

    const-string v18, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v19, "android.permission.NETWORK_STACK"

    const-string v20, "android.permission.NETWORK_SETTINGS"

    const-string v21, "android.permission.NETWORK_SETUP_WIZARD"

    .line 411
    filled-new-array/range {v7 .. v21}, [Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1, v6}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 419
    :cond_1
    move-object/from16 v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 418
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 422
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 426
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 430
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 434
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    :cond_2
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v9, "android.permission.RECORD_AUDIO"

    const-string v10, "android.permission.RECORD_AUDIO"

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v12, "android.permission.ACCESS_FINE_LOCATION"

    const-string v13, "android.permission.NEARBY_WIFI_DEVICES"

    .line 453
    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v0, v1, v6}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 5

    const-string v0, "flutterEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 219
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 222
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->getRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v2

    .line 226
    sget-object v3, Ltech/rabbit/r1launcher/platform_views/VideoCallPageFactory;->INSTANCE:Ltech/rabbit/r1launcher/platform_views/VideoCallPageFactory;

    check-cast v3, Lio/flutter/plugin/platform/PlatformViewFactory;

    const-string v4, "platform/VideoCallPage"

    .line 224
    invoke-interface {v2, v4, v3}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 229
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->getRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v2

    .line 233
    sget-object v3, Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;->INSTANCE:Ltech/rabbit/r1launcher/platform_views/CameraPreviewViewFactory;

    check-cast v3, Lio/flutter/plugin/platform/PlatformViewFactory;

    const-string v4, "platform/CameraPreviewView"

    .line 231
    invoke-interface {v2, v4, v3}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 236
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v2, "getBinaryMessenger(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/MainActivity;->setDartMessenger(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "configureFlutterEngine cost: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MainActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableRotation()V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/MainActivity;->setRotationEnabled(Z)V

    return-void
.end method

.method public enableRotation()V
    .locals 1

    const/4 v0, 0x1

    .line 283
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/MainActivity;->setRotationEnabled(Z)V

    return-void
.end method

.method public getBatteryChargingState()Z
    .locals 0

    .line 279
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt;->isCharging(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getBatteryLevel()J
    .locals 2

    .line 275
    invoke-static {}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt;->batteryLevel()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "20240418.0-5-g4fd1bbff-dirty"

    return-object p0
.end method

.method public getVersionBrief()Ljava/lang/String;
    .locals 1

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->getVersionBrief()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCharging()V
    .locals 1

    const/4 v0, 0x1

    .line 529
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/MainActivity;->setCharging(Z)V

    const-string p0, "BatteryBroadcastReceive:"

    const-string v0, "battery\uff1aCharging..."

    .line 530
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1, p1}, Ltech/rabbit/r1launcher/MainActivity;->overridePendingTransition(II)V

    .line 122
    sget-object v2, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ltech/rabbit/common/utils/RabbitCommon;->setSWeakActivity(Landroid/app/Activity;)V

    .line 125
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    const-string v3, "getInsetsController(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 126
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 129
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Ltech/rabbit/r1launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Ltech/rabbit/r1launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/WindowInsetsControllerCompat;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 133
    sget-object v2, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Ltech/rabbit/r1launcher/utils/CameraController;->isNeedRotate(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    sget-object v2, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateToPrivacy()V

    .line 136
    :cond_0
    sget-object v2, Ltech/rabbit/r1launcher/rabbit/RabbitServices;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServices;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/rabbit/RabbitServices;->setup()V

    .line 137
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->checkPermissions()V

    .line 139
    sget-object v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->initMonitor(Landroid/content/Context;)V

    .line 140
    sget-object v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object v4, p0, Ltech/rabbit/r1launcher/MainActivity;->listener:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v2, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->addOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V

    .line 141
    sget-object v2, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->Companion:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;

    move-object v4, p0

    check-cast v4, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;

    invoke-virtual {v2, v3, v4}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;)Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;

    move-result-object v2

    iput-object v2, p0, Ltech/rabbit/r1launcher/MainActivity;->screenBroadcastReceiver:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;

    .line 142
    sget-object v2, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;->Companion:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;

    move-object v4, p0

    check-cast v4, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;

    invoke-virtual {v2, v3, v4}, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;)Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;

    move-result-object v2

    iput-object v2, p0, Ltech/rabbit/r1launcher/MainActivity;->batteryChargingStateBroadcastReceiver:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;

    .line 144
    invoke-static {}, Ltech/rabbit/common/utils/ShakeUtils;->getInstance()Ltech/rabbit/common/utils/ShakeUtils;

    move-result-object v2

    invoke-virtual {v2, v3}, Ltech/rabbit/common/utils/ShakeUtils;->setup(Landroid/content/Context;)V

    .line 145
    sget-object v2, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->requestLocationDuringDeviceInit()V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onCreate cost: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/MainActivity;->setRotationEnabled(Z)V

    .line 152
    new-instance p1, Ltech/rabbit/r1launcher/RBOrientationListener;

    new-instance v0, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/MainActivity$onCreate$2;-><init>(Ltech/rabbit/r1launcher/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v3, v0}, Ltech/rabbit/r1launcher/RBOrientationListener;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroid/view/OrientationEventListener;

    iput-object p1, p0, Ltech/rabbit/r1launcher/MainActivity;->orientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 163
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onDestroy()V

    .line 164
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/MainActivity;->listener:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->removeOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V

    .line 165
    sget-object v0, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;->Companion:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Ltech/rabbit/r1launcher/MainActivity;->screenBroadcastReceiver:Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "screenBroadcastReceiver"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v0, v1, v2}, Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;->unregister(Landroid/content/Context;Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;)V

    .line 166
    sget-object v0, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;->Companion:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;

    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->batteryChargingStateBroadcastReceiver:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;

    if-nez p0, :cond_1

    const-string p0, "batteryChargingStateBroadcastReceiver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_1
    invoke-virtual {v0, v1, p0}, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;->unregister(Landroid/content/Context;Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;)V

    .line 168
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->disconnect()V

    .line 169
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object p0

    iput-object v3, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDisCharging()V
    .locals 1

    const/4 v0, 0x0

    .line 524
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/MainActivity;->setCharging(Z)V

    const-string p0, "BatteryBroadcastReceive:"

    const-string v0, "battery\uff1anoCharging..."

    .line 525
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 255
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 259
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/rabbit/KeyEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 1

    .line 198
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onPause()V

    .line 199
    invoke-static {}, Ltech/rabbit/common/utils/ShakeUtils;->getInstance()Ltech/rabbit/common/utils/ShakeUtils;

    move-result-object v0

    check-cast p0, Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;

    invoke-virtual {v0, p0}, Ltech/rabbit/common/utils/ShakeUtils;->unBindShakeListener(Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;)V

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onPause "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->getVersionBrief()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 173
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onResume()V

    .line 174
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 175
    invoke-static {}, Ltech/rabbit/common/utils/ShakeUtils;->getInstance()Ltech/rabbit/common/utils/ShakeUtils;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;

    invoke-virtual {v0, v1}, Ltech/rabbit/common/utils/ShakeUtils;->bindShakeListener(Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;)V

    .line 178
    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->isEnabledTerminal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/MainActivity;->setRequestedOrientation(I)V

    .line 182
    :cond_0
    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->hasPasscode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->hasLoginToken()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/MainActivity;->checkNetworkConnection(Landroid/content/Context;)V

    goto :goto_1

    .line 183
    :cond_2
    :goto_0
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->Companion:Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;->launch(Landroid/app/Activity;)V

    .line 191
    :goto_1
    invoke-static {}, Ltech/rabbit/r1launcher/MainActivityKt;->access$getGlobalBinaryMessenger$p()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 192
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/MainActivity;->setDartMessenger(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 194
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onResume "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->getVersionBrief()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenOff()V
    .locals 3

    .line 506
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->updateDeviceStatus(Z)V

    const-string v0, "MainActivity"

    const-string v2, "onScreenOff: "

    .line 507
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v0, Ltech/rabbit/r1launcher/wss/WebSocketValve;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketValve;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/wss/WebSocketValve;->onScreenOff(Landroid/content/Context;)V

    .line 509
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->stop()V

    .line 510
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->setScreenOn(Z)V

    return-void
.end method

.method public onScreenOn()V
    .locals 3

    .line 496
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->updateDeviceStatus(Z)V

    .line 497
    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->hasPasscode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->hasLoginToken()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0}, Ltech/rabbit/r1launcher/MainActivity;->checkUpdate()V

    :cond_0
    const-string v0, "MainActivity"

    const-string v2, "onScreenOn: "

    .line 500
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v0, Ltech/rabbit/r1launcher/wss/WebSocketValve;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketValve;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/wss/WebSocketValve;->onScreenOn(Landroid/content/Context;)V

    .line 502
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;

    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;->setScreenOn(Z)V

    return-void
.end method

.method public onScreenUnlock()V
    .locals 0

    return-void
.end method

.method public onShake(D)V
    .locals 6

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/r1launcher/MainActivity;->lastShakeTime:J

    sub-long v2, v0, v2

    iget v4, p0, Ltech/rabbit/r1launcher/MainActivity;->shakeThreshold:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 302
    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->getLostMode()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    sget-object v2, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->Companion:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;->launch(Landroid/app/Activity;)V

    goto :goto_1

    .line 303
    :cond_1
    :goto_0
    sget-object v2, Ltech/rabbit/r1launcher/settings/Settings2Activity;->Companion:Ltech/rabbit/r1launcher/settings/Settings2Activity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/settings/Settings2Activity$Companion;->launch(Landroid/app/Activity;)V

    :cond_2
    :goto_1
    iput-wide v0, p0, Ltech/rabbit/r1launcher/MainActivity;->lastShakeTime:J

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onShake: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainActivity"

    invoke-static {p2, p1}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->deviceEvents:LDeviceEventsDispatcher;

    if-nez p0, :cond_3

    const-string p0, "deviceEvents"

    .line 310
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3
    sget-object p1, Ltech/rabbit/r1launcher/MainActivity$onShake$1;->INSTANCE:Ltech/rabbit/r1launcher/MainActivity$onShake$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, LDeviceEventsDispatcher;->onShake(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 204
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onStart()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->orientationListener:Landroid/view/OrientationEventListener;

    if-nez p0, :cond_0

    const-string p0, "orientationListener"

    .line 206
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onStart "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->getVersionBrief()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 211
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onStop()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/MainActivity;->orientationListener:Landroid/view/OrientationEventListener;

    if-nez p0, :cond_0

    const-string p0, "orientationListener"

    .line 213
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onStop "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->getVersionBrief()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeScreenOnFlag()V
    .locals 1

    .line 295
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public setVolume(J)V
    .locals 1

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setVolume: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MainActivity"

    invoke-static {p1, p0}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
