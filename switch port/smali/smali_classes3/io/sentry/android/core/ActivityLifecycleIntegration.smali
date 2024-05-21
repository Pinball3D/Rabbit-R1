.class public final Lio/sentry/android/core/ActivityLifecycleIntegration;
.super Ljava/lang/Object;
.source "ActivityLifecycleIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final APP_START_COLD:Ljava/lang/String; = "app.start.cold"

.field static final APP_START_WARM:Ljava/lang/String; = "app.start.warm"

.field private static final TRACE_ORIGIN:Ljava/lang/String; = "auto.ui.activity"

.field static final TTFD_OP:Ljava/lang/String; = "ui.load.full_display"

.field static final TTFD_TIMEOUT_MILLIS:J = 0x7530L

.field static final TTID_OP:Ljava/lang/String; = "ui.load.initial_display"

.field static final UI_LOAD_OP:Ljava/lang/String; = "ui.load"


# instance fields
.field private final activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private appStartSpan:Lio/sentry/ISpan;

.field private final application:Landroid/app/Application;

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private firstActivityCreated:Z

.field private fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private hub:Lio/sentry/IHub;

.field private isAllActivityCallbacksAvailable:Z

.field private lastPausedTime:Lio/sentry/SentryDate;

.field private final mainHandler:Landroid/os/Handler;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private performanceEnabled:Z

.field private timeToFullDisplaySpanEnabled:Z

.field private ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final ttfdSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field

.field private final ttidSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 76
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 77
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 78
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->mainHandler:Landroid/os/Handler;

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    const-string v0, "Application is required"

    .line 93
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    const-string p1, "BuildInfoProvider is required"

    .line 95
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string p1, "ActivityFramesTracker is required"

    .line 97
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 99
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    :cond_0
    return-void
.end method

.method private cancelTtfdAutoClose()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 532
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private finishAppStartSpan()V
    .locals 2

    .line 678
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 679
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestamp()Lio/sentry/SentryDate;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 682
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    :cond_0
    return-void
.end method

