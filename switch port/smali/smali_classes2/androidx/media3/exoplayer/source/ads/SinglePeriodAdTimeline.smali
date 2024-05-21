.class public final Landroidx/media3/exoplayer/source/ads/SinglePeriodAdTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "SinglePeriodAdTimeline.java"


# instance fields
.field private final adPlaybackState:Landroidx/media3/common/AdPlaybackState;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/AdPlaybackState;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 42
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 43
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12

    .line 49
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/SinglePeriodAdTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 51
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v0, p1, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_0
    move-wide v6, v0

    .line 52
    iget-object v3, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v4, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget v5, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 57
    invoke-virtual {p2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v8

    iget-object v10, p0, Landroidx/media3/exoplayer/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-boolean v11, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    move-object v2, p2

    .line 52
    invoke-virtual/range {v2 .. v11}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    return-object p2
.end method
