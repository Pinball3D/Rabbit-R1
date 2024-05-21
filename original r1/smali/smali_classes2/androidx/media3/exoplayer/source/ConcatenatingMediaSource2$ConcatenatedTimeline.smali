.class final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
.super Landroidx/media3/common/Timeline;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final defaultPositionUs:J

.field private final durationUs:J

.field private final firstPeriodIndices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final manifest:Ljava/lang/Object;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final timelines:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZJJLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;ZZJJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 514
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isSeekable:Z

    iput-boolean p6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isDynamic:Z

    iput-wide p7, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->durationUs:J

    iput-wide p9, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->defaultPositionUs:J

    iput-object p11, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->manifest:Ljava/lang/Object;

    return-void
.end method

.method private getChildIndexByPeriodIndex(I)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 p1, p1, 0x1

    .line 607
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    .line 606
    invoke-static {p0, p1, v0, v0}, Landroidx/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 3

    .line 585
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->access$100(Ljava/lang/Object;)I

    move-result v0

    .line 589
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    .line 590
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Timeline;

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    .line 593
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int v1, p0, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 3

    .line 572
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    .line 573
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    .line 574
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Timeline;

    sub-int v1, p1, v1

    invoke-virtual {v2, v1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    const/4 v1, 0x0

    .line 575
    iput v1, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    .line 576
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    iput-wide p0, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    if-eqz p3, :cond_0

    .line 578
    iget-object p0, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->access$300(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 4

    .line 558
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->access$100(Ljava/lang/Object;)I

    move-result v0

    .line 559
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    .line 560
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    .line 562
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 563
    invoke-virtual {v2, v1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    const/4 v1, 0x0

    .line 564
    iput v1, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    .line 565
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 566
    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    return-object p2
.end method

.method public getPeriodCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    .line 533
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 2

    .line 598
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    .line 599
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    .line 601
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Timeline;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    .line 602
    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->access$300(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 539
    sget-object v2, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->manifest:Ljava/lang/Object;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v11, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isSeekable:Z

    iget-boolean v12, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isDynamic:Z

    const/4 v13, 0x0

    iget-wide v14, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->defaultPositionUs:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->durationUs:J

    move-wide/from16 v16, v5

    const/16 v18, 0x0

    .line 552
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->getPeriodCount()I

    move-result v5

    add-int/lit8 v19, v5, -0x1

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    const/4 v5, 0x0

    .line 553
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    move-wide/from16 v20, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 539
    invoke-virtual/range {v1 .. v21}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
