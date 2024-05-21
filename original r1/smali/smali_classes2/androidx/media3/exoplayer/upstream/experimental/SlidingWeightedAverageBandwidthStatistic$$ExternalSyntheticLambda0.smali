.class public final synthetic Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final shouldEvictSample(Ljava/util/Deque;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;->f$0:J

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->lambda$getMaxCountEvictionFunction$0(JLjava/util/Deque;)Z

    move-result p0

    return p0
.end method
