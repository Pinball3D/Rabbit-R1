.class public Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;
.super Ljava/lang/Object;
.source "CombinedParallelSampleBandwidthEstimator.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    }
.end annotation


# instance fields
.field private bandwidthEstimate:J

.field private final bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final eventDispatcher:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

.field private lastReportedBandwidthEstimate:J

.field private final minBytesTransferred:J

.field private final minSamples:I

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalSamplesAdded:I


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$100(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    .line 127
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$200(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minSamples:I

    .line 128
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$300(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minBytesTransferred:J

    .line 129
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$400(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Landroidx/media3/common/util/Clock;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 130
    new-instance p1, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;-><init>(Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)V

    return-void
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p4, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 210
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->bandwidthSample(IJJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    .line 137
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->addListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public getBandwidthEstimate()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    return-wide v0
.end method

.method public onBytesTransferred(Landroidx/media3/datasource/DataSource;I)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    return-void
.end method

.method public onNetworkTypeChange(J)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 190
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long v4, v0, v4

    long-to-int v2, v4

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iget-wide v6, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    move-object v4, p0

    move-wide v8, p1

    .line 192
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    .line 193
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;->reset()V

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    iput v3, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    return-void
.end method

.method public onTransferEnd(Landroidx/media3/datasource/DataSource;)V
    .locals 13

    iget p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 164
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    if-lez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 169
    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    iget-wide v5, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v1

    .line 172
    invoke-interface {p1, v5, v6, v7, v8}, Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;->addSample(JJ)V

    iget p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    iget v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minSamples:I

    if-le p1, v0, :cond_2

    iget-wide v5, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minBytesTransferred:J

    cmp-long p1, v5, v7

    if-lez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    .line 175
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;->getBandwidthEstimate()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    :cond_2
    long-to-int v8, v1

    iget-wide v9, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    iget-wide v11, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    move-object v7, p0

    .line 177
    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    iput-wide v3, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    :cond_3
    return-void
.end method

.method public onTransferInitializing(Landroidx/media3/datasource/DataSource;)V
    .locals 0

    return-void
.end method

.method public onTransferStart(Landroidx/media3/datasource/DataSource;)V
    .locals 2

    iget p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 151
    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    :cond_0
    iget p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    return-void
.end method

.method public removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    .line 142
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method
