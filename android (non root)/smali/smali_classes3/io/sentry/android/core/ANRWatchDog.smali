.class final Lio/sentry/android/core/ANRWatchDog;
.super Ljava/lang/Thread;
.source "ANRWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ANRWatchDog$ANRListener;
    }
.end annotation


# instance fields
.field private final anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

.field private final context:Landroid/content/Context;

.field private volatile lastKnownActiveUiTimestampMs:J

.field private final logger:Lio/sentry/ILogger;

.field private pollingIntervalMs:J

.field private final reportInDebug:Z

.field private final reported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ticker:Ljava/lang/Runnable;

.field private final timeProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final timeoutIntervalMillis:J

.field private final uiHandler:Lio/sentry/android/core/MainLooperHandler;


# direct methods
.method constructor <init>(JZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Landroid/content/Context;)V
    .locals 11

    .line 72
    new-instance v1, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v4, 0x1f4

    new-instance v9, Lio/sentry/android/core/MainLooperHandler;

    invoke-direct {v9}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/sentry/android/core/ANRWatchDog;-><init>(Lio/sentry/transport/ICurrentDateProvider;JJZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Lio/sentry/android/core/MainLooperHandler;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/transport/ICurrentDateProvider;JJZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Lio/sentry/android/core/MainLooperHandler;Landroid/content/Context;)V
    .locals 2

    const-string v0, "|ANR-WatchDog|"

    .line 94
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/sentry/android/core/ANRWatchDog;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    iput-wide p2, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    iput-wide p4, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    iput-boolean p6, p0, Lio/sentry/android/core/ANRWatchDog;->reportInDebug:Z

    iput-object p7, p0, Lio/sentry/android/core/ANRWatchDog;->anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

    iput-object p8, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    iput-object p9, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    iput-object p10, p0, Lio/sentry/android/core/ANRWatchDog;->context:Landroid/content/Context;

    .line 104
    new-instance p4, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1}, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/ANRWatchDog;Lio/sentry/transport/ICurrentDateProvider;)V

    iput-object p4, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    iget-wide p4, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    const-wide/16 p6, 0x2

    mul-long/2addr p4, p6

    cmp-long p1, p2, p4

    if-ltz p1, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide p2, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    mul-long/2addr p2, p6

    .line 114
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "ANRWatchDog: timeoutIntervalMillis has to be at least %d ms"

    .line 112
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isProcessNotResponding()Z
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->context:Landroid/content/Context;

    const-string v1, "activity"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 176
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    .line 178
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting ActivityManager#getProcessesInErrorState."

    invoke-interface {p0, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 183
    iget v0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method static synthetic lambda$new$0()J
    .locals 2

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method synthetic lambda$new$1$io-sentry-android-core-ANRWatchDog(Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 2

    .line 106
    invoke-interface {p1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    .line 121
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/ANRWatchDog;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    iget-object v1, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    .line 124
    invoke-virtual {v0, v1}, Lio/sentry/android/core/MainLooperHandler;->post(Ljava/lang/Runnable;)V

    :try_start_0
    iget-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 143
    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lio/sentry/android/core/ANRWatchDog;->reportInDebug:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 147
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    .line 148
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "An ANR was detected but ignored because the debugger is connected."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-direct {p0}, Lio/sentry/android/core/ANRWatchDog;->isProcessNotResponding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application Not Responding for at least "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Lio/sentry/android/core/ApplicationNotResponding;

    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    .line 160
    invoke-virtual {v2}, Lio/sentry/android/core/MainLooperHandler;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

    .line 161
    invoke-interface {v0, v1}, Lio/sentry/android/core/ANRWatchDog$ANRListener;->onAppNotResponding(Lio/sentry/android/core/ApplicationNotResponding;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    .line 138
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Interrupted: %s"

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_1
    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    .line 132
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 135
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Failed to interrupt due to SecurityException: %s"

    .line 132
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
