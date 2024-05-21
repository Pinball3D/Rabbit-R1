.class final Lio/sentry/android/core/PerformanceAndroidEventProcessor;
.super Ljava/lang/Object;
.source "PerformanceAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;


# static fields
.field private static final APP_METRICS_ACTIVITIES_OP:Ljava/lang/String; = "activity.load"

.field private static final APP_METRICS_APPLICATION_OP:Ljava/lang/String; = "application.load"

.field private static final APP_METRICS_CONTENT_PROVIDER_OP:Ljava/lang/String; = "contentprovider.load"

.field private static final APP_METRICS_ORIGIN:Ljava/lang/String; = "auto.ui"

.field private static final APP_METRICS_PROCESS_INIT_OP:Ljava/lang/String; = "process.load"

.field private static final MAX_PROCESS_INIT_APP_START_DIFF_MS:J = 0x2710L


# instance fields
.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private sentStartMeasurement:Z


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    const-string v0, "SentryAndroidOptions is required"

    .line 50
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p1, "ActivityFramesTracker is required"

    .line 52
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p1, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-void
.end method

.method private attachColdAppStartSpans(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/protocol/SentryTransaction;)V
    .locals 8

    .line 143
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object p0

    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-eq p0, v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p0

    .line 155
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentrySpan;

    .line 157
    invoke-virtual {v1}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.start.cold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {v1}, Lio/sentry/protocol/SentrySpan;->getSpanId()Lio/sentry/SpanId;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getClassLoadedUptimeMs()J

    move-result-wide v1

    .line 165
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 167
    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 169
    new-instance v4, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v4}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    .line 170
    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 171
    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lio/sentry/android/core/performance/TimeSpan;->setStartUnixTimeMs(J)V

    .line 173
    invoke-virtual {v4, v1, v2}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    const-string v1, "Process Initialization"

    .line 174
    invoke-virtual {v4, v1}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v1

    const-string v2, "process.load"

    .line 178
    invoke-static {v4, v0, p0, v2}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v2

    .line 177
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_4
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getContentProviderOnCreateTimeSpans()Ljava/util/List;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/performance/TimeSpan;

    .line 187
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v3

    const-string v4, "contentprovider.load"

    .line 189
    invoke-static {v2, v0, p0, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v2

    .line 188
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_5
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 197
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    const-string v3, "application.load"

    .line 199
    invoke-static {v1, v0, p0, v3}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v1

    .line 198
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_6
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getActivityLifecycleTimeSpans()Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    .line 207
    invoke-virtual {v1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v2

    const-string v3, "activity.load"

    if-eqz v2, :cond_8

    .line 208
    invoke-virtual {v1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 209
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    .line 212
    invoke-virtual {v1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v4

    .line 211
    invoke-static {v4, v0, p0, v3}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v4

    .line 210
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_8
    invoke-virtual {v1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 218
    invoke-virtual {v1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 219
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    .line 222
    invoke-virtual {v1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    .line 221
    invoke-static {v1, v0, p0, v3}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v1

    .line 220
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    return-void
.end method

.method private hasAppStartSpan(Lio/sentry/protocol/SentryTransaction;)Z
    .locals 5

    .line 125
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "app.start.warm"

    const/4 v2, 0x1

    const-string v3, "app.start.cold"

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentrySpan;

    .line 127
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v2

    .line 133
    :cond_2
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 135
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 136
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2
.end method

.method private static timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;
    .locals 15

    .line 238
    new-instance v13, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 239
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "thread.id"

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "thread.name"

    const-string v1, "main"

    .line 240
    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v14, Lio/sentry/protocol/SentrySpan;

    .line 243
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampSecs()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestampSecs()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-instance v4, Lio/sentry/SpanId;

    invoke-direct {v4}, Lio/sentry/SpanId;-><init>()V

    .line 249
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getDescription()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    const-string v9, "auto.ui"

    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v12, 0x0

    move-object v0, v14

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v13}, Lio/sentry/protocol/SentrySpan;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v14
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    return-object p1
.end method

.method public declared-synchronized process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 76
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 77
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-boolean p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    if-nez p2, :cond_2

    .line 82
    invoke-direct {p0, p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->hasAppStartSpan(Lio/sentry/protocol/SentryTransaction;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p2

    iget-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 89
    new-instance p2, Lio/sentry/protocol/MeasurementValue;

    long-to-float v0, v0

    .line 91
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v1}, Lio/sentry/MeasurementUnit$Duration;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v0

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v0, v1, :cond_1

    const-string v0, "app_start_cold"

    goto :goto_0

    :cond_1
    const-string v0, "app_start_warm"

    .line 98
    :goto_0
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->attachColdAppStartSpans(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/protocol/SentryTransaction;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    .line 105
    :cond_2
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p2

    .line 106
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui.load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 115
    invoke-virtual {v0, p2}, Lio/sentry/android/core/ActivityFramesTracker;->takeMetrics(Lio/sentry/protocol/SentryId;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
