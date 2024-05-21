.class public Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;
.super Ljava/lang/Object;
.source "WssStateMonitor.java"


# static fields
.field public static final MSG_WHAT_RECONNECT:I

.field static sInstance:Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor$1;-><init>(Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;
    .locals 2

    sget-object v0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->sInstance:Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    if-nez v0, :cond_1

    const-class v0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    .line 19
    monitor-enter v0

    :try_start_0
    sget-object v1, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->sInstance:Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;-><init>()V

    sput-object v1, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->sInstance:Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->sInstance:Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    return-object v0
.end method


# virtual methods
.method public startConnect()V
    .locals 4

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    .line 39
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
