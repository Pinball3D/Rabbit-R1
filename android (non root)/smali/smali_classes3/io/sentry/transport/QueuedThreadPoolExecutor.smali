.class final Lio/sentry/transport/QueuedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "QueuedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;
    }
.end annotation


# static fields
.field private static final RECENT_THRESHOLD:J


# instance fields
.field private final dateProvider:Lio/sentry/SentryDateProvider;

.field private lastRejectTimestamp:Lio/sentry/SentryDate;

.field private final logger:Lio/sentry/ILogger;

.field private final maxQueueSize:I

.field private final unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 33
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->RECENT_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(IILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)V
    .locals 9

    const-wide/16 v3, 0x0

    .line 51
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->lastRejectTimestamp:Lio/sentry/SentryDate;

    .line 32
    new-instance p1, Lio/sentry/transport/ReusableCountLatch;

    invoke-direct {p1}, Lio/sentry/transport/ReusableCountLatch;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    iput p2, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->maxQueueSize:I

    iput-object p5, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    iput-object p6, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->dateProvider:Lio/sentry/SentryDateProvider;

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    .line 81
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    .line 83
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    .line 84
    throw p1
.end method

.method public didRejectRecently()Z
    .locals 6

    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->lastRejectTimestamp:Lio/sentry/SentryDate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 107
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v2

    sget-wide v4, Lio/sentry/transport/QueuedThreadPoolExecutor;->RECENT_THRESHOLD:J

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSchedulingAllowed()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    .line 98
    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->getCount()I

    move-result v0

    iget p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->maxQueueSize:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lio/sentry/transport/QueuedThreadPoolExecutor;->isSchedulingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    .line 67
    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->increment()V

    .line 68
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 70
    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->lastRejectTimestamp:Lio/sentry/SentryDate;

    iget-object p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    .line 72
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Submit cancelled"

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance p0, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;

    invoke-direct {p0}, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;-><init>()V

    return-object p0
.end method

.method waitTillIdle(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    .line 90
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lio/sentry/transport/ReusableCountLatch;->waitTillZero(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    .line 92
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to wait till idle"

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
