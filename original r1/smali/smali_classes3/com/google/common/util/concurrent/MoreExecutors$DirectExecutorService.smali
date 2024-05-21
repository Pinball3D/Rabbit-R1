.class final Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;
.super Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private runningTasks:I

.field private shutdown:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;-><init>()V

    return-void
.end method

.method private endTask()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 333
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 338
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

.method private startTask()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 323
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 328
    monitor-exit v0

    return-void

    .line 325
    :cond_0
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Executor already shutdown"

    invoke-direct {p0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 301
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 302
    monitor-enter p3

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v0, :cond_0

    .line 305
    monitor-exit p3

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 307
    monitor-exit p3

    const/4 p0, 0x0

    return p0

    .line 309
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 310
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long/2addr p1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 314
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->startTask()V

    .line 262
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 265
    throw p1
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 270
    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    .line 271
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isTerminated()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 294
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 295
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 277
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 282
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

.method public shutdownNow()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown()V

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
