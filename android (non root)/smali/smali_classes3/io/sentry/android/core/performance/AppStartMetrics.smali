.class public Lio/sentry/android/core/performance/AppStartMetrics;
.super Ljava/lang/Object;
.source "AppStartMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    }
.end annotation


# static fields
.field private static CLASS_LOADED_UPTIME_MS:J

.field private static volatile instance:Lio/sentry/android/core/performance/AppStartMetrics;


# instance fields
.field private final activityLifecycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field private appLaunchedInForeground:Z

.field private appStartProfiler:Lio/sentry/ITransactionProfiler;

.field private appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

.field private final appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

.field private appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

.field private final applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

.field private final contentProviderOnCreates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ContentProvider;",
            "Lio/sentry/android/core/performance/TimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 63
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 64
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 65
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/performance/AppStartMetrics;
    .locals 2

    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    if-nez v0, :cond_1

    const-class v0, Lio/sentry/android/core/performance/AppStartMetrics;

    .line 52
    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lio/sentry/android/core/performance/AppStartMetrics;

    invoke-direct {v1}, Lio/sentry/android/core/performance/AppStartMetrics;-><init>()V

    sput-object v1, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    return-object v0
.end method

.method public static onApplicationCreate(Landroid/app/Application;)V
    .locals 3

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 195
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p0

    .line 196
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 198
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    :cond_0
    return-void
.end method

.method public static onApplicationPostCreate(Landroid/app/Application;)V
    .locals 5

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 211
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    .line 212
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, ".onCreate"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 214
    iget-object p0, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    :cond_0
    return-void
.end method

.method public static onContentProviderCreate(Landroid/content/ContentProvider;)V
    .locals 3

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 227
    new-instance v2, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v2}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    .line 228
    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 229
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v0, v0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onContentProviderPostCreate(Landroid/content/ContentProvider;)V
    .locals 4

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 242
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    iget-object v2, v2, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/performance/TimeSpan;

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ".onCreate"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addActivityLifecycleTimeSpans(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    .line 123
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 150
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 151
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 152
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    .line 153
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    .line 155
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-void
.end method

.method public getActivityLifecycleTimeSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getAppStartProfiler()Lio/sentry/ITransactionProfiler;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    return-object p0
.end method

.method public getAppStartSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-object p0
.end method

.method public getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object p0
.end method

.method public getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 136
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p0

    return-object p0
.end method

.method public getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-object p0
.end method

.method public getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    return-object p0
.end method

.method public getClassLoadedUptimeMs()J
    .locals 2

    sget-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    return-wide v0
.end method

.method public getContentProviderOnCreateTimeSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/TimeSpan;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object p0
.end method

.method public isAppLaunchedInForeground()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    return p0
.end method

.method public setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    return-void
.end method

.method public setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-void
.end method

.method public setAppStartType(Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-void
.end method

.method public setClassLoadedUptimeMs(J)V
    .locals 0

    sput-wide p1, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    return-void
.end method
