.class final Landroidx/media3/exoplayer/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# static fields
.field public static final INITIAL_RENDERER_POSITION_OFFSET_US:J = 0xe8d4a51000L

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64


# instance fields
.field private final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field private final analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private length:I

.field private loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 98
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 99
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method

.method private areDurationsCompatible(JJ)Z
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p1, v0

    if-eqz p0, :cond_1

    cmp-long p0, p1, p3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private canKeepMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/MediaPeriodInfo;)Z
    .locals 4

    .line 620
    iget-wide v0, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    iget-object p0, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFirstMediaPeriodInfo(Landroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 7

    .line 679
    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    return-object p0
.end method

.method private getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 729
    iget-object v11, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 730
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object/from16 v1, p1

    .line 732
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v1

    const/4 v2, -0x1

    const/4 v12, 0x0

    if-ne v1, v2, :cond_0

    return-object v12

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v3, 0x1

    .line 741
    invoke-virtual {v9, v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v4, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 742
    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 743
    iget-object v3, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    .line 744
    invoke-virtual {v9, v4, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    const-wide/16 v7, 0x0

    if-ne v3, v1, :cond_3

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v13, p3

    .line 756
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    .line 751
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v12

    .line 760
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 761
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 763
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 764
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    goto :goto_0

    :cond_2
    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    :goto_0
    move-wide v5, v3

    move-wide v12, v7

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide v12, v7

    move-wide v15, v12

    :goto_1
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v1, p1

    move-wide v3, v12

    .line 772
    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v15, v3

    if-eqz v1, :cond_5

    .line 774
    iget-wide v5, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    .line 776
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 777
    invoke-direct {v0, v1, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->hasServerSideInsertedAds(Ljava/lang/Object;Landroidx/media3/common/Timeline;)Z

    move-result v1

    .line 779
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 781
    iget-wide v3, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move-wide v5, v12

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 784
    iget-wide v3, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move-wide v5, v3

    goto :goto_2

    :cond_5
    move-wide v5, v12

    :goto_2
    move-wide v3, v15

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 787
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 5

    .line 703
    iget-object v0, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 708
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    sub-long/2addr v1, p3

    .line 709
    iget-boolean p3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz p3, :cond_0

    .line 710
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    goto :goto_0

    .line 711
    :cond_0
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfoOfCurrentPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFollowingMediaPeriodInfoOfCurrentPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 802
    iget-object v10, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 803
    iget-object v11, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 804
    iget-object v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 805
    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    .line 806
    iget v4, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 807
    invoke-virtual {v1, v4}, Landroidx/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v1

    const/4 v12, 0x0

    if-ne v1, v3, :cond_0

    return-object v12

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 811
    iget v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 812
    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v5

    if-ge v5, v1, :cond_1

    .line 815
    iget-object v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v6, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v10, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 824
    :cond_1
    iget-wide v1, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 829
    iget v4, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-wide/from16 v13, p3

    .line 835
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    .line 830
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v12

    .line 839
    :cond_2
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 841
    :cond_3
    iget-object v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v4, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 842
    invoke-direct {p0, v9, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 844
    iget-object v5, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 847
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v6, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v10, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v10

    .line 844
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_4
    move-wide/from16 v13, p3

    .line 851
    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 852
    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 854
    invoke-direct/range {p0 .. p4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 857
    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 858
    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 859
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 860
    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 862
    iget v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v2

    if-eq v4, v2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_1

    .line 876
    :cond_7
    iget-object v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-wide v5, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 866
    :cond_8
    :goto_1
    iget-object v1, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 867
    invoke-direct {p0, v9, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 869
    iget-object v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 11

    move-object v0, p2

    .line 897
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v2, p0

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object v4, p1

    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 898
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 907
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 17

    move-object/from16 v0, p0

    .line 923
    new-instance v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 925
    iget-object v1, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v3, p1

    .line 927
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v2, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 928
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move/from16 v2, p3

    .line 930
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 931
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 933
    iget v1, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 934
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long v0, v8, v0

    .line 937
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_1
    move-wide v2, v4

    .line 939
    :goto_1
    new-instance v14, Landroidx/media3/exoplayer/MediaPeriodInfo;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object v1, v7

    move-wide/from16 v4, p5

    move-wide v6, v11

    move v11, v13

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v14
.end method

.method private getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 957
    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 958
    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 960
    invoke-virtual {v9, v5}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    if-ne v5, v8, :cond_1

    iget-object v10, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 965
    invoke-virtual {v10}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 966
    invoke-virtual {v10}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v6

    goto :goto_1

    :cond_1
    iget-object v10, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 967
    invoke-virtual {v10, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 968
    invoke-virtual {v10, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v10

    iget-object v12, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v12, v12, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    iget-object v10, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 969
    invoke-virtual {v10, v5}, Landroidx/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v6

    move v5, v8

    goto :goto_1

    :cond_2
    move v10, v7

    .line 975
    :goto_1
    new-instance v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v13, p7

    invoke-direct {v12, v2, v13, v14, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 976
    invoke-direct {v0, v12}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v2

    .line 977
    invoke-direct {v0, v1, v12}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v23

    .line 978
    invoke-direct {v0, v1, v12, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v24

    if-eq v5, v8, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 981
    invoke-virtual {v1, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v9, :cond_3

    move/from16 v21, v6

    goto :goto_2

    :cond_3
    move/from16 v21, v7

    :goto_2
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v8, :cond_4

    if-nez v9, :cond_4

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 985
    invoke-virtual {v1, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v8

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_5

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 986
    iget-wide v8, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_3
    move-wide/from16 v17, v8

    goto :goto_4

    :cond_5
    move-wide/from16 v17, v13

    :goto_4
    cmp-long v1, v17, v13

    if-eqz v1, :cond_7

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v17, v8

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    move-wide/from16 v19, v17

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 989
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v19, v0

    :goto_6
    cmp-long v0, v19, v13

    if-eqz v0, :cond_a

    cmp-long v0, v3, v19

    if-ltz v0, :cond_a

    if-nez v24, :cond_9

    if-nez v10, :cond_8

    goto :goto_7

    :cond_8
    move v6, v7

    :cond_9
    :goto_7
    int-to-long v0, v6

    sub-long v0, v19, v0

    const-wide/16 v3, 0x0

    .line 994
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v13, v0

    goto :goto_8

    :cond_a
    move-wide v13, v3

    .line 996
    :goto_8
    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-object v11, v0

    move-wide/from16 v15, p5

    move/from16 v22, v2

    invoke-direct/range {v11 .. v24}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v0
.end method

.method private getMinStartPositionAfterAdGroupUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;I)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1032
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1033
    invoke-virtual {p1, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1035
    iget-wide p0, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    return-wide p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1037
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private hasServerSideInsertedAds(Ljava/lang/Object;Landroidx/media3/common/Timeline;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 887
    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result p1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 888
    invoke-virtual {p2}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result p2

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 890
    invoke-virtual {v0, p2}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 891
    invoke-virtual {p0, p2}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide p0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 0

    .line 1009
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z
    .locals 6

    .line 1023
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1024
    invoke-virtual {p1, v1, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    .line 1025
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v0, p1

    .line 1026
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->isLastPeriod(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 3

    .line 1013
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1016
    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1017
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    .line 1018
    invoke-virtual {p1, v0, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne p0, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isSkippableAdPeriod(Landroidx/media3/common/Timeline$Period;)Z
    .locals 8

    .line 496
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 498
    invoke-virtual {p0, v1}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 499
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x0

    .line 500
    invoke-virtual {p0, v3, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    goto :goto_2

    .line 503
    :cond_1
    iget-wide v5, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v0, -0x1

    .line 508
    invoke-virtual {p0, v5}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    sub-int/2addr v0, v5

    move v5, v1

    :goto_1
    if-gt v5, v0, :cond_4

    .line 510
    invoke-virtual {p0, v5}, Landroidx/media3/common/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 512
    :cond_4
    iget-wide v5, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long p0, v5, v3

    if-gtz p0, :cond_5

    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method private notifyQueueUpdate()V
    .locals 4

    .line 553
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v1, :cond_0

    .line 556
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 557
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 559
    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 560
    new-instance v3, Landroidx/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-interface {v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 7

    .line 475
    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 476
    iget v0, p7, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v0, p6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 478
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    move-object v2, p1

    .line 479
    :goto_0
    invoke-static {p7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isSkippableAdPeriod(Landroidx/media3/common/Timeline$Period;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p6, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    .line 481
    invoke-virtual {p0, v0, p7, p1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 482
    iget-object p1, p7, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0, v2, p7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 485
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    const/4 p0, -0x1

    if-ne v3, p0, :cond_1

    .line 487
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p0

    .line 488
    new-instance p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p1, v2, p4, p5, p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object p1

    .line 490
    :cond_1
    invoke-virtual {p7, v3}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 491
    new-instance p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v1, p0

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(Landroidx/media3/common/Timeline;Ljava/lang/Object;)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 574
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 578
    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v1, v0, :cond_0

    iget-wide p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide p0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v1, :cond_2

    .line 587
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    iget-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide p0

    .line 591
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_1
    if-eqz v1, :cond_4

    .line 595
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 597
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v3, v0, :cond_3

    .line 600
    iget-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide p0

    .line 603
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez p1, :cond_5

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_5
    return-wide v0
.end method

.method private updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 642
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v2, p1

    .line 645
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v3

    .line 647
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v2, :cond_1

    .line 649
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1

    .line 652
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 656
    :cond_2
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 665
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v2

    .line 668
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    xor-int/lit8 p0, v2, 0x1

    return p0
.end method


# virtual methods
.method public advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_1

    .line 262
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 264
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_2

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 268
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 269
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 271
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 272
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public advanceReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 245
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 246
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public clear()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 310
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 311
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 312
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :goto_0
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 315
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    .line 321
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return-void
.end method

.method public enqueueNextMediaPeriodHolder([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_0

    const-wide v1, 0xe8d4a51000L

    move-object/from16 v10, p5

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    move-object/from16 v10, p5

    iget-wide v3, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v1, v3

    :goto_0
    move-wide v5, v1

    .line 192
    new-instance v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v3, v1

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Landroidx/media3/exoplayer/MediaPeriodHolder;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->setNext(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    goto :goto_1

    :cond_1
    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_1
    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    .line 210
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return-object v1
.end method

.method public getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public getNextMediaPeriodInfo(JLandroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfo(Landroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_0
    iget-object p3, p3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-direct {p0, p3, v0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 406
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 407
    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v11

    .line 408
    invoke-direct {v0, v1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v12

    .line 409
    invoke-direct {v0, v1, v3, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v13

    .line 410
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 412
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 414
    iget v7, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v7}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    .line 416
    :goto_1
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 417
    iget v5, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_4

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_4

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v7, v5

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v9, v7

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 419
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    goto :goto_2

    .line 422
    :goto_4
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 423
    iget v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    :goto_5
    move v14, v0

    goto :goto_6

    .line 424
    :cond_5
    iget v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v1, v4, :cond_6

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 425
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 426
    :goto_6
    new-instance v15, Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v1, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move-object v0, v15

    move-wide/from16 v16, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide/from16 v4, v16

    move-wide v6, v7

    move-wide v8, v9

    move v10, v14

    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v15
.end method

.method public isLoading(Landroidx/media3/exoplayer/source/MediaPeriod;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p0, :cond_0

    .line 130
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$notifyQueueUpdate$0$androidx-media3-exoplayer-MediaPeriodQueue(Lcom/google/common/collect/ImmutableList$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 561
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->updateMediaPeriodQueueInfo(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 285
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 286
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 291
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move v1, v0

    .line 297
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->setNext(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    .line 301
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return v1
.end method

.method public resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 8

    .line 450
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Landroidx/media3/common/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    .line 451
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 10

    .line 527
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Landroidx/media3/common/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 529
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 530
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 533
    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v3, v3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-lt v0, v3, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v6, 0x1

    .line 534
    invoke-virtual {p1, v0, v3, v6}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 535
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    or-int/2addr v2, v6

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 537
    iget-wide v7, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 539
    iget-object p2, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 541
    iget-wide v6, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    move-object v1, p2

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object v0, p1

    move-wide v2, p3

    .line 546
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public shouldLoadNextMediaPeriod()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 148
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateQueuedPeriods(Landroidx/media3/common/Timeline;JJ)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 345
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    goto :goto_1

    .line 356
    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 359
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 361
    :cond_1
    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->canKeepMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/MediaPeriodInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 363
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    move-object v1, v4

    .line 369
    :goto_1
    iget-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 370
    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 373
    iget-wide v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 376
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    .line 378
    iget-wide p1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v3

    if-nez p1, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    .line 380
    :cond_3
    iget-wide p1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_2
    iget-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_5

    .line 381
    iget-object p3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean p3, p3, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-nez p3, :cond_5

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p3, p4, v3

    if-eqz p3, :cond_4

    cmp-long p1, p4, p1

    if-ltz p1, :cond_5

    :cond_4
    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    .line 386
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result p0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    return v2

    .line 391
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    return v2
.end method

.method public updateRepeatMode(Landroidx/media3/common/Timeline;I)Z
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    .line 112
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)Z

    move-result p0

    return p0
.end method

.method public updateShuffleModeEnabled(Landroidx/media3/common/Timeline;Z)Z
    .locals 0

    iput-boolean p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 125
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)Z

    move-result p0

    return p0
.end method