.method private finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 588
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 591
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 593
    invoke-interface {p2}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 595
    :cond_2
    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p2

    .line 596
    :goto_1
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 502
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    .line 503
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    :cond_0
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V
    .locals 0

    if-eqz p1, :cond_2

    .line 515
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p3

    goto :goto_0

    :cond_1
    sget-object p3, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 520
    :goto_0
    invoke-interface {p1, p3, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    :cond_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 525
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    .line 526
    invoke-interface {p1, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    :cond_0
    return-void
.end method

.method private finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 344
    invoke-interface {p1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 349
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 350
    invoke-direct {p0, p3, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 351
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    .line 353
    invoke-interface {p1}, Lio/sentry/ITransaction;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p2

    if-nez p2, :cond_1

    .line 356
    sget-object p2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 358
    :cond_1
    invoke-interface {p1, p2}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz p2, :cond_2

    .line 362
    new-instance p3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {p2, p3}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    :cond_2
    return-void
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAppStartDesc(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "Cold Start"

    return-object p0

    :cond_0
    const-string p0, "Warm Start"

    return-object p0
.end method

.method private getAppStartOp(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "app.start.cold"

    return-object p0

    :cond_0
    const-string p0, "app.start.warm"

    return-object p0
.end method

.method private getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;
    .locals 2

    .line 654
    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object p0

    const-string v0, " - Deadline Exceeded"

    if-eqz p0, :cond_0

    .line 655
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 657
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 650
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " full display"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTtidDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 646
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " initial display"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z
    .locals 0

    .line 123
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRunningTransactionOrTrace(Landroid/app/Activity;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 327
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$clearScope$4(Lio/sentry/ITransaction;Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 321
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onActivityCreated$6(Ljava/lang/String;Lio/sentry/IScope;)V
    .locals 0

    .line 376
    invoke-interface {p1, p0}, Lio/sentry/IScope;->setScreen(Ljava/lang/String;)V

    return-void
.end method

.method private onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 6

    .line 539
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    .line 541
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 545
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 548
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 551
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 554
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 555
    invoke-interface {p2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v1

    .line 556
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 558
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    const-string v5, "time_to_initial_display"

    .line 557
    invoke-interface {p2, v5, v3, v4}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    if-eqz p1, :cond_2

    .line 560
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 561
    invoke-interface {p1, v0}, Lio/sentry/ISpan;->updateEndDate(Lio/sentry/SentryDate;)Z

    .line 564
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    const-string v2, "time_to_full_display"

    .line 563
    invoke-interface {p2, v2, p1, v1}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 566
    :cond_2
    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 568
    :cond_3
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V

    :goto_0
    return-void
.end method

.method private onFullFrameDrawn(Lio/sentry/ISpan;)V
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 575
    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v1

    .line 576
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 578
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    const-string v3, "time_to_full_display"

    .line 577
    invoke-interface {p1, v3, v1, v2}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 579
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V

    .line 583
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    return-void
.end method

.method private setColdStart(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_1

    .line 635
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result p0

    if-nez p0, :cond_1

    .line 636
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p0

    if-nez p1, :cond_0

    .line 639
    sget-object p1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    goto :goto_0

    .line 640
    :cond_0
    sget-object p1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 637
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartType(Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;)V

    :cond_1
    return-void
.end method

.method private setSpanOrigin(Lio/sentry/ISpan;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 293
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p0

    const-string p1, "auto.ui.activity"

    invoke-virtual {p0, p1}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startTracing(Landroid/app/Activity;)V
    .locals 12

    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz v1, :cond_8

    .line 153
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isRunningTransactionOrTrace(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 155
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    .line 156
    invoke-static {p0}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IHub;)V

    goto/16 :goto_4

    .line 159
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopPreviousTransactions()V

    .line 161
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2, v3}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 170
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v2

    .line 174
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v3

    sget-object v7, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v3, v7, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v2, v6

    move-object v3, v2

    .line 180
    :goto_1
    new-instance v7, Lio/sentry/TransactionOptions;

    invoke-direct {v7}, Lio/sentry/TransactionOptions;-><init>()V

    const-wide/16 v8, 0x7530

    .line 182
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 181
    invoke-virtual {v7, v10}, Lio/sentry/TransactionOptions;->setDeadlineTimeout(Ljava/lang/Long;)V

    iget-object v10, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 184
    invoke-virtual {v10}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 185
    invoke-virtual {v10}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 186
    invoke-virtual {v7, v5}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    .line 188
    :cond_3
    invoke-virtual {v7, v5}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    .line 189
    new-instance v10, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lio/sentry/TransactionOptions;->setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V

    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 216
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    .line 217
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v10

    invoke-virtual {v10, v6}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    move-object v6, v0

    move-object v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 223
    :goto_2
    invoke-virtual {v7, v0}, Lio/sentry/TransactionOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    if-eqz v6, :cond_5

    move v4, v5

    .line 224
    :cond_5
    invoke-virtual {v7, v4}, Lio/sentry/TransactionOptions;->setAppStartTransaction(Z)V

    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    .line 227
    new-instance v5, Lio/sentry/TransactionContext;

    sget-object v10, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    const-string v11, "ui.load"

    invoke-direct {v5, v1, v10, v11, v6}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 228
    invoke-interface {v4, v5, v7}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v4

    .line 235
    invoke-direct {p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    iget-boolean v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 242
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartOp(Z)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartDesc(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 241
    invoke-interface {v4, v5, v3, v2, v6}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 246
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 250
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    .line 254
    :cond_6
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtidDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const-string v5, "ui.load.initial_display"

    .line 253
    invoke-interface {v4, v5, v2, v0, v3}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 255
    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    iget-boolean v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v3, :cond_7

    .line 261
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const-string v5, "ui.load.full_display"

    .line 260
    invoke-interface {v4, v5, v1, v0, v3}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 264
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 267
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v1

    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 268
    invoke-interface {v1, v3, v8, v9}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 272
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?"

    .line 273
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    .line 281
    new-instance v1, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {v0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 286
    invoke-virtual {p0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    return-void
.end method

.method private stopPreviousTransactions()V
    .locals 5

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 143
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ITransaction;

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ISpan;

    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 147
    invoke-direct {p0, v2, v3, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopTracing(Landroid/app/Activity;Z)V
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 332
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ITransaction;

    const/4 p2, 0x0

    .line 333
    invoke-direct {p0, p1, p2, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    :cond_0
    return-void
.end method


# virtual methods
.method applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1

    .line 299
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda9;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method clearScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0

    .line 318
    new-instance p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ITransaction;Lio/sentry/IScope;)V

    invoke-interface {p1, p0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    .line 128
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ActivityLifecycleIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 134
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->stop()V

    return-void
.end method

.method getActivitiesWithOngoingTransactions()Ljava/util/WeakHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method getActivityFramesTracker()Lio/sentry/android/core/ActivityFramesTracker;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-object p0
.end method

.method getAppStartSpan()Lio/sentry/ISpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    return-object p0
.end method

.method getTtfdSpanMap()Ljava/util/WeakHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method getTtidSpanMap()Ljava/util/WeakHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method synthetic lambda$applyScope$3$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    .line 304
    invoke-interface {p1, p2}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_1

    .line 307
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 311
    invoke-interface {p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 308
    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$finishTransaction$5$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0

    .line 364
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->clearScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method synthetic lambda$onActivityCreated$7$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFullFrameDrawn(Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$8$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$9$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 414
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$0$io-sentry-android-core-ActivityLifecycleIntegration(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/ITransaction;)V
    .locals 0

    .line 191
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 194
    invoke-interface {p3}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p2

    .line 193
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/ActivityFramesTracker;->setMetrics(Landroid/app/Activity;Lio/sentry/protocol/SentryId;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_1

    .line 198
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "Unable to track activity frames as the Activity %s has been destroyed."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 199
    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startTracing$1$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$2$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0

    .line 283
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    .line 373
    :try_start_0
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setColdStart(Landroid/os/Bundle;)V

    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz p2, :cond_0

    .line 375
    invoke-static {p1}, Lio/sentry/android/core/internal/util/ClassUtil;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    .line 376
    new-instance v1, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 378
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->startTracing(Landroid/app/Activity;)V

    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 379
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz p2, :cond_1

    .line 384
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;)V

    invoke-virtual {p2, v0}, Lio/sentry/FullyDisplayedReporter;->registerFullyDrawnListener(Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 473
    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 476
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 477
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 478
    sget-object v2, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 481
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 482
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    const/4 v0, 0x1

    .line 486
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopTracing(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 490
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 491
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 498
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-nez p1, :cond_0

    .line 449
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    goto :goto_0

    .line 451
    :cond_0
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 0

    iget-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-nez p1, :cond_0

    .line 433
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    goto :goto_0

    .line 435
    :cond_0
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 405
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 406
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    const v2, 0x1020002

    .line 407
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 409
    new-instance v2, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p1, v2, v0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->mainHandler:Landroid/os/Handler;

    .line 414
    new-instance v2, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    monitor-enter p0

    .line 465
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 397
    invoke-virtual {v0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->addActivity(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    .line 459
    monitor-exit p0

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 2

    .line 108
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 107
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p2, "Hub is required"

    .line 111
    invoke-static {p1, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 113
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 114
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 115
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    .line 117
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 118
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActivityLifecycleIntegration installed."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    return-void
.end method
