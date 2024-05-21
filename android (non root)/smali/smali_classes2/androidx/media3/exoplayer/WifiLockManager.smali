.class final Landroidx/media3/exoplayer/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLockManager"

.field private static final WIFI_LOCK_TAG:Ljava/lang/String; = "ExoPlayer:WifiLockManager"


# instance fields
.field private enabled:Z

.field private stayAwake:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Landroidx/media3/exoplayer/WifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private updateWifiLock()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/WifiLockManager;->enabled:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/WifiLockManager;->stayAwake:Z

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :goto_0
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/WifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "WifiLockManager"

    const-string p1, "WifiManager is null, therefore not creating the WifiLock."

    .line 58
    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    const-string v2, "ExoPlayer:WifiLockManager"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :cond_1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/WifiLockManager;->enabled:Z

    .line 66
    invoke-direct {p0}, Landroidx/media3/exoplayer/WifiLockManager;->updateWifiLock()V

    return-void
.end method

.method public setStayAwake(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/WifiLockManager;->stayAwake:Z

    .line 80
    invoke-direct {p0}, Landroidx/media3/exoplayer/WifiLockManager;->updateWifiLock()V

    return-void
.end method
