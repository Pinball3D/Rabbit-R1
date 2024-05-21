.class public abstract Landroidx/media3/common/util/RunnableFutureTask;
.super Ljava/lang/Object;
.source "RunnableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final cancelLock:Ljava/lang/Object;

.field private canceled:Z

.field private exception:Ljava/lang/Exception;

.field private final finished:Landroidx/media3/common/util/ConditionVariable;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final started:Landroidx/media3/common/util/ConditionVariable;

.field private workThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v0}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->started:Landroidx/media3/common/util/ConditionVariable;

    .line 49
    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v0}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->canceled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/RunnableFutureTask;->result:Ljava/lang/Object;

    return-object p0

    .line 171
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object p0, p0, Landroidx/media3/common/util/RunnableFutureTask;->exception:Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 169
    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final blockUntilFinished()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 60
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method

.method public final blockUntilStarted()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/RunnableFutureTask;->started:Landroidx/media3/common/util/ConditionVariable;

    .line 55
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    .line 85
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->canceled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 86
    invoke-virtual {v1}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->canceled:Z

    .line 90
    invoke-virtual {p0}, Landroidx/media3/common/util/RunnableFutureTask;->cancelWork()V

    iget-object v2, p0, Landroidx/media3/common/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/common/util/RunnableFutureTask;->started:Landroidx/media3/common/util/ConditionVariable;

    .line 97
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    iget-object p0, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 100
    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 87
    :cond_3
    :goto_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected cancelWork()V
    .locals 0

    return-void
.end method

.method protected abstract doWork()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->block()V

    .line 69
    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 77
    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/util/ConditionVariable;->block(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/util/RunnableFutureTask;->canceled:Z

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 106
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result p0

    return p0
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    .line 118
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->canceled:Z

    if-eqz v1, :cond_0

    .line 120
    monitor-exit v0

    return-void

    .line 122
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->started:Landroidx/media3/common/util/ConditionVariable;

    .line 124
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    const/4 v0, 0x0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Landroidx/media3/common/util/RunnableFutureTask;->doWork()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    .line 131
    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 132
    invoke-virtual {v2}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    iput-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 136
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 137
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    iput-object v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->exception:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, p0, Landroidx/media3/common/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    .line 131
    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 132
    invoke-virtual {v2}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    iput-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 136
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 137
    monitor-exit v1

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_1
    iget-object v2, p0, Landroidx/media3/common/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    .line 131
    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Landroidx/media3/common/util/RunnableFutureTask;->finished:Landroidx/media3/common/util/ConditionVariable;

    .line 132
    invoke-virtual {v3}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    iput-object v0, p0, Landroidx/media3/common/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 136
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 137
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 138
    throw v1

    :catchall_3
    move-exception p0

    .line 137
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 123
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method
