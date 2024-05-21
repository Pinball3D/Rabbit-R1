.class public interface abstract Lio/sentry/metrics/MetricsApi$IMetricsInterface;
.super Ljava/lang/Object;
.source "MetricsApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/metrics/MetricsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMetricsInterface"
.end annotation


# virtual methods
.method public abstract getDefaultTagsForMetrics()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;
.end method

.method public abstract getMetricsAggregator()Lio/sentry/IMetricsAggregator;
.end method

.method public abstract startSpanForMetric(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
.end method
