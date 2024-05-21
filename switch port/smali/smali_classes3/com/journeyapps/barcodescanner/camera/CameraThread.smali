.class Lcom/journeyapps/barcodescanner/camera/CameraThread;
.super Ljava/lang/Object;
.source "CameraThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field private static instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private openCount:I

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private checkRunning()V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 64
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    if-lez v1, :cond_0

    .line 69
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 70
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraThread is not open"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;-><init>()V

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    :cond_0
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object v0
.end method

.method private quit()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 80
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 81
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected decrementInstances()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 91
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    if-nez v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->quit()V

    .line 96
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected enqueue(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->checkRunning()V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected enqueueDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->checkRunning()V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected incrementAndEnqueue(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 105
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 107
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
