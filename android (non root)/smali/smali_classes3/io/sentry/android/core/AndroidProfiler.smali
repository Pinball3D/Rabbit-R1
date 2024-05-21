.class public Lio/sentry/android/core/AndroidProfiler;
.super Ljava/lang/Object;
.source "AndroidProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AndroidProfiler$ProfileEndData;,
        Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2dc6c0

.field private static final PROFILING_TIMEOUT_MILLIS:I = 0x7530


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final executorService:Lio/sentry/ISentryExecutorService;

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private frameMetricsCollectorId:Ljava/lang/String;

.field private final frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private final intervalUs:I

.field private isRunning:Z

.field private final logger:Lio/sentry/ILogger;

.field private final measurementsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private profileStartNanos:J

.field private scheduledFinish:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final screenFrameRateMeasurements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private final slowFrameRenderMeasurements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private volatile timedOutProfilingData:Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

.field private traceFile:Ljava/io/File;

.field private final traceFilesDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ISentryExecutorService;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidProfiler;->profileStartNanos:J

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->traceFile:Ljava/io/File;

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->timedOutProfilingData:Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    .line 84
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    .line 86
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 88
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z

    .line 103
    new-instance v0, Ljava/io/File;

    const-string v1, "TracesFilesDirPath is required"

    .line 104
    invoke-static {p1, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->traceFilesDir:Ljava/io/File;

    iput p2, p0, Lio/sentry/android/core/AndroidProfiler;->intervalUs:I

    const-string p1, "Logger is required"

    .line 106
    invoke-static {p5, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    const-string p1, "ExecutorService is required."

    .line 107
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISentryExecutorService;

    iput-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    const-string p1, "SentryFrameMetricsCollector is required"

    .line 109
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    const-string p1, "The BuildInfoProvider is required."

    .line 111
    invoke-static {p6, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/AndroidProfiler;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lio/sentry/android/core/AndroidProfiler;->profileStartNanos:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/AndroidProfiler;)Ljava/util/ArrayDeque;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$200(Lio/sentry/android/core/AndroidProfiler;)Ljava/util/ArrayDeque;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$300(Lio/sentry/android/core/AndroidProfiler;)Ljava/util/ArrayDeque;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private putPerformanceCollectionDataInMeasurements(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 298
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/android/core/AndroidProfiler;->profileStartNanos:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    if-eqz p1, :cond_7

    .line 310
    new-instance v2, Ljava/util/ArrayDeque;

    .line 311
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 312
    new-instance v3, Ljava/util/ArrayDeque;

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 314
    new-instance v4, Ljava/util/ArrayDeque;

    .line 315
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 317
    monitor-enter p1

    .line 318
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/PerformanceCollectionData;

    .line 319
    invoke-virtual {v6}, Lio/sentry/PerformanceCollectionData;->getCpuData()Lio/sentry/CpuCollectionData;

    move-result-object v7

    .line 320
    invoke-virtual {v6}, Lio/sentry/PerformanceCollectionData;->getMemoryData()Lio/sentry/MemoryCollectionData;

    move-result-object v6

    if-eqz v7, :cond_2

    .line 322
    new-instance v8, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 324
    invoke-virtual {v7}, Lio/sentry/CpuCollectionData;->getTimestampMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    add-long/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 325
    invoke-virtual {v7}, Lio/sentry/CpuCollectionData;->getCpuUsagePercentage()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 322
    invoke-virtual {v4, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v7, -0x1

    if-eqz v6, :cond_3

    .line 327
    invoke-virtual {v6}, Lio/sentry/MemoryCollectionData;->getUsedHeapMemory()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-lez v9, :cond_3

    .line 328
    new-instance v9, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 330
    invoke-virtual {v6}, Lio/sentry/MemoryCollectionData;->getTimestampMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    add-long/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 331
    invoke-virtual {v6}, Lio/sentry/MemoryCollectionData;->getUsedHeapMemory()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 328
    invoke-virtual {v2, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v6, :cond_1

    .line 333
    invoke-virtual {v6}, Lio/sentry/MemoryCollectionData;->getUsedNativeMemory()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-lez v7, :cond_1

    .line 334
    new-instance v7, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 336
    invoke-virtual {v6}, Lio/sentry/MemoryCollectionData;->getTimestampMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 337
    invoke-virtual {v6}, Lio/sentry/MemoryCollectionData;->getUsedNativeMemory()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 334
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 340
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    const-string v0, "cpu_usage"

    .line 342
    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v5, "percent"

    invoke-direct {v1, v5, v4}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    const-string v0, "memory_footprint"

    .line 347
    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v4, "byte"

    invoke-direct {v1, v4, v2}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    const-string p1, "memory_native_footprint"

    .line 352
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v1, "byte"

    invoke-direct {v0, v1, v3}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 340
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lio/sentry/android/core/AndroidProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0, v2, v1}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;)",
            "Lio/sentry/android/core/AndroidProfiler$ProfileEndData;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->timedOutProfilingData:Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->timedOutProfilingData:Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 221
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    .line 225
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Profiler not running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 226
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 230
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0x15

    if-ge v0, v3, :cond_2

    monitor-exit p0

    return-object v1

    .line 236
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v3, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    .line 238
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error while stopping profiling: "

    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_1
    :try_start_6
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v3, p0, Lio/sentry/android/core/AndroidProfiler;->frameMetricsCollectorId:Ljava/lang/String;

    .line 242
    invoke-virtual {v0, v3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopCollection(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    .line 245
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->traceFile:Ljava/io/File;

    if-nez v0, :cond_3

    iget-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    .line 248
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Trace file does not exists"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 249
    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_7
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    const-string v2, "slow_frame_renders"

    .line 253
    new-instance v3, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v4, "nanosecond"

    iget-object v9, p0, Lio/sentry/android/core/AndroidProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-direct {v3, v4, v9}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    const-string v2, "frozen_frame_renders"

    .line 258
    new-instance v3, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v4, "nanosecond"

    iget-object v9, p0, Lio/sentry/android/core/AndroidProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-direct {v3, v4, v9}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    .line 263
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    const-string v2, "screen_frame_rates"

    .line 264
    new-instance v3, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v4, "hz"

    iget-object v9, p0, Lio/sentry/android/core/AndroidProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    invoke-direct {v3, v4, v9}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_6
    invoke-direct {p0, p2}, Lio/sentry/android/core/AndroidProfiler;->putPerformanceCollectionDataInMeasurements(Ljava/util/List;)V

    iget-object p2, p0, Lio/sentry/android/core/AndroidProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    .line 271
    invoke-interface {p2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lio/sentry/android/core/AndroidProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    .line 275
    :cond_7
    new-instance p2, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    iget-object v10, p0, Lio/sentry/android/core/AndroidProfiler;->traceFile:Ljava/io/File;

    iget-object v11, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    move-object v4, p2

    move v9, p1

    invoke-direct/range {v4 .. v11}, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;-><init>(JJZLjava/io/File;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object p2

    :catchall_1
    move-exception p1

    :try_start_8
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z

    .line 241
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$start$0$io-sentry-android-core-AndroidProfiler()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->timedOutProfilingData:Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    return-void
.end method

.method public declared-synchronized start()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/sentry/android/core/AndroidProfiler;->intervalUs:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    .line 118
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Disabling profiling because intervaUs is set to %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v6, p0, Lio/sentry/android/core/AndroidProfiler;->intervalUs:I

    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    .line 118
    invoke-interface {v0, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    .line 124
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Profiling has already started..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 129
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x15

    if-ge v0, v4, :cond_2

    monitor-exit p0

    return-object v3

    .line 132
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lio/sentry/android/core/AndroidProfiler;->traceFilesDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".trace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->traceFile:Ljava/io/File;

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->measurementsMap:Ljava/util/Map;

    .line 134
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 139
    new-instance v4, Lio/sentry/android/core/AndroidProfiler$1;

    invoke-direct {v4, p0}, Lio/sentry/android/core/AndroidProfiler$1;-><init>(Lio/sentry/android/core/AndroidProfiler;)V

    .line 140
    invoke-virtual {v0, v4}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->frameMetricsCollectorId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    .line 184
    new-instance v4, Lio/sentry/android/core/AndroidProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lio/sentry/android/core/AndroidProfiler$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AndroidProfiler;)V

    const-wide/16 v5, 0x7530

    .line 185
    invoke-interface {v0, v4, v5, v6}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->scheduledFinish:Ljava/util/concurrent/Future;
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v4, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    .line 188
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Failed to call the executor. Profiling will not be automatically finished. Did you call Sentry.close()?"

    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Lio/sentry/android/core/AndroidProfiler;->profileStartNanos:J

    .line 195
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->traceFile:Ljava/io/File;

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v6, p0, Lio/sentry/android/core/AndroidProfiler;->intervalUs:I

    const v7, 0x2dc6c0

    invoke-static {v0, v7, v6}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V

    iput-boolean v1, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z

    .line 206
    new-instance v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    iget-wide v6, p0, Lio/sentry/android/core/AndroidProfiler;->profileStartNanos:J

    invoke-direct {v0, v6, v7, v4, v5}, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;-><init>(JJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 208
    :try_start_7
    invoke-virtual {p0, v2, v3}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    iget-object v1, p0, Lio/sentry/android/core/AndroidProfiler;->logger:Lio/sentry/ILogger;

    .line 209
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Unable to start a profile: "

    invoke-interface {v1, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lio/sentry/android/core/AndroidProfiler;->isRunning:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 211
    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
