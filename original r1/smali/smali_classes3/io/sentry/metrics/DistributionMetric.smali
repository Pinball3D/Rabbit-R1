.class public final Lio/sentry/metrics/DistributionMetric;
.super Lio/sentry/metrics/Metric;
.source "DistributionMetric.java"


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 1
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

    .line 21
    sget-object v0, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    invoke-direct {p0, v0, p1, p4, p5}, Lio/sentry/metrics/Metric;-><init>(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/sentry/metrics/DistributionMetric;->values:Ljava/util/List;

    .line 22
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 0

    iget-object p0, p0, Lio/sentry/metrics/DistributionMetric;->values:Ljava/util/List;

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getWeight()I
    .locals 0

    iget-object p0, p0, Lio/sentry/metrics/DistributionMetric;->values:Ljava/util/List;

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public serialize()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/metrics/DistributionMetric;->values:Ljava/util/List;

    return-object p0
.end method
