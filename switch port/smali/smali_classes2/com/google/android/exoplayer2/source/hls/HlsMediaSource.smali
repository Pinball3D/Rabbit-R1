.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$MetadataType;
    }
.end annotation


# static fields
.field public static final METADATA_TYPE_EMSG:I = 0x3

.field public static final METADATA_TYPE_ID3:I = 0x1


# instance fields
.field private final allowChunklessPreparation:Z

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final elapsedRealTimeOffsetMs:J

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final metadataType:I

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final useSessionKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 70
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZ)V
    .locals 1

    .line 394
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 395
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 397
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    iput p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->metadataType:I

    iput-boolean p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->useSessionKeys:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;)V
    .locals 0

    .line 66
    invoke-direct/range {p0 .. p12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZ)V

    return-void
.end method

.method private createTimelineForLive(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 492
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 493
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long v17, v2, v4

    .line 495
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v5, v17, v5

    move-wide v13, v5

    goto :goto_0

    :cond_0
    move-wide v13, v3

    .line 496
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getLiveEdgeOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v11

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 498
    iget-wide v5, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 500
    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    goto :goto_1

    .line 503
    :cond_1
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getTargetLiveOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v2

    :goto_1
    move-wide v5, v2

    .line 506
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v9, v2, v11

    move-wide v7, v11

    .line 507
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 509
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->updateLiveConfiguration(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)V

    .line 511
    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getLiveWindowDefaultStartPositionUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v19

    .line 512
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasPositiveStartOffset:Z

    if-eqz v2, :cond_2

    move/from16 v23, v4

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move/from16 v23, v2

    .line 515
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const/16 v21, 0x1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 v22, v1, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v25, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object/from16 v26, v0

    move-object v6, v2

    move-wide/from16 v7, p2

    move-wide v0, v9

    move-wide/from16 v9, p4

    move-wide v15, v0

    move-object/from16 v24, p6

    invoke-direct/range {v6 .. v26}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-object v2
.end method

.method private createTimelineForOnDemand(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    .locals 24

    move-object/from16 v0, p1

    .line 537
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 540
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 543
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 544
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    goto :goto_2

    .line 541
    :cond_2
    :goto_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v1, 0x0

    :goto_2
    move-wide/from16 v16, v1

    .line 548
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-object v3, v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v21, p6

    invoke-direct/range {v3 .. v23}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-object v1
.end method

.method private static findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 651
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 652
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    .line 653
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    cmp-long v3, v3, p1

    if-gtz v3, :cond_0

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_1

    .line 655
    :cond_0
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;"
        }
    .end annotation

    .line 670
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    .line 669
    invoke-static {p0, p1, p2, p2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    .line 671
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    return-object p0
.end method

.method private getLiveEdgeOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J
    .locals 2

    .line 565
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    .line 566
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide p0

    sub-long/2addr v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getLiveWindowDefaultStartPositionUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J
    .locals 4

    .line 573
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 574
    iget-wide p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    goto :goto_0

    .line 577
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, p2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p2

    sub-long p2, v0, p2

    .line 578
    :goto_0
    iget-boolean p0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-eqz p0, :cond_1

    return-wide p2

    .line 582
    :cond_1
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 583
    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 585
    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    return-wide p0

    .line 587
    :cond_2
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/16 p0, 0x0

    return-wide p0

    .line 590
    :cond_3
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 591
    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object p0

    .line 592
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 594
    iget-wide p0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    return-wide p0

    .line 596
    :cond_4
    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    return-wide p0
.end method

.method private static getTargetLiveOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J
    .locals 5

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 632
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 633
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 634
    :cond_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 637
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    goto :goto_0

    .line 638
    :cond_1
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 639
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3

    .line 642
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    mul-long/2addr v0, v2

    :goto_0
    add-long/2addr v0, p1

    return-wide v0
.end method

.method private updateLiveConfiguration(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 600
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 605
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 607
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 608
    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 609
    iget p3, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    :goto_2
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 16

    move-object/from16 v0, p0

    .line 434
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    .line 435
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v6

    .line 436
    new-instance v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->metadataType:I

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->useSessionKeys:Z

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v14

    move-object v0, v15

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ZIZLcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-object v15
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 429
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 12

    .line 467
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v1

    .line 472
    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide v7, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v7, v9

    .line 476
    :goto_2
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/HlsManifest;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 477
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    invoke-direct {v11, v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsManifest;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 479
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    .line 480
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createTimelineForLive(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object v5, p0

    move-object v6, p1

    .line 482
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createTimelineForOnDemand(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-result-object p1

    .line 484
    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 419
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v1

    .line 418
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 420
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    const/4 p1, 0x0

    .line 422
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 423
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->start(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 455
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->release()V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 460
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->stop()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 461
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    return-void
.end method
