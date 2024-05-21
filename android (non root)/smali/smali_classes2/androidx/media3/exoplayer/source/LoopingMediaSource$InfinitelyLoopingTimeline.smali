.class final Landroidx/media3/exoplayer/source/LoopingMediaSource$InfinitelyLoopingTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfinitelyLoopingTimeline"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public getNextWindowIndex(IIZ)I
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 208
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 210
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getFirstWindowIndex(Z)I

    move-result p1

    :cond_0
    return p1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 218
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 220
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getLastWindowIndex(Z)I

    move-result p1

    :cond_0
    return p1
.end method
