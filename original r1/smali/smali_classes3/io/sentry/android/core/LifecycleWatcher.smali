.class final Lio/sentry/android/core/LifecycleWatcher;
.super Ljava/lang/Object;
.source "LifecycleWatcher.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field private final currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final enableAppLifecycleBreadcrumbs:Z

.field private final enableSessionTracking:Z

.field private final hub:Lio/sentry/IHub;

.field private final lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sessionIntervalMillis:J

.field private final timer:Ljava/util/Timer;

.field private final timerLock:Ljava/lang/Object;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method constructor <init>(Lio/sentry/IHub;JZZ)V
    .locals 7

    .line 44
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 39
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/LifecycleWatcher;-><init>(Lio/sentry/IHub;JZZLio/sentry/transport/ICurrentDateProvider;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/IHub;JZZLio/sentry/transport/ICurrentDateProvider;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->timerLock:Ljava/lang/Object;

    iput-wide p2, p0, Lio/sentry/android/core/LifecycleWatcher;->sessionIntervalMillis:J

    iput-boolean p4, p0, Lio/sentry/android/core/LifecycleWatcher;->enableSessionTracking:Z

    iput-boolean p5, p0, Lio/sentry/android/core/LifecycleWatcher;->enableAppLifecycleBreadcrumbs:Z

    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->hub:Lio/sentry/IHub;

    iput-object p6, p0, Lio/sentry/android/core/LifecycleWatcher;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    if-eqz p4, :cond_0

    .line 59
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->timer:Ljava/util/Timer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->timer:Ljava/util/Timer;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/LifecycleWatcher;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/sentry/android/core/LifecycleWatcher;->addSessionBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/LifecycleWatcher;)Lio/sentry/IHub;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->hub:Lio/sentry/IHub;

    return-object p0
.end method

.method private addAppBreadcrumb(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lio/sentry/android/core/LifecycleWatcher;->enableAppLifecycleBreadcrumbs:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "navigation"

    .line 147
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v1, "state"

    .line 148
    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "app.lifecycle"

    .line 149
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 150
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->hub:Lio/sentry/IHub;

    .line 151
    invoke-interface {p0, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    :cond_0
    return-void
.end method

.method private addSessionBreadcrumb(Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-static {p1}, Lio/sentry/android/core/internal/util/BreadcrumbFactory;->forSession(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object p1

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->hub:Lio/sentry/IHub;

    .line 157
    invoke-interface {p0, p1}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method private cancelTask()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->timerLock:Ljava/lang/Object;

    .line 136
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->timerTask:Ljava/util/TimerTask;

    .line 141
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

.method private scheduleEndSession()V
    .locals 5

    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->timerLock:Ljava/lang/Object;

    .line 118
    monitor-enter v0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->cancelTask()V

    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Lio/sentry/android/core/LifecycleWatcher$1;

    invoke-direct {v1, p0}, Lio/sentry/android/core/LifecycleWatcher$1;-><init>(Lio/sentry/android/core/LifecycleWatcher;)V

    iput-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->timerTask:Ljava/util/TimerTask;

    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->timer:Ljava/util/Timer;

    iget-wide v3, p0, Lio/sentry/android/core/LifecycleWatcher;->sessionIntervalMillis:J

    .line 130
    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 132
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

.method private startSession()V
    .locals 6

    iget-boolean v0, p0, Lio/sentry/android/core/LifecycleWatcher;->enableSessionTracking:Z

    if-eqz v0, :cond_2

    .line 78
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->cancelTask()V

    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 80
    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->hub:Lio/sentry/IHub;

    .line 82
    new-instance v3, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/LifecycleWatcher;)V

    invoke-interface {v2, v3}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lio/sentry/android/core/LifecycleWatcher;->sessionIntervalMillis:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    :cond_0
    const-string v2, "start"

    .line 95
    invoke-direct {p0, v2}, Lio/sentry/android/core/LifecycleWatcher;->addSessionBreadcrumb(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->hub:Lio/sentry/IHub;

    .line 96
    invoke-interface {v2}, Lio/sentry/IHub;->startSession()V

    :cond_1
    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_2
    return-void
.end method


# virtual methods
.method getTimer()Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method getTimerTask()Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->timerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method synthetic lambda$startSession$0$io-sentry-android-core-LifecycleWatcher(Lio/sentry/IScope;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p1}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    invoke-virtual {p1}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->startSession()V

    const-string p1, "foreground"

    .line 69
    invoke-direct {p0, p1}, Lio/sentry/android/core/LifecycleWatcher;->addAppBreadcrumb(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/sentry/android/core/AppState;->setInBackground(Z)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-boolean p1, p0, Lio/sentry/android/core/LifecycleWatcher;->enableSessionTracking:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 107
    invoke-interface {p1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->lastUpdatedSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 110
    invoke-direct {p0}, Lio/sentry/android/core/LifecycleWatcher;->scheduleEndSession()V

    .line 113
    :cond_0
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/sentry/android/core/AppState;->setInBackground(Z)V

    const-string p1, "background"

    .line 114
    invoke-direct {p0, p1}, Lio/sentry/android/core/LifecycleWatcher;->addAppBreadcrumb(Ljava/lang/String;)V

    return-void
.end method
