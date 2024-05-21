.class public Ltech/rabbit/common/utils/ToastManager;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field static sInstance:Ltech/rabbit/common/utils/ToastManager;


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltech/rabbit/common/utils/ToastManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Ltech/rabbit/common/utils/ToastManager;
    .locals 2

    sget-object v0, Ltech/rabbit/common/utils/ToastManager;->sInstance:Ltech/rabbit/common/utils/ToastManager;

    if-nez v0, :cond_1

    const-class v0, Ltech/rabbit/common/utils/ToastManager;

    .line 13
    monitor-enter v0

    :try_start_0
    sget-object v1, Ltech/rabbit/common/utils/ToastManager;->sInstance:Ltech/rabbit/common/utils/ToastManager;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Ltech/rabbit/common/utils/ToastManager;

    invoke-direct {v1}, Ltech/rabbit/common/utils/ToastManager;-><init>()V

    sput-object v1, Ltech/rabbit/common/utils/ToastManager;->sInstance:Ltech/rabbit/common/utils/ToastManager;

    .line 17
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
    sget-object v0, Ltech/rabbit/common/utils/ToastManager;->sInstance:Ltech/rabbit/common/utils/ToastManager;

    return-object v0
.end method


# virtual methods
.method public show(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/common/utils/ToastManager;->handler:Landroid/os/Handler;

    .line 23
    new-instance v1, Ltech/rabbit/common/utils/ToastManager$1;

    invoke-direct {v1, p0, p1}, Ltech/rabbit/common/utils/ToastManager$1;-><init>(Ltech/rabbit/common/utils/ToastManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
