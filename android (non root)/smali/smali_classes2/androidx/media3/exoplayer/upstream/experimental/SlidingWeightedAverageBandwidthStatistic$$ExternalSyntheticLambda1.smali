.class public final synthetic Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/media3/common/util/Clock;


# direct methods
.method public synthetic constructor <init>(JLandroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$0:J

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final shouldEvictSample(Ljava/util/Deque;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$0:J

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/common/util/Clock;

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->lambda$getAgeBasedEvictionFunction$1(JLandroidx/media3/common/util/Clock;Ljava/util/Deque;)Z

    move-result p0

    return p0
.end method
