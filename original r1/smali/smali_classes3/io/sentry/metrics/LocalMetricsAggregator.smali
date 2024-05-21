.class public final Lio/sentry/metrics/LocalMetricsAggregator;
.super Ljava/lang/Object;
.source "LocalMetricsAggregator.java"


# instance fields
.field private final buckets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/GaugeMetric;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/MetricType;",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 34
    invoke-static {p2, p3, p6}, Lio/sentry/metrics/MetricsHelper;->getExportKey(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;)Ljava/lang/String;

    move-result-object p2

    iget-object p8, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    .line 36
    monitor-enter p8

    :try_start_0
    iget-object p9, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    .line 37
    invoke-interface {p9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/util/Map;

    if-nez p9, :cond_0

    .line 40
    new-instance p9, Ljava/util/HashMap;

    invoke-direct {p9}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    .line 41
    invoke-interface {p0, p2, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    invoke-interface {p9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/metrics/GaugeMetric;

    if-nez p0, :cond_1

    .line 46
    new-instance p0, Lio/sentry/metrics/GaugeMetric;

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lio/sentry/metrics/GaugeMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    .line 47
    invoke-interface {p9, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p4, p5}, Lio/sentry/metrics/GaugeMetric;->add(D)V

    .line 51
    :goto_0
    monitor-exit p8

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSummaries()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/MetricSummary;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    .line 57
    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/metrics/GaugeMetric;

    .line 62
    new-instance v15, Lio/sentry/protocol/MetricSummary;

    .line 64
    invoke-virtual {v6}, Lio/sentry/metrics/GaugeMetric;->getMin()D

    move-result-wide v8

    .line 65
    invoke-virtual {v6}, Lio/sentry/metrics/GaugeMetric;->getMax()D

    move-result-wide v10

    .line 66
    invoke-virtual {v6}, Lio/sentry/metrics/GaugeMetric;->getSum()D

    move-result-wide v12

    .line 67
    invoke-virtual {v6}, Lio/sentry/metrics/GaugeMetric;->getCount()I

    move-result v14

    .line 68
    invoke-virtual {v6}, Lio/sentry/metrics/GaugeMetric;->getTags()Ljava/util/Map;

    move-result-object v6

    move-object v7, v15

    move-object/from16 p0, v0

    move-object v0, v15

    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Lio/sentry/protocol/MetricSummary;-><init>(DDDILjava/util/Map;)V

    .line 62
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    move-object/from16 p0, v0

    .line 70
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_0

    .line 72
    :cond_1
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
