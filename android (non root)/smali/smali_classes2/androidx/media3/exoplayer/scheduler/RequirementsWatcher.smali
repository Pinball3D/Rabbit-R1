.class public final Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;
.super Ljava/lang/Object;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;,
        Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$Listener;,
        Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final listener:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$Listener;

.field private networkCallback:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

.field private notMetRequirements:I

.field private receiver:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

.field private final requirements:Landroidx/media3/exoplayer/scheduler/Requirements;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$Listener;Landroidx/media3/exoplayer/scheduler/Requirements;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->listener:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$Listener;

    iput-object p3, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 77
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->checkRequirements()V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->networkCallback:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->recheckNotMetNetworkRequirements()V

    return-void
.end method

.method private checkRequirements()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    .line 150
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->notMetRequirements:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->notMetRequirements:I

    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->listener:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$Listener;

    .line 153
    invoke-interface {v1, p0, v0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$Listener;->onRequirementsStateChanged(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;I)V

    :cond_0
    return-void
.end method

.method private recheckNotMetNetworkRequirements()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->notMetRequirements:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->checkRequirements()V

    return-void
.end method

.method private registerNetworkCallbackV24()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 136
    new-instance v1, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;-><init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$1;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->networkCallback:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    .line 137
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private unregisterNetworkCallbackV24()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->networkCallback:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    .line 144
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->networkCallback:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    return-void
.end method


# virtual methods
.method public getRequirements()Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    return-object p0
.end method

.method public start()I
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    .line 87
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->notMetRequirements:I

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 90
    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isNetworkRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 92
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->registerNetworkCallbackV24()V

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 97
    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isChargingRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 101
    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isIdleRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->requirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 109
    invoke-virtual {v1}, Landroidx/media3/exoplayer/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    :cond_5
    new-instance v1, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;-><init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$1;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->receiver:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    iget-object v3, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    .line 114
    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget p0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->notMetRequirements:I

    return p0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->receiver:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 120
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->receiver:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 122
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->networkCallback:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->unregisterNetworkCallbackV24()V

    :cond_0
    return-void
.end method
