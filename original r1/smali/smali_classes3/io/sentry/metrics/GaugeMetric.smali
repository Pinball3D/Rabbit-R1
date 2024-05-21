.class public final Lio/sentry/metrics/GaugeMetric;
.super Lio/sentry/metrics/Metric;
.source "GaugeMetric.java"


# instance fields
.field private count:I

.field private last:D

.field private max:D

.field private min:D

.field private sum:D


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

    .line 25
    sget-object v0, Lio/sentry/metrics/MetricType;->Gauge:Lio/sentry/metrics/MetricType;

    invoke-direct {p0, v0, p1, p4, p5}, Lio/sentry/metrics/Metric;-><init>(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V

    iput-wide p2, p0, Lio/sentry/metrics/GaugeMetric;->last:D

    iput-wide p2, p0, Lio/sentry/metrics/GaugeMetric;->min:D

    iput-wide p2, p0, Lio/sentry/metrics/GaugeMetric;->max:D

    iput-wide p2, p0, Lio/sentry/metrics/GaugeMetric;->sum:D

    const/4 p1, 0x1

    iput p1, p0, Lio/sentry/metrics/GaugeMetric;->count:I

    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 2

    iput-wide p1, p0, Lio/sentry/metrics/GaugeMetric;->last:D

    iget-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->min:D

    .line 37
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->min:D

    iget-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->max:D

    .line 38
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->max:D

    iget-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->sum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->sum:D

    iget p1, p0, Lio/sentry/metrics/GaugeMetric;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/sentry/metrics/GaugeMetric;->count:I

    return-void
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lio/sentry/metrics/GaugeMetric;->count:I

    return p0
.end method

.method public getLast()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->last:D

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->min:D

    return-wide v0
.end method

.method public getSum()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/metrics/GaugeMetric;->sum:D

    return-wide v0
.end method

.method public getWeight()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public serialize()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Number;

    iget-wide v1, p0, Lio/sentry/metrics/GaugeMetric;->last:D

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/sentry/metrics/GaugeMetric;->min:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/sentry/metrics/GaugeMetric;->max:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/sentry/metrics/GaugeMetric;->sum:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Lio/sentry/metrics/GaugeMetric;->count:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
