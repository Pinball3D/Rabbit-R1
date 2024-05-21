.class public final Lio/sentry/android/core/AnrIntegration;
.super Ljava/lang/Object;
.source "AnrIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AnrIntegration$AnrHint;
    }
.end annotation


# static fields
.field private static anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

.field private static final watchDogLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private isClosed:Z

.field private options:Lio/sentry/SentryOptions;

.field private final startLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AnrIntegration;->isClosed:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->startLock:Ljava/lang/Object;

    iput-object p1, p0, Lio/sentry/android/core/AnrIntegration;->context:Landroid/content/Context;

    return-void
.end method

.method private buildAnrThrowable(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)Ljava/lang/Throwable;
    .locals 2

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ANR for at least "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " ms."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Background "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    :cond_0
    new-instance p1, Lio/sentry/android/core/ApplicationNotResponding;

    invoke-virtual {p3}, Lio/sentry/android/core/ApplicationNotResponding;->getThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 139
    new-instance p0, Lio/sentry/protocol/Mechanism;

    invoke-direct {p0}, Lio/sentry/protocol/Mechanism;-><init>()V

    const-string p2, "ANR"

    .line 140
    invoke-virtual {p0, p2}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 142
    new-instance p2, Lio/sentry/exception/ExceptionMechanismException;

    invoke-virtual {p1}, Lio/sentry/android/core/ApplicationNotResponding;->getThread()Ljava/lang/Thread;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, p3, v0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-object p2
.end method

.method private register(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 4

    .line 58
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 59
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AnrIntegration enabled: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    .line 65
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 66
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 76
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Failed to start AnrIntegration on executor thread."

    .line 77
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private startAnrWatchdog(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 15

    move-object v0, p0

    sget-object v1, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Ljava/lang/Object;

    .line 84
    monitor-enter v1

    :try_start_0
    sget-object v2, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    if-nez v2, :cond_0

    .line 87
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "ANR timeout in milliseconds: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 91
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 88
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v2, Lio/sentry/android/core/ANRWatchDog;

    .line 95
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v9

    .line 96
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v11

    new-instance v12, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v12, p0, v3, v4}, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v13

    iget-object v14, v0, Lio/sentry/android/core/AnrIntegration;->context:Landroid/content/Context;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lio/sentry/android/core/ANRWatchDog;-><init>(JZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Landroid/content/Context;)V

    sput-object v2, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    .line 100
    invoke-virtual {v2}, Lio/sentry/android/core/ANRWatchDog;->start()V

    .line 102
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AnrIntegration installed."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration;->startLock:Ljava/lang/Object;

    .line 153
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/AnrIntegration;->isClosed:Z

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Ljava/lang/Object;

    .line 156
    monitor-enter v1

    :try_start_1
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lio/sentry/android/core/ANRWatchDog;->interrupt()V

    const/4 v0, 0x0

    sput-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    iget-object p0, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "AnrIntegration removed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 155
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method getANRWatchDog()Lio/sentry/android/core/ANRWatchDog;
    .locals 0

    sget-object p0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    return-object p0
.end method

.method synthetic lambda$register$0$io-sentry-android-core-AnrIntegration(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration;->startLock:Ljava/lang/Object;

    .line 68
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/AnrIntegration;->isClosed:Z

    if-nez v1, :cond_0

    .line 70
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrIntegration;->startAnrWatchdog(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 72
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

.method synthetic lambda$startAnrWatchdog$1$io-sentry-android-core-AnrIntegration(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/core/AnrIntegration;->reportANR(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V

    return-void
.end method

.method public final register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 1

    const-string v0, "SentryOptions is required"

    .line 52
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    .line 53
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrIntegration;->register(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method reportANR(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 4

    .line 112
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p3}, Lio/sentry/android/core/ApplicationNotResponding;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ANR triggered with message: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/AppState;->isInBackground()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    invoke-direct {p0, v0, p2, p3}, Lio/sentry/android/core/AnrIntegration;->buildAnrThrowable(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)Ljava/lang/Throwable;

    move-result-object p0

    .line 120
    new-instance p2, Lio/sentry/SentryEvent;

    invoke-direct {p2, p0}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 121
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p2, p0}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 123
    new-instance p0, Lio/sentry/android/core/AnrIntegration$AnrHint;

    invoke-direct {p0, v0}, Lio/sentry/android/core/AnrIntegration$AnrHint;-><init>(Z)V

    .line 124
    invoke-static {p0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object p0

    .line 125
    invoke-interface {p1, p2, p0}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    return-void
.end method
