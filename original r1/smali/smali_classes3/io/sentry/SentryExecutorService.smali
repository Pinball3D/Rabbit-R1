.class public final Lio/sentry/SentryExecutorService;
.super Ljava/lang/Object;
.source "SentryExecutorService.java"

# interfaces
.implements Lio/sentry/ISentryExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;
    }
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    new-instance v0, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;-><init>(Lio/sentry/SentryExecutorService$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/SentryExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public close(J)V
    .locals 3

    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 56
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
