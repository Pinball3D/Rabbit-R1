.class final Lio/sentry/android/core/SentryFrameMetrics;
.super Ljava/lang/Object;
.source "SentryFrameMetrics.java"


# instance fields
.field private frozenFrameCount:I

.field private frozenFrameDelayNanos:J

.field private normalFrameCount:I

.field private slowFrameCount:I

.field private slowFrameDelayNanos:J

.field private totalDurationNanos:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIJIJJ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    iput p2, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    iput-wide p3, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    iput p5, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    iput-wide p6, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    iput-wide p8, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    return-void
.end method


# virtual methods
.method public addFrame(JJZZ)V
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    iget p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    iget-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    iget p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    iput v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    iput v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    iput-wide v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    iput-wide v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    return-void
.end method

.method public containsValidData()Z
    .locals 4

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public diffTo(Lio/sentry/android/core/SentryFrameMetrics;)Lio/sentry/android/core/SentryFrameMetrics;
    .locals 11

    .line 112
    new-instance v10, Lio/sentry/android/core/SentryFrameMetrics;

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    iget v1, p1, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    sub-int v1, v0, v1

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    iget v2, p1, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    sub-int v2, v0, v2

    iget-wide v3, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    iget-wide v5, p1, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    sub-long/2addr v3, v5

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    iget v5, p1, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    sub-int v5, v0, v5

    iget-wide v6, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    iget-wide v8, p1, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    iget-wide p0, p1, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    sub-long/2addr v8, p0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/sentry/android/core/SentryFrameMetrics;-><init>(IIJIJJ)V

    return-object v10
.end method

.method public duplicate()Lio/sentry/android/core/SentryFrameMetrics;
    .locals 11

    .line 97
    new-instance v10, Lio/sentry/android/core/SentryFrameMetrics;

    iget v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    iget v2, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    iget-wide v3, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    iget v5, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    iget-wide v6, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    iget-wide v8, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/sentry/android/core/SentryFrameMetrics;-><init>(IIJIJJ)V

    return-object v10
.end method

.method public getFrozenFrameCount()I
    .locals 0

    iget p0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    return p0
.end method

.method public getFrozenFrameDelayNanos()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    return-wide v0
.end method

.method public getNormalFrameCount()I
    .locals 0

    iget p0, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    return p0
.end method

.method public getSlowFrameCount()I
    .locals 0

    iget p0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    return p0
.end method

.method public getSlowFrameDelayNanos()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    return-wide v0
.end method

.method public getTotalDurationNanos()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    return-wide v0
.end method

.method public getTotalFrameCount()I
    .locals 2

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->normalFrameCount:I

    iget v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    add-int/2addr v0, v1

    iget p0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    add-int/2addr v0, p0

    return v0
.end method
