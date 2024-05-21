.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/BaseMediaSource;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final livePresentationDelayMs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field private manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final sideloadedManifest:Z


# direct methods
.method public static synthetic $r8$lambda$jl1D4lFyOlMeu1xBKIXvLsVW-do(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 76
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;",
            "Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 345
    iget-boolean v2, p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 347
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 350
    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object p1, v3

    goto :goto_2

    .line 352
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->fixSmoothStreamingIsmManifestUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 360
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    .line 362
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;)V
    .locals 0

    .line 72
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method private processManifest()V
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 513
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 518
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v3, v2

    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v6, -0x8000000000000000L

    move v8, v1

    move-wide v14, v4

    :goto_1
    if-ge v8, v3, :cond_2

    aget-object v9, v2, v8

    .line 519
    iget v10, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lez v10, :cond_1

    .line 520
    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 521
    iget v10, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v10, v10, -0x1

    .line 524
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    iget v12, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v12, v12, -0x1

    .line 525
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 522
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    cmp-long v1, v14, v4

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 531
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v1, :cond_3

    move-wide v7, v4

    goto :goto_2

    :cond_3
    move-wide v7, v2

    .line 532
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object v6, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v6 .. v19}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 543
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 544
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 545
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    sub-long v1, v6, v1

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_5
    move-wide/from16 v21, v14

    sub-long v19, v6, v21

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 548
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    sub-long v1, v19, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    const-wide/16 v1, 0x2

    .line 553
    div-long v1, v19, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_6
    move-wide/from16 v23, v1

    .line 555
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v16, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-direct/range {v16 .. v29}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    goto :goto_4

    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 568
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    move-wide v12, v1

    goto :goto_3

    :cond_8
    sub-long/2addr v6, v14

    move-wide v12, v6

    .line 569
    :goto_3
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    add-long v10, v14, v12

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object v9, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v9 .. v22}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    .line 581
    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private scheduleManifestRefresh()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 585
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 590
    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoadingManifest()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 594
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 597
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 600
    iget v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 602
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 601
    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v7

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 603
    new-instance v1, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 11

    .line 396
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    .line 397
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v6

    .line 398
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 410
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 391
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 72
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 464
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 473
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 474
    iget v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v0, v14, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 72
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 441
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 449
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 450
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 451
    iget v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    sub-long v1, p2, p4

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 454
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    .line 455
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 72
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p0

    return-object p0
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 484
    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 493
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 494
    new-instance v5, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v6, p7

    invoke-direct {v5, v15, v3, v2, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 495
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 499
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 500
    invoke-static {v5, v3, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v3

    .line 501
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 502
    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v5, v15, v6, v2, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 504
    iget-wide v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_1
    return-object v3
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 375
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 376
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_0

    .line 378
    new-instance p1, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 379
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 381
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 382
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "SsMediaSource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 384
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    :goto_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 416
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->release()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 417
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 433
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    return-void
.end method
