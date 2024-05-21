.class public final Lio/sentry/MetricsAggregator;
.super Ljava/lang/Object;
.source "MetricsAggregator.java"

# interfaces
.implements Lio/sentry/IMetricsAggregator;
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final beforeEmitCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

.field private final buckets:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/Metric;",
            ">;>;"
        }
    .end annotation
.end field

.field private final client:Lio/sentry/metrics/IMetricsClient;

.field private final dateProvider:Lio/sentry/SentryDateProvider;

.field private volatile executorService:Lio/sentry/ISentryExecutorService;

.field private volatile flushScheduled:Z

.field private volatile isClosed:Z

.field private final logger:Lio/sentry/ILogger;

.field private final maxWeight:I

.field private final totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 33
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/MetricsAggregator;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/metrics/IMetricsClient;)V
    .locals 7

    .line 59
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v3

    const v4, 0x186a0

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getBeforeEmitMetricCallback()Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    move-result-object v5

    .line 63
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    .line 57
    invoke-direct/range {v0 .. v6}, Lio/sentry/MetricsAggregator;-><init>(Lio/sentry/metrics/IMetricsClient;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;ILio/sentry/SentryOptions$BeforeEmitMetricCallback;Lio/sentry/ISentryExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/metrics/IMetricsClient;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;ILio/sentry/SentryOptions$BeforeEmitMetricCallback;Lio/sentry/ISentryExecutorService;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/MetricsAggregator;->isClosed:Z

    iput-boolean v0, p0, Lio/sentry/MetricsAggregator;->flushScheduled:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/sentry/MetricsAggregator;->client:Lio/sentry/metrics/IMetricsClient;

    iput-object p2, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    iput-object p3, p0, Lio/sentry/MetricsAggregator;->dateProvider:Lio/sentry/SentryDateProvider;

    iput p4, p0, Lio/sentry/MetricsAggregator;->maxWeight:I

    iput-object p5, p0, Lio/sentry/MetricsAggregator;->beforeEmitCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    iput-object p6, p0, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    return-void
.end method

.method private add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/metrics/MetricType;",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const-string v2, "Unknown MetricType: "

    iget-boolean v3, v1, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lio/sentry/MetricsAggregator;->beforeEmitCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    if-eqz v3, :cond_1

    .line 177
    invoke-interface {v3, v8, v12}, Lio/sentry/SentryOptions$BeforeEmitMetricCallback;->execute(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-static/range {p7 .. p8}, Lio/sentry/metrics/MetricsHelper;->getTimeBucketKey(J)J

    move-result-wide v3

    .line 183
    invoke-direct {v1, v3, v4}, Lio/sentry/MetricsAggregator;->getOrAddTimeBucket(J)Ljava/util/Map;

    move-result-object v13

    .line 185
    invoke-static {v0, v8, v11, v12}, Lio/sentry/metrics/MetricsHelper;->getMetricBucketKey(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 190
    monitor-enter v13

    .line 191
    :try_start_0
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/metrics/Metric;

    const/4 v15, 0x1

    if-eqz v3, :cond_2

    .line 193
    invoke-virtual {v3}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v2

    .line 194
    invoke-virtual {v3, v9, v10}, Lio/sentry/metrics/Metric;->add(D)V

    .line 195
    invoke-virtual {v3}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v3

    sub-int/2addr v3, v2

    goto/16 :goto_2

    .line 198
    :cond_2
    sget-object v3, Lio/sentry/MetricsAggregator$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    invoke-virtual/range {p1 .. p1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v15, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 209
    new-instance v2, Lio/sentry/metrics/SetMetric;

    invoke-direct {v2, v8, v11, v12}, Lio/sentry/metrics/SetMetric;-><init>(Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V

    double-to-int v3, v9

    int-to-double v3, v3

    .line 212
    invoke-virtual {v2, v3, v4}, Lio/sentry/metrics/Metric;->add(D)V

    goto :goto_1

    .line 215
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/sentry/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_4
    new-instance v16, Lio/sentry/metrics/DistributionMetric;

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lio/sentry/metrics/DistributionMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    goto :goto_0

    .line 203
    :cond_5
    new-instance v16, Lio/sentry/metrics/GaugeMetric;

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lio/sentry/metrics/GaugeMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    goto :goto_0

    .line 200
    :cond_6
    new-instance v16, Lio/sentry/metrics/CounterMetric;

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lio/sentry/metrics/CounterMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    :goto_0
    move-object/from16 v2, v16

    .line 217
    :goto_1
    invoke-virtual {v2}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v3

    .line 218
    invoke-interface {v13, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v2, v1, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 221
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p9, :cond_8

    .line 226
    sget-object v2, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    if-ne v0, v2, :cond_7

    int-to-double v2, v3

    move-wide v6, v2

    goto :goto_3

    :cond_7
    move-wide v6, v9

    :goto_3
    move-object/from16 v2, p9

    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    .line 227
    invoke-virtual/range {v2 .. v11}, Lio/sentry/metrics/LocalMetricsAggregator;->add(Ljava/lang/String;Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;J)V

    .line 230
    :cond_8
    invoke-direct/range {p0 .. p0}, Lio/sentry/MetricsAggregator;->isOverWeight()Z

    move-result v0

    iget-boolean v2, v1, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-nez v2, :cond_d

    if-nez v0, :cond_9

    iget-boolean v2, v1, Lio/sentry/MetricsAggregator;->flushScheduled:Z

    if-nez v2, :cond_d

    .line 232
    :cond_9
    monitor-enter p0

    :try_start_1
    iget-boolean v2, v1, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-nez v2, :cond_c

    iget-object v2, v1, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    .line 237
    instance-of v2, v2, Lio/sentry/NoOpSentryExecutorService;

    if-eqz v2, :cond_a

    .line 238
    new-instance v2, Lio/sentry/SentryExecutorService;

    invoke-direct {v2}, Lio/sentry/SentryExecutorService;-><init>()V

    iput-object v2, v1, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    :cond_a
    iput-boolean v15, v1, Lio/sentry/MetricsAggregator;->flushScheduled:Z

    if-eqz v0, :cond_b

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_b
    const-wide/16 v2, 0x1388

    :goto_4
    iget-object v0, v1, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    .line 243
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 245
    :cond_c
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    .line 221
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static getBucketWeight(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/Metric;",
            ">;)I"
        }
    .end annotation

    .line 294
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/metrics/Metric;

    .line 295
    invoke-virtual {v1}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getFlushableBuckets(Z)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 303
    invoke-interface {p0}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 306
    :cond_0
    invoke-direct {p0}, Lio/sentry/MetricsAggregator;->nowMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/metrics/MetricsHelper;->getCutoffTimestampMs(J)J

    move-result-wide v0

    .line 307
    invoke-static {v0, v1}, Lio/sentry/metrics/MetricsHelper;->getTimeBucketKey(J)J

    move-result-wide v0

    iget-object p0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private getOrAddTimeBucket(J)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/Metric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 315
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v1, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 319
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 323
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private isOverWeight()Z
    .locals 2

    iget-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 288
    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    iget-object v1, p0, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v0, v1

    iget p0, p0, Lio/sentry/MetricsAggregator;->maxWeight:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private nowMillis()J
    .locals 3

    .line 352
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lio/sentry/MetricsAggregator;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/sentry/MetricsAggregator;->isClosed:Z

    iget-object v1, p0, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    const-wide/16 v2, 0x0

    .line 334
    invoke-interface {v1, v2, v3}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {p0, v0}, Lio/sentry/MetricsAggregator;->flush(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 335
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 112
    sget-object v1, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public flush(Z)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 251
    invoke-direct {p0}, Lio/sentry/MetricsAggregator;->isOverWeight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    .line 252
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Metrics: total weight exceeded, flushing all buckets"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/MetricsAggregator;->getFlushableBuckets(Z)Ljava/util/Set;

    move-result-object p1

    .line 257
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    .line 258
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Metrics: nothing to flush"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    .line 261
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Metrics: flushing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " buckets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 265
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 266
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 268
    monitor-enter v5

    .line 269
    :try_start_0
    invoke-static {v5}, Lio/sentry/MetricsAggregator;->getBucketWeight(Ljava/util/Map;)I

    move-result v6

    iget-object v7, p0, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v6, v6

    .line 270
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 272
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 273
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-nez v2, :cond_4

    iget-object p0, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    .line 279
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Metrics: only empty buckets found"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    .line 283
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Metrics: capturing metrics"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/MetricsAggregator;->client:Lio/sentry/metrics/IMetricsClient;

    .line 284
    new-instance p1, Lio/sentry/metrics/EncodedMetrics;

    invoke-direct {p1, v1}, Lio/sentry/metrics/EncodedMetrics;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1}, Lio/sentry/metrics/IMetricsClient;->captureMetrics(Lio/sentry/metrics/EncodedMetrics;)Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 101
    sget-object v1, Lio/sentry/metrics/MetricType;->Gauge:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 90
    sget-object v1, Lio/sentry/metrics/MetricType;->Counter:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lio/sentry/MetricsAggregator;->flush(Z)V

    .line 344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    const-wide/16 v1, 0x1388

    .line 346
    invoke-interface {v0, p0, v1, v2}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 348
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 123
    sget-object v1, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    move v0, p2

    int-to-double v3, v0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    sget-object v0, Lio/sentry/MetricsAggregator;->UTF8:Ljava/nio/charset/Charset;

    move-object v1, p2

    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 137
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v2, 0x0

    .line 138
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 139
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 141
    sget-object v2, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    int-to-double v4, v0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;Lio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/sentry/MeasurementUnit$Duration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lio/sentry/MetricsAggregator;->nowMillis()J

    move-result-wide v7

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 154
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 157
    invoke-static {p3, v2, v3}, Lio/sentry/metrics/MetricsHelper;->convertNanosTo(Lio/sentry/MeasurementUnit$Duration;J)D

    move-result-wide v3

    .line 158
    sget-object v1, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void

    :catchall_0
    move-exception p2

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 157
    invoke-static {p3, v2, v3}, Lio/sentry/metrics/MetricsHelper;->convertNanosTo(Lio/sentry/MeasurementUnit$Duration;J)D

    move-result-wide v3

    .line 158
    sget-object v1, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    .line 159
    throw p2
.end method
