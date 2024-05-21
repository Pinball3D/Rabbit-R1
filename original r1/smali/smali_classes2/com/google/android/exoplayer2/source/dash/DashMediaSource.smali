.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_MEDIA_ID:Ljava/lang/String; = "DashMediaSource"

.field private static final DEFAULT_NOTIFY_MANIFEST_INTERVAL_MS:J = 0x1388L

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private elapsedRealtimeOffsetMs:J

.field private expiredManifestPublishTimeUs:J

.field private final fallbackTargetLiveOffsetMs:J

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private initialManifestUri:Landroid/net/Uri;

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private manifestFatalError:Ljava/io/IOException;

.field private manifestLoadEndTimestampMs:J

.field private final manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private manifestLoadPending:Z

.field private manifestLoadStartTimestampMs:J

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private staleManifestReloadAttempt:I


# direct methods
.method public static synthetic $r8$lambda$Cbfv38hh_bge_0zl8BZ2qKibtNM(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 97
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;",
            "Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 395
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 396
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 397
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 406
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    const/4 p4, 0x0

    .line 408
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 409
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 410
    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 411
    new-instance p5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;

    invoke-direct {p5, p0, p4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    if-eqz p3, :cond_1

    .line 415
    iget-boolean p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 419
    new-instance p1, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    goto :goto_1

    .line 421
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    invoke-direct {p1, p0, p4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 422
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 423
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 424
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;J)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Ljava/io/IOException;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Lcom/google/android/exoplayer2/upstream/Loader;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    return-object p0
.end method

.method private static getAvailableEndTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1087
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1089
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z

    move-result v7

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    move v11, v10

    .line 1090
    :goto_0
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 1091
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 1092
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1095
    iget v14, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    iget v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x2

    if-eq v12, v14, :cond_0

    goto :goto_1

    :cond_0
    move v15, v10

    :goto_1
    if-eqz v7, :cond_1

    if-nez v15, :cond_5

    .line 1098
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    .line 1101
    :cond_2
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v12

    if-nez v12, :cond_3

    add-long/2addr v5, v1

    return-wide v5

    .line 1105
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_4

    return-wide v5

    .line 1110
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v15

    add-long/2addr v15, v13

    const-wide/16 v13, 0x1

    sub-long v13, v15, v13

    .line 1114
    invoke-interface {v12, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v15

    add-long/2addr v15, v5

    .line 1115
    invoke-interface {v12, v13, v14, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v12

    add-long/2addr v12, v15

    .line 1117
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    return-wide v8
.end method

.method private static getAvailableStartTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1053
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1055
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z

    move-result v7

    const/4 v8, 0x0

    move-wide v10, v5

    move v9, v8

    .line 1056
    :goto_0
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_6

    .line 1057
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 1058
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1061
    iget v14, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    iget v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x2

    if-eq v12, v14, :cond_0

    goto :goto_1

    :cond_0
    move v15, v8

    :goto_1
    if-eqz v7, :cond_1

    if-nez v15, :cond_5

    .line 1064
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    .line 1067
    :cond_2
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v12

    if-nez v12, :cond_3

    return-wide v5

    .line 1071
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    return-wide v5

    .line 1076
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v13

    .line 1078
    invoke-interface {v12, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v12

    add-long/2addr v12, v5

    .line 1080
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    return-wide v10
.end method

.method private static getIntervalUntilNextManifestRefreshMs(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;J)J
    .locals 20

    move-object/from16 v0, p0

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1022
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    .line 1023
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 1024
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 1025
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 1026
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    const-wide/16 v9, 0x1388

    .line 1027
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v9

    const/4 v11, 0x0

    move v12, v11

    .line 1028
    :goto_0
    iget-object v13, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 1029
    iget-object v13, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v13, v13, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1030
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    .line 1033
    :cond_0
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v13

    if-eqz v13, :cond_2

    add-long v14, v0, v3

    .line 1038
    invoke-interface {v13, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getNextSegmentAvailableTimeUs(JJ)J

    move-result-wide v16

    add-long v14, v14, v16

    sub-long/2addr v14, v7

    const-wide/32 v16, 0x186a0

    sub-long v18, v9, v16

    cmp-long v13, v14, v18

    if-ltz v13, :cond_1

    cmp-long v13, v14, v9

    if-lez v13, :cond_2

    add-long v16, v9, v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_2

    :cond_1
    move-wide v9, v14

    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 1048
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v9, v10, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getManifestLoadRetryDelayMillis()J
    .locals 2

    iget p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x1388

    .line 1006
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1134
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1135
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    return v0
.end method

.method private static isIndexExplicit(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1123
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1125
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1126
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private loadNtpTimeOffset()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 763
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->initialize(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V

    return-void
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    .line 784
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 786
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const/4 p1, 0x1

    .line 780
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private processManifest(Z)V
    .locals 31

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 791
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 792
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    if-lt v3, v4, :cond_0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 794
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 800
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 801
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 802
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 803
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 804
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v8

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 807
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v10

    .line 806
    invoke-static {v2, v10, v11, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getAvailableStartTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J

    move-result-wide v10

    .line 809
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getAvailableEndTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J

    move-result-wide v6

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 810
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->isIndexExplicit(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_3

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 811
    iget-wide v14, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v5, v14, v12

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 813
    iget-wide v14, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 814
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v14

    sub-long v14, v6, v14

    .line 816
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_3
    sub-long v5, v6, v10

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 821
    iget-boolean v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 822
    iget-wide v14, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    cmp-long v7, v14, v12

    if-eqz v7, :cond_4

    move v1, v4

    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 823
    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 825
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v14

    sub-long/2addr v8, v14

    sub-long/2addr v8, v10

    .line 827
    invoke-direct {v0, v8, v9, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->updateLiveConfiguration(JJ)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 828
    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 829
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v18

    add-long v14, v14, v18

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 830
    iget-wide v12, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v12

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x2

    .line 831
    div-long v12, v5, v12

    move-wide/from16 v18, v14

    const-wide/32 v14, 0x4c4b40

    .line 832
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    cmp-long v1, v8, v12

    if-gez v1, :cond_5

    move-wide/from16 v26, v12

    goto :goto_2

    :cond_5
    move-wide/from16 v26, v8

    goto :goto_2

    :cond_6
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v26, 0x0

    .line 840
    :goto_2
    iget-wide v1, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    sub-long v22, v10, v1

    .line 841
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v7, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 852
    iget-boolean v12, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v30, v12

    const-wide/16 v12, 0x0

    move-object v14, v1

    move-wide v15, v7

    move-wide/from16 v17, v18

    move-wide/from16 v19, v9

    move/from16 v21, v2

    move-wide/from16 v24, v5

    move-object/from16 v28, v4

    move-object/from16 v29, v11

    invoke-direct/range {v14 .. v30}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;-><init>(JJJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 853
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 857
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 863
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v4

    .line 862
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getIntervalUntilNextManifestRefreshMs(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;J)J

    move-result-wide v3

    .line 860
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    if-eqz v1, :cond_9

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 867
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 871
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    cmp-long v3, v1, v12

    if-nez v3, :cond_a

    const-wide/16 v1, 0x1388

    :cond_a
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    add-long/2addr v3, v1

    .line 880
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v3, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 881
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    :cond_b
    :goto_4
    return-void
.end method

.method private resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 2

    .line 725
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 726
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 727
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 729
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 730
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 732
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 733
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "urn:mpeg:dash:utc:ntp:2014"

    .line 735
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "urn:mpeg:dash:utc:ntp:2012"

    .line 736
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 740
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_4

    .line 737
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadNtpTimeOffset()V

    goto :goto_4

    .line 734
    :cond_5
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_4

    .line 731
    :cond_6
    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_4

    .line 728
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    :goto_4
    return-void
.end method

.method private resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 4

    .line 746
    :try_start_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    sub-long/2addr v0, v2

    .line 747
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 749
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method private resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    .line 757
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    const/4 p2, 0x1

    .line 755
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    return-void
.end method

.method private scheduleManifestRefresh(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 982
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 1013
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v5

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 1014
    new-instance p2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    return-void
.end method

.method private startLoadingManifest()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 986
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 987
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 990
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 995
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 997
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 999
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 1002
    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 999
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 997
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateLiveConfiguration(JJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 888
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 891
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v7

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 892
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 893
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 895
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    move-wide v9, v5

    :goto_1
    sub-long v1, p1, p3

    .line 898
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v11, v1, v3

    if-gez v11, :cond_2

    cmp-long v11, v9, v3

    if-lez v11, :cond_2

    move-wide v1, v3

    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 904
    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 906
    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_3
    move-wide v3, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 910
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 911
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 912
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 914
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 916
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    .line 917
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    :cond_5
    :goto_2
    cmp-long v1, v3, v9

    if-lez v1, :cond_6

    move-wide v9, v3

    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 926
    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 928
    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 929
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 931
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 932
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 933
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    goto :goto_3

    :cond_9
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    :goto_3
    cmp-long v5, v1, v3

    if-gez v5, :cond_a

    move-wide v1, v3

    :cond_a
    cmp-long v5, v1, v9

    if-lez v5, :cond_b

    const-wide/16 v1, 0x2

    .line 941
    div-long v1, p3, v1

    const-wide/32 v5, 0x4c4b40

    .line 942
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 944
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v11

    move-wide v13, v3

    move-wide v15, v9

    .line 946
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    :cond_b
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 950
    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v5, v5, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v6, -0x800001

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 951
    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v5, v5, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    goto :goto_4

    :cond_c
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 952
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 953
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    goto :goto_4

    :cond_d
    move v5, v6

    :goto_4
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 956
    iget-object v11, v11, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v11, v11, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v11, v11, v6

    if-eqz v11, :cond_e

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 957
    iget-object v11, v11, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v11, v11, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    goto :goto_5

    :cond_e
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 958
    iget-object v11, v11, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v11, :cond_f

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 959
    iget-object v11, v11, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget v11, v11, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    goto :goto_5

    :cond_f
    move v11, v6

    :goto_5
    cmpl-float v12, v5, v6

    if-nez v12, :cond_11

    cmpl-float v6, v11, v6

    if-nez v6, :cond_11

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 961
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v12, v6, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v6, v12, v7

    if-nez v6, :cond_11

    :cond_10
    const/high16 v5, 0x3f800000    # 1.0f

    move v11, v5

    .line 971
    :cond_11
    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 973
    invoke-virtual {v6, v1, v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 974
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 975
    invoke-virtual {v1, v9, v10}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 976
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 977
    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 978
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, p2

    .line 469
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v3, v2, v3

    move v6, v3

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 471
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v12

    .line 472
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v10

    .line 473
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    move-object v2, v1

    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v3, v4

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    move-object/from16 v18, v1

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move-object/from16 v1, p1

    .line 491
    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-source-dash-DashMediaSource()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 424
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 464
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method onDashManifestPublishTimeExpired(J)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    :cond_1
    return-void
.end method

.method onDashManifestRefreshRequested()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 531
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 709
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 718
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 719
    iget v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v0, v14, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    return-void
.end method

.method onManifestLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v14, p2

    .line 546
    new-instance v12, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v16

    move-object v2, v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object v14, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 555
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 556
    iget v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    .line 561
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move v7, v4

    :goto_1
    if-ge v7, v3, :cond_1

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 563
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v8, v8, v5

    if-gez v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 567
    :cond_1
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v5, :cond_5

    sub-int v5, v3, v7

    .line 569
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v6

    if-le v5, v6, :cond_2

    const-string v2, "DashMediaSource"

    const-string v3, "Loaded out of sync manifest"

    .line 575
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v8

    if-eqz v5, :cond_4

    .line 577
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v5, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    cmp-long v5, v5, v8

    if-gtz v5, :cond_4

    const-string v3, "DashMediaSource"

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded stale dynamic manifest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 592
    iget v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 593
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getManifestLoadRetryDelayMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    goto :goto_3

    .line 596
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    :goto_3
    return-void

    :cond_4
    iput v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    :cond_5
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 604
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    and-int/2addr v2, v4

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    move-wide/from16 v4, p2

    sub-long v8, v4, p4

    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 608
    monitor-enter v2

    .line 613
    :try_start_0
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v4, v5, :cond_7

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 618
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v4, :cond_6

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 620
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v3, :cond_a

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 623
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v2, :cond_9

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 624
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 625
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_5

    .line 627
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadNtpTimeOffset()V

    goto :goto_5

    .line 630
    :cond_9
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_5

    :cond_a
    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 634
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    :goto_5
    return-void

    :catchall_0
    move-exception v0

    .line 620
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onManifestLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 644
    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 648
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 652
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 653
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(I)V

    .line 654
    new-instance v4, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v5, p7

    invoke-direct {v4, v15, v3, v2, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 656
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 659
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 660
    invoke-static {v5, v3, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v3

    .line 661
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 662
    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v5, v15, v6, v2, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 664
    iget-wide v1, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_1
    return-object v3
.end method

.method onUtcTimestampLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 671
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 675
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 679
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 680
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 681
    iget v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v1, p2

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method onUtcTimestampLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 690
    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    .line 698
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v0, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    const/4 v5, 0x1

    .line 690
    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 702
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 703
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 704
    sget-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v0
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 450
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 451
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 453
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 455
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 456
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "DashMediaSource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 457
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 458
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    :goto_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 497
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    .line 498
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->release()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 499
    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 516
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 523
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    .line 524
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->reset()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 525
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public replaceManifestUri(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 434
    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 437
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
