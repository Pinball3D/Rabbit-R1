.class final Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Landroidx/media3/common/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;I)V
    .locals 2

    .line 137
    new-instance v0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media3/common/Timeline;

    .line 139
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 140
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iput p2, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    if-lez v0, :cond_1

    const p0, 0x7fffffff

    .line 143
    div-int/2addr p0, v0

    if-gt p2, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p0, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 0

    .line 171
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 174
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 161
    div-int/2addr p1, p0

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 166
    div-int/2addr p1, p0

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int/2addr p1, p0

    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public getPeriodCount()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget p0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public getWindowCount()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget p0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, p0

    return v0
.end method
