.class public Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;
.super Ljava/lang/Object;
.source "ExponentialWeightedAverageStatistic.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;


# static fields
.field public static final DEFAULT_SMOOTHING_FACTOR:D = 0.9999


# instance fields
.field private bitrateEstimate:J

.field private final smoothingFactor:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    .line 35
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->smoothingFactor:D

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    return-void
.end method


# virtual methods
.method public addSample(JJ)V
    .locals 4

    const-wide/32 v0, 0x7a1200

    mul-long/2addr v0, p1

    .line 50
    div-long/2addr v0, p3

    iget-wide p3, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p3, p3, v2

    if-nez p3, :cond_0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    return-void

    :cond_0
    iget-wide p3, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->smoothingFactor:D

    long-to-double p1, p1

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iget-wide p3, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    long-to-double p3, p3

    mul-double/2addr p3, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p1

    long-to-double p1, v0

    mul-double/2addr v2, p1

    add-double/2addr p3, v2

    double-to-long p1, p3

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    return-void
.end method

.method public getBandwidthEstimate()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    return-void
.end method
