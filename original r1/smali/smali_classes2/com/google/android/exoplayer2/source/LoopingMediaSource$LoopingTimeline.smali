.class final Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
.super Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 2

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 138
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    if-lez v0, :cond_1

    const p0, 0x7fffffff

    .line 141
    div-int/2addr p0, v0

    if-gt p2, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p0, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 0

    .line 169
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 172
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 159
    div-int/2addr p1, p0

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 164
    div-int/2addr p1, p0

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int/2addr p1, p0

    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public getPeriodCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method

.method public getWindowCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, p0

    return v0
.end method
