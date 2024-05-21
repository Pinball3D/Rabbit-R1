.class synthetic Lio/sentry/MetricsAggregator$1;
.super Ljava/lang/Object;
.source "MetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$sentry$metrics$MetricType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 198
    invoke-static {}, Lio/sentry/metrics/MetricType;->values()[Lio/sentry/metrics/MetricType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/sentry/MetricsAggregator$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    :try_start_0
    sget-object v1, Lio/sentry/metrics/MetricType;->Counter:Lio/sentry/metrics/MetricType;

    invoke-virtual {v1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/sentry/MetricsAggregator$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    sget-object v1, Lio/sentry/metrics/MetricType;->Gauge:Lio/sentry/metrics/MetricType;

    invoke-virtual {v1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/sentry/MetricsAggregator$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    sget-object v1, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    invoke-virtual {v1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lio/sentry/MetricsAggregator$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    sget-object v1, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    invoke-virtual {v1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
