.class final Lcom/google/android/exoplayer2/PlaylistTimeline;
.super Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;
.source "PlaylistTimeline.java"


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

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/exoplayer2/MediaSourceInfoHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 42
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 43
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 44
    new-array v1, p2, [Lcom/google/android/exoplayer2/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 45
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 46
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    move v1, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceInfoHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 51
    invoke-interface {v2}, Lcom/google/android/exoplayer2/MediaSourceInfoHolder;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 52
    aput v0, v3, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 53
    aput p2, v3, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 54
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 55
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    add-int/2addr p2, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 56
    invoke-interface {v2}, Lcom/google/android/exoplayer2/MediaSourceInfoHolder;->getUid()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 57
    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->windowCount:I

    iput p2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->periodCount:I

    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p0

    return p0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p0

    return p0
.end method

.method getChildTimelines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Timeline;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 65
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 101
    aget-object p0, p0, p1

    return-object p0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 91
    aget p0, p0, p1

    return p0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 96
    aget p0, p0, p1

    return p0
.end method

.method public getPeriodCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->periodCount:I

    return p0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 86
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getWindowCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->windowCount:I

    return p0
.end method
