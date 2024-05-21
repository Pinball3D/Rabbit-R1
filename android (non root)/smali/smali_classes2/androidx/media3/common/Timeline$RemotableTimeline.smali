.class public final Landroidx/media3/common/Timeline$RemotableTimeline;
.super Landroidx/media3/common/Timeline;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemotableTimeline"
.end annotation


# instance fields
.field private final periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;"
        }
    .end annotation
.end field

.field private final shuffledWindowIndices:[I

.field private final windowIndicesInShuffled:[I

.field private final windows:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;[I)V"
        }
    .end annotation

    .line 1534
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 1535
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windows:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->periods:Lcom/google/common/collect/ImmutableList;

    iput-object p3, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    .line 1539
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    .line 1540
    :goto_1
    array-length p1, p3

    if-ge v2, p1, :cond_1

    iget-object p1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    .line 1541
    aget p2, p3, v2

    aput v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 1

    .line 1616
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    .line 1619
    aget v0, p0, v0

    :cond_1
    return v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    .line 1643
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getLastWindowIndex(Z)I
    .locals 1

    .line 1606
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    .line 1610
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->getWindowCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget p0, p1, p0

    goto :goto_0

    .line 1611
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->getWindowCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1578
    :cond_0
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getLastWindowIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 1580
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getFirstWindowIndex(Z)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    iget-object p0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    .line 1584
    aget p0, p0, p1

    add-int/2addr p0, v0

    aget p0, p2, p0

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p1, 0x1

    :goto_1
    return p0
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 10

    iget-object p0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1629
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Timeline$Period;

    .line 1630
    iget-object v1, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget v3, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-wide v6, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 1636
    invoke-static {p0}, Landroidx/media3/common/Timeline$Period;->access$000(Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v8

    iget-boolean v9, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    move-object v0, p2

    .line 1630
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    return-object p2
.end method

.method public getPeriodCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1624
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1594
    :cond_0
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 1596
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getLastWindowIndex(Z)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    iget-object p0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    .line 1600
    aget p0, p0, p1

    sub-int/2addr p0, v0

    aget p0, p2, p0

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p1, -0x1

    :goto_1
    return p0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 0

    .line 1648
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 22

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/media3/common/Timeline$RemotableTimeline;->windows:Lcom/google/common/collect/ImmutableList;

    move/from16 v2, p1

    .line 1552
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/media3/common/Timeline$Window;

    .line 1553
    iget-object v1, v13, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v2, v13, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, v13, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    iget-wide v4, v13, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v6, v13, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v8, v13, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-boolean v10, v13, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    iget-boolean v11, v13, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    iget-object v12, v13, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v14, v13, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    move-object/from16 p3, v0

    move-object v0, v13

    move-wide v13, v14

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    iget-wide v1, v0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    move-wide v15, v1

    iget v1, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    move/from16 v18, v1

    iget-wide v1, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    move-wide/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    move-object/from16 v1, v21

    .line 1568
    iget-boolean v0, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object v1
.end method

.method public getWindowCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windows:Lcom/google/common/collect/ImmutableList;

    .line 1547
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method
