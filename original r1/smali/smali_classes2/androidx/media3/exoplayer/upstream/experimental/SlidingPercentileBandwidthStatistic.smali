.class public Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;
.super Ljava/lang/Object;
.source "SlidingPercentileBandwidthStatistic.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa

.field public static final DEFAULT_PERCENTILE:D = 0.5


# instance fields
.field private bitrateEstimate:J

.field private final maxSampleCount:I

.field private final percentile:D

.field private final samples:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedSamples:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private weightSum:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 52
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->maxSampleCount:I

    iput-wide p2, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->percentile:D

    .line 65
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 66
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-void
.end method

.method private calculateBitrateEstimate()J
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    iget-wide v1, v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->percentile:D

    mul-double/2addr v1, v3

    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    .line 108
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-wide v9, v3

    move-wide v7, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 111
    invoke-static {v11}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v5, v12

    cmpl-double v12, v5, v1

    if-ltz v12, :cond_2

    cmp-long v0, v9, v3

    if-nez v0, :cond_1

    .line 114
    invoke-static {v11}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v0

    return-wide v0

    .line 118
    :cond_1
    invoke-static {v11}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v3

    sub-long/2addr v3, v9

    long-to-double v3, v3

    sub-double/2addr v1, v7

    mul-double/2addr v3, v1

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-long v0, v3

    add-long/2addr v9, v0

    return-wide v9

    .line 123
    :cond_2
    invoke-static {v11}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v9

    .line 125
    invoke-static {v11}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v7

    div-double/2addr v7, v14

    add-double/2addr v7, v5

    move-wide/from16 v16, v5

    move-wide v5, v7

    move-wide/from16 v7, v16

    goto :goto_0

    :cond_3
    return-wide v9
.end method


# virtual methods
.method public addSample(JJ)V
    .locals 5

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->maxSampleCount:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    .line 75
    invoke-static {v0}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    goto :goto_0

    :cond_0
    long-to-double v0, p1

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/32 v2, 0x7a1200

    mul-long/2addr p1, v2

    .line 79
    div-long/2addr p1, p3

    .line 80
    new-instance p3, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    invoke-direct {p3, p1, p2, v0, v1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;-><init>(JD)V

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 81
    invoke-virtual {p1, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    .line 82
    invoke-virtual {p1, p3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->calculateBitrateEstimate()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-void
.end method

.method public getBandwidthEstimate()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    .line 95
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-void
.end method
