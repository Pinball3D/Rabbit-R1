.class public Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
.super Ljava/lang/Object;
.source "CombinedParallelSampleBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

.field private clock:Landroidx/media3/common/util/Clock;

.field private minBytesTransferred:J

.field private minSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    .line 47
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)I
    .locals 0

    .line 38
    iget p0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minSamples:I

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Landroidx/media3/common/util/Clock;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;
    .locals 2

    .line 107
    new-instance v0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;-><init>(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$1;)V

    return-object v0
.end method

.method public setBandwidthStatistic(Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;)Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 0

    .line 59
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    return-object p0
.end method

.method setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method

.method public setMinBytesTransferred(J)Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J

    return-object p0
.end method

.method public setMinSamples(I)Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minSamples:I

    return-object p0
.end method
