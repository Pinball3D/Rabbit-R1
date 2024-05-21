.class synthetic Lio/sentry/metrics/MetricsHelper$1;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/metrics/MetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$sentry$MeasurementUnit$Duration:[I

.field static final synthetic $SwitchMap$io$sentry$metrics$MetricType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 184
    invoke-static {}, Lio/sentry/MeasurementUnit$Duration;->values()[Lio/sentry/MeasurementUnit$Duration;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/sentry/MeasurementUnit$Duration;->NANOSECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v2}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    sget-object v3, Lio/sentry/MeasurementUnit$Duration;->MICROSECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v3}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    sget-object v4, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v4}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    sget-object v5, Lio/sentry/MeasurementUnit$Duration;->SECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v5}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    sget-object v5, Lio/sentry/MeasurementUnit$Duration;->MINUTE:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v5}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    sget-object v5, Lio/sentry/MeasurementUnit$Duration;->HOUR:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v5}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    sget-object v5, Lio/sentry/MeasurementUnit$Duration;->DAY:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v5}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    sget-object v5, Lio/sentry/MeasurementUnit$Duration;->WEEK:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v5}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 93
    :catch_7
    invoke-static {}, Lio/sentry/metrics/MetricType;->values()[Lio/sentry/metrics/MetricType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    :try_start_8
    sget-object v5, Lio/sentry/metrics/MetricType;->Counter:Lio/sentry/metrics/MetricType;

    invoke-virtual {v5}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    sget-object v4, Lio/sentry/metrics/MetricType;->Gauge:Lio/sentry/metrics/MetricType;

    invoke-virtual {v4}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    sget-object v1, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    invoke-virtual {v1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    sget-object v1, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    invoke-virtual {v1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
