.class final Landroidx/media3/exoplayer/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media3/exoplayer/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MSG_FATAL_ERROR:I = 0x3

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_IO_EXCEPTION:I = 0x2

.field private static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private executorThread:Ljava/lang/Thread;

.field private final loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Landroidx/media3/exoplayer/upstream/Loader;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Loader;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    .line 346
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    iput-object p4, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    iput p5, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    iput-wide p6, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    return-void
.end method

.method private execute()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    .line 512
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader;->access$500(Landroidx/media3/exoplayer/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/Loader;->access$100(Landroidx/media3/exoplayer/upstream/Loader;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    const/4 v0, 0x0

    .line 516
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->access$102(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/upstream/Loader$LoadTask;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    return-void
.end method

.method private getRetryDelayMillis()J
    .locals 2

    iget p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x1388

    .line 520
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 8

    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 372
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    .line 375
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->removeMessages(I)V

    if-nez p1, :cond_2

    .line 377
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 381
    :cond_0
    monitor-enter p0

    :try_start_0
    iput-boolean v3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    .line 383
    invoke-interface {v1}, Landroidx/media3/exoplayer/upstream/Loader$Loadable;->cancelLoad()V

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 388
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 391
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->finish()V

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    .line 393
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/upstream/Loader$Callback;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    iget-wide v5, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 394
    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 388
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 463
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->execute()V

    return-void

    .line 466
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 469
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->finish()V

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v4, v2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->callback:Landroidx/media3/exoplayer/upstream/Loader$Callback;

    .line 472
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/upstream/Loader$Callback;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    const/4 v8, 0x0

    .line 474
    invoke-interface/range {v2 .. v8}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V

    return-void

    .line 477
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_7

    const/4 v11, 0x2

    if-eq v0, v11, :cond_3

    goto :goto_1

    .line 488
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    iget p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    .line 491
    invoke-interface/range {v2 .. v9}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    .line 492
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 493
    invoke-static {p1, p0}, Landroidx/media3/exoplayer/upstream/Loader;->access$202(Landroidx/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 494
    :cond_4
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-eq v0, v11, :cond_8

    .line 495
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v10, :cond_5

    iput v10, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    .line 499
    :cond_5
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 500
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    goto :goto_0

    .line 501
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v0

    .line 498
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->start(J)V

    goto :goto_1

    :cond_7
    :try_start_0
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    .line 480
    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/upstream/Loader$Callback;->onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 483
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    .line 484
    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->access$202(Landroidx/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_8
    :goto_1
    return-void

    .line 467
    :cond_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Error;

    throw p0
.end method

.method public maybeThrowError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    if-gt p0, p1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "load:"

    const/4 v1, 0x2

    .line 407
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 410
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_0

    .line 412
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Landroidx/media3/exoplayer/upstream/Loader$Loadable;

    .line 414
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/Loader$Loadable;->load()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    :try_start_4
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 417
    throw v0

    .line 419
    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 422
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 423
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_2

    .line 425
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 423
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v0

    .line 410
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_1

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    .line 450
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    .line 451
    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 453
    :cond_1
    throw v0

    :catch_1
    move-exception v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_2

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    .line 442
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_2

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    .line 434
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_3
    move-exception v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_2

    .line 429
    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public start(J)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    .line 360
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/Loader;->access$100(Landroidx/media3/exoplayer/upstream/Loader;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Landroidx/media3/exoplayer/upstream/Loader;

    .line 361
    invoke-static {v0, p0}, Landroidx/media3/exoplayer/upstream/Loader;->access$102(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/upstream/Loader$LoadTask;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 363
    invoke-virtual {p0, v1, p1, p2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 365
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->execute()V

    :goto_1
    return-void
.end method
