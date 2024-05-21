.class public interface abstract Lio/sentry/IMetricsAggregator;
.super Ljava/lang/Object;
.source "IMetricsAggregator.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
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
.end method

.method public abstract flush(Z)V
.end method

.method public abstract gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
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
.end method

.method public abstract increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
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
.end method

.method public abstract set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
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
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
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
.end method

.method public abstract timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;Lio/sentry/metrics/LocalMetricsAggregator;)V
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
.end method
