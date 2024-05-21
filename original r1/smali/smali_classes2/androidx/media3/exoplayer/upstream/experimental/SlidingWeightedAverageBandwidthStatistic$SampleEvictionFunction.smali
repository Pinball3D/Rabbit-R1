.class public interface abstract Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
.super Ljava/lang/Object;
.source "SlidingWeightedAverageBandwidthStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SampleEvictionFunction"
.end annotation


# virtual methods
.method public abstract shouldEvictSample(Ljava/util/Deque;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;",
            ">;)Z"
        }
    .end annotation
.end method
