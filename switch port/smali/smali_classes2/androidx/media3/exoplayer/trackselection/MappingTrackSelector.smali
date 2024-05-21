.class public abstract Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
.super Landroidx/media3/exoplayer/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;-><init>()V

    return-void
.end method

.method private static findRenderer([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;[IZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 499
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    .line 502
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 503
    aget-object v6, p0, v3

    move v7, v1

    move v8, v7

    .line 505
    :goto_1
    iget v9, p1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v7, v9, :cond_0

    .line 509
    invoke-virtual {p1, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    invoke-interface {v6, v9}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v9

    .line 508
    invoke-static {v9}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v9

    .line 510
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 512
    :cond_0
    aget v6, p2, v3

    if-nez v6, :cond_1

    move v6, v2

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-gt v8, v4, :cond_2

    if-ne v8, v4, :cond_3

    if-eqz p3, :cond_3

    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    :cond_2
    move v0, v3

    move v5, v6

    move v4, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static getFormatSupport(Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 537
    iget v0, p1, Landroidx/media3/common/TrackGroup;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 538
    :goto_0
    iget v2, p1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 539
    invoke-virtual {p1, v1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupports([Landroidx/media3/exoplayer/RendererCapabilities;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 555
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 557
    aget-object v3, p0, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object p0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    .line 343
    check-cast p1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method protected abstract selectTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Landroidx/media3/exoplayer/RendererConfiguration;",
            "[",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    .line 356
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 357
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Landroidx/media3/common/TrackGroup;

    .line 358
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v4, :cond_0

    .line 360
    iget v9, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v9, v9, [Landroidx/media3/common/TrackGroup;

    aput-object v9, v5, v8

    .line 361
    iget v9, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v9, v9, [[I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Landroidx/media3/exoplayer/RendererCapabilities;)[I

    move-result-object v4

    move v8, v7

    .line 371
    :goto_1
    iget v9, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_3

    .line 372
    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    .line 374
    iget v10, v9, Landroidx/media3/common/TrackGroup;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    move v10, v3

    goto :goto_2

    :cond_1
    move v10, v7

    .line 376
    :goto_2
    invoke-static {p1, v9, v2, v10}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->findRenderer([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;[IZ)I

    move-result v10

    .line 381
    array-length v11, v0

    if-ne v10, v11, :cond_2

    .line 382
    iget v11, v9, Landroidx/media3/common/TrackGroup;->length:I

    new-array v11, v11, [I

    goto :goto_3

    .line 383
    :cond_2
    aget-object v11, v0, v10

    invoke-static {v11, v9}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->getFormatSupport(Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;)[I

    move-result-object v11

    .line 385
    :goto_3
    aget v12, v2, v10

    .line 386
    aget-object v13, v5, v10

    aput-object v9, v13, v12

    .line 387
    aget-object v9, v6, v10

    aput-object v11, v9, v12

    add-int/2addr v12, v3

    .line 388
    aput v12, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 392
    :cond_3
    array-length v1, v0

    new-array v10, v1, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 393
    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    .line 394
    array-length v1, v0

    new-array v9, v1, [I

    .line 395
    :goto_4
    array-length v1, v0

    if-ge v7, v1, :cond_4

    .line 396
    aget v1, v2, v7

    .line 397
    new-instance v3, Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v11, v5, v7

    .line 399
    invoke-static {v11, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v3, v11}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    aput-object v3, v10, v7

    .line 400
    aget-object v3, v6, v7

    .line 401
    invoke-static {v3, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v6, v7

    .line 402
    aget-object v1, v0, v7

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    .line 403
    aget-object v1, v0, v7

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    aput v1, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 407
    :cond_4
    array-length v1, v0

    aget v1, v2, v1

    .line 408
    new-instance v13, Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 410
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v13, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 414
    new-instance v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v7, v0

    move-object v11, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V

    move-object v7, p0

    move-object v8, v0

    move-object v9, v6

    move-object v10, v4

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 424
    invoke-virtual/range {v7 .. v12}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->selectTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v1

    .line 431
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Landroidx/media3/exoplayer/trackselection/TrackSelection;)Landroidx/media3/common/Tracks;

    move-result-object v2

    .line 433
    new-instance v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v3, v4, v1, v2, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    return-object v3
.end method
