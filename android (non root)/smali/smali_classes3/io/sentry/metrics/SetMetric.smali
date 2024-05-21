.class public final Lio/sentry/metrics/SetMetric;
.super Lio/sentry/metrics/Metric;
.source "SetMetric.java"


# instance fields
.field private final values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    sget-object v0, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/sentry/metrics/Metric;-><init>(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/sentry/metrics/SetMetric;->values:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 0

    iget-object p0, p0, Lio/sentry/metrics/SetMetric;->values:Ljava/util/Set;

    double-to-int p1, p1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getWeight()I
    .locals 0

    iget-object p0, p0, Lio/sentry/metrics/SetMetric;->values:Ljava/util/Set;

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->size()I

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

    iget-object p0, p0, Lio/sentry/metrics/SetMetric;->values:Ljava/util/Set;

    return-object p0
.end method
