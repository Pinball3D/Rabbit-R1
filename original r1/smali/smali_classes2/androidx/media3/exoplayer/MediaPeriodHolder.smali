.class final Landroidx/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public allRenderersInCorrectState:Z

.field public hasEnabledTracks:Z

.field public info:Landroidx/media3/exoplayer/MediaPeriodInfo;

.field private final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field private next:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public prepared:Z

.field private final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field private rendererPositionOffsetUs:J

.field public final sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

.field private trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field private trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 7

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iput-wide p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iput-object p6, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 104
    iget-object p2, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 106
    sget-object p2, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p8, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 108
    array-length p2, p1

    new-array p2, p2, [Landroidx/media3/exoplayer/source/SampleStream;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 109
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 110
    iget-object v0, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    move-object v1, p6

    move-object v2, p5

    .line 111
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->createMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/upstream/Allocator;JJ)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 417
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 418
    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 419
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    new-instance v1, Landroidx/media3/exoplayer/source/EmptySampleStream;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static createMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/upstream/Allocator;JJ)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 7

    .line 436
    invoke-virtual {p1, p0, p2, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p5, p0

    if-eqz p0, :cond_0

    .line 438
    new-instance p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private disableTrackSelectionsInResult()V
    .locals 3

    .line 386
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 389
    iget v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 390
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 391
    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 393
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 404
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 405
    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 406
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableTrackSelectionsInResult()V
    .locals 3

    .line 373
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 376
    iget v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 377
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 378
    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 380
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isLoadingMediaPeriod()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static releaseMediaPeriod(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    .line 448
    :try_start_0
    instance-of v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v0, :cond_0

    .line 449
    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    .line 455
    invoke-static {p1, v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 262
    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 286
    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 288
    invoke-virtual {p1, v6, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 293
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V

    .line 294
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 296
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 298
    iget-object v7, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    move-object/from16 v10, p5

    move-wide v11, p2

    .line 299
    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 305
    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/SampleStream;)V

    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    move v6, v2

    :goto_2
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 309
    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 310
    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    .line 311
    invoke-virtual {p1, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v7

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 313
    aget-object v7, v7, v6

    invoke-interface {v7}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    iput-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_4

    .line 317
    :cond_2
    iget-object v7, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public continueLoading(J)V
    .locals 1

    .line 222
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 223
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 224
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(J)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 164
    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 167
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 168
    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    :cond_2
    return-wide v3
.end method

.method public getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 176
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getRendererOffset()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public getStartPositionRendererTime()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 147
    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method

.method public getTrackSelectorResult()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    return-object p0
.end method

.method public handlePrepared(FLandroidx/media3/common/Timeline;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 188
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 189
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 190
    iget-wide v0, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 191
    iget-wide v2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 193
    iget-wide v0, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    .line 196
    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 198
    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 199
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    return-void
.end method

.method public isFullyBuffered()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 153
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 209
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 211
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 325
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 326
    invoke-static {v0, p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->releaseMediaPeriod(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public selectTracks(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 241
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2, p0, p2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object p0

    .line 242
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 244
    invoke-interface {v2, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setNext(Landroidx/media3/exoplayer/MediaPeriodHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 341
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    return-void
.end method

.method public setRendererOffset(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-void
.end method

.method public toPeriodTime(J)J
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public toRendererTime(J)J
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public updateClipping()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 365
    instance-of v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 367
    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 368
    check-cast p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    :cond_1
    return-void
.end method
