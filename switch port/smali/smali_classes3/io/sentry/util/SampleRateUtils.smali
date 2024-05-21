.class public final Lio/sentry/util/SampleRateUtils;
.super Ljava/lang/Object;
.source "SampleRateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidProfilesSampleRate(Ljava/lang/Double;)Z
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidRate(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method

.method private static isValidRate(Ljava/lang/Double;Z)Z
    .locals 4

    if-nez p0, :cond_0

    return p1

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidSampleRate(Ljava/lang/Double;)Z
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidRate(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method

.method public static isValidTracesSampleRate(Ljava/lang/Double;)Z
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method

.method public static isValidTracesSampleRate(Ljava/lang/Double;Z)Z
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lio/sentry/util/SampleRateUtils;->isValidRate(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method
