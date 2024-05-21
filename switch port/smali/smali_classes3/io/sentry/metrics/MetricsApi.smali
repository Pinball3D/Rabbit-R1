.class public final Lio/sentry/metrics/MetricsApi;
.super Ljava/lang/Object;
.source "MetricsApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/metrics/MetricsApi$IMetricsInterface;
    }
.end annotation


# instance fields
.field private final aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;


# direct methods
.method public constructor <init>(Lio/sentry/metrics/MetricsApi$IMetricsInterface;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    return-void
.end method


# virtual methods
.method public distribution(Ljava/lang/String;D)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 185
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 198
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 215
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p6, :cond_0

    .line 235
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 237
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 239
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v11

    iget-object v0, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 242
    invoke-interface {v0}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    .line 243
    invoke-interface/range {v3 .. v11}, Lio/sentry/IMetricsAggregator;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;D)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 118
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 130
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 147
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p6, :cond_0

    .line 167
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 169
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 171
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v11

    iget-object v0, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 174
    invoke-interface {v0}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    .line 175
    invoke-interface/range {v3 .. v11}, Lio/sentry/IMetricsAggregator;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public increment(Ljava/lang/String;)V
    .locals 7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 40
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;D)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 50
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 63
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 80
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p6, :cond_0

    .line 100
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 102
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 104
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v11

    iget-object v0, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 107
    invoke-interface {v0}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    .line 108
    invoke-interface/range {v3 .. v11}, Lio/sentry/IMetricsAggregator;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 253
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 266
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 283
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
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
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 303
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    iget-object p5, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 305
    invoke-interface {p5}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object p5

    invoke-static {p4, p5}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object p4, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 307
    invoke-interface {p4}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v9

    iget-object p0, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 310
    invoke-interface {p0}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 311
    invoke-interface/range {v2 .. v9}, Lio/sentry/IMetricsAggregator;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 321
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 336
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 353
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 373
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    iget-object p5, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 375
    invoke-interface {p5}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object p5

    invoke-static {p4, p5}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object p4, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 377
    invoke-interface {p4}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v9

    iget-object p0, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 380
    invoke-interface {p0}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 381
    invoke-interface/range {v2 .. v9}, Lio/sentry/IMetricsAggregator;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, p2, v0, v0}, Lio/sentry/metrics/MetricsApi;->timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;)V

    return-void
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;)V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/metrics/MetricsApi;->timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;)V

    return-void
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/sentry/MeasurementUnit$Duration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    sget-object p3, Lio/sentry/MeasurementUnit$Duration;->SECOND:Lio/sentry/MeasurementUnit$Duration;

    :goto_0
    move-object v3, p3

    iget-object p3, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 427
    invoke-interface {p3}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object p3

    invoke-static {p4, p3}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iget-object p3, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 429
    invoke-interface {p3}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v5

    iget-object p3, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    const-string v0, "metric.timing"

    .line 431
    invoke-interface {p3, v0, p1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->startSpanForMetric(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 433
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Lio/sentry/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 439
    invoke-interface {p0}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    .line 440
    invoke-interface/range {v0 .. v5}, Lio/sentry/IMetricsAggregator;->timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;Lio/sentry/metrics/LocalMetricsAggregator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 443
    invoke-interface {p3}, Lio/sentry/ISpan;->finish()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lio/sentry/ISpan;->finish()V

    .line 445
    :cond_3
    throw p0
.end method
