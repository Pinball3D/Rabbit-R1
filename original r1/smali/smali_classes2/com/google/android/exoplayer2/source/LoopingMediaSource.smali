.class public final Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.super Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;,
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private final loopCount:I

.field private final mediaPeriodToChildMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    const v0, 0x7fffffff

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V
    .locals 2

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    if-lez p2, :cond_0

    const/4 v1, 0x1

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    .line 69
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    .line 93
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 95
    invoke-interface {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    .line 96
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    check-cast v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 77
    new-instance v1, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;I)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    :goto_0
    return-object v1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    .line 123
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :cond_0
    return-object p1
.end method

.method public isSingleWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;I)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    .line 104
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    .line 106
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
