.class public final Lio/sentry/metrics/NoopMetricsAggregator;
.super Ljava/lang/Object;
.source "NoopMetricsAggregator.java"

# interfaces
.implements Lio/sentry/IMetricsAggregator;
.implements Lio/sentry/metrics/MetricsApi$IMetricsInterface;


# static fields
.field private static final instance:Lio/sentry/metrics/NoopMetricsAggregator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lio/sentry/metrics/NoopMetricsAggregator;

    invoke-direct {v0}, Lio/sentry/metrics/NoopMetricsAggregator;-><init>()V

    sput-object v0, Lio/sentry/metrics/NoopMetricsAggregator;->instance:Lio/sentry/metrics/NoopMetricsAggregator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/metrics/NoopMetricsAggregator;
    .locals 1

    sget-object v0, Lio/sentry/metrics/NoopMetricsAggregator;->instance:Lio/sentry/metrics/NoopMetricsAggregator;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 0
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

    return-void
.end method

.method public flush(Z)V
    .locals 0

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 0
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

    return-void
.end method

.method public getDefaultTagsForMetrics()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsAggregator()Lio/sentry/IMetricsAggregator;
    .locals 0

    return-object p0
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 0
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

    return-void
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 0
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

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 0
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

    return-void
.end method

.method public startSpanForMetric(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;Lio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 0
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

    .line 85
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
