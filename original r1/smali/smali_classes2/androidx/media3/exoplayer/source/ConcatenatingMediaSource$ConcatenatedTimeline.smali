.class final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final childIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Landroidx/media3/common/Timeline;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            "Z)V"
        }
    .end annotation

    .line 941
    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 942
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 943
    new-array p3, p2, [I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 944
    new-array p3, p2, [I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 945
    new-array p3, p2, [Landroidx/media3/common/Timeline;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 946
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 947
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 951
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 952
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 953
    aput p2, v2, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 954
    aput p3, v2, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 955
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 956
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 957
    iget-object v1, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    aput-object v1, v2, v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 958
    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    :cond_0
    iput p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    iput p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 976
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 966
    invoke-static {p0, p1, v0, v0}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result p0

    return p0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 971
    invoke-static {p0, p1, v0, v0}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result p0

    return p0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 997
    aget-object p0, p0, p1

    return-object p0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 987
    aget p0, p0, p1

    return p0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 992
    aget p0, p0, p1

    return p0
.end method

.method public getPeriodCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return p0
.end method

.method protected getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 982
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getWindowCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    return p0
.end method
