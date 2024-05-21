.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothBursty"
.end annotation


# instance fields
.field final maxBurstSeconds:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    iput-wide p2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    return-void
.end method


# virtual methods
.method coolDownIntervalMicros()D
    .locals 2

    .line 308
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->stableIntervalMicros:D

    return-wide v0
.end method

.method doSetRate(DD)V
    .locals 2

    .line 288
    iget-wide p3, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    mul-double/2addr v0, p1

    .line 289
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p1, p3, p1

    if-nez p1, :cond_0

    .line 292
    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    cmpl-double v0, p3, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    mul-double/2addr p1, v0

    div-double/2addr p1, p3

    :goto_0
    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    :goto_1
    return-void
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method
