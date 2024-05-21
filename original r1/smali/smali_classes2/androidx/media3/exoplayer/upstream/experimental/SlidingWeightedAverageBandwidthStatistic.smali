.class public Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;
.super Ljava/lang/Object;
.source "SlidingWeightedAverageBandwidthStatistic.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;,
        Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa


# instance fields
.field private bitrateWeightProductSum:D

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final sampleEvictionFunction:Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

.field private final samples:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private weightSum:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xa

    .line 99
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->getMaxCountEvictionFunction(J)Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>(Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;)V
    .locals 1

    .line 109
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>(Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method constructor <init>(Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;Landroidx/media3/common/util/Clock;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->sampleEvictionFunction:Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method public static getAgeBasedEvictionFunction(J)Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
    .locals 1

    .line 73
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->getAgeBasedEvictionFunction(JLandroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    move-result-object p0

    return-object p0
.end method

.method static getAgeBasedEvictionFunction(JLandroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
    .locals 1

    .line 79
    new-instance v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;-><init>(JLandroidx/media3/common/util/Clock;)V

    return-object v0
.end method

.method public static getMaxCountEvictionFunction(J)Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
    .locals 1

    .line 68
    new-instance v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;-><init>(J)V

    return-object v0
.end method

.method static synthetic lambda$getAgeBasedEvictionFunction$1(JLandroidx/media3/common/util/Clock;Ljava/util/Deque;)Z
    .locals 4

    .line 80
    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 83
    :cond_0
    invoke-interface {p3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    invoke-static {p3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    iget-wide v2, p3, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->timeAddedMs:J

    add-long/2addr v2, p0

    invoke-interface {p2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic lambda$getMaxCountEvictionFunction$0(JLjava/util/Deque;)Z
    .locals 2

    .line 68
    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    int-to-long v0, p2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addSample(JJ)V
    .locals 9

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->sampleEvictionFunction:Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 129
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;->shouldEvictSample(Ljava/util/Deque;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    iget-wide v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    .line 131
    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->bitrate:J

    long-to-double v3, v3

    iget-wide v5, v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    iget-wide v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    .line 132
    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    goto :goto_0

    :cond_0
    long-to-double v0, p1

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/32 v0, 0x7a1200

    mul-long/2addr p1, v0

    .line 136
    div-long v3, p1, p3

    .line 137
    new-instance p1, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {p2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;-><init>(JDJ)V

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 138
    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-wide p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    .line 139
    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->bitrate:J

    long-to-double v0, v0

    iget-wide v2, p1, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    mul-double/2addr v0, v2

    add-double/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    iget-wide p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    .line 140
    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    add-double/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    return-void
.end method

.method public getBandwidthEstimate()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    iget-wide v2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    return-void
.end method
