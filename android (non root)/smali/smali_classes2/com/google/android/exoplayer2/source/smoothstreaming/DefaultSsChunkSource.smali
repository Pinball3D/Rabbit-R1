.class public Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final chunkExtractors:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

.field private currentManifestChunkOffset:I

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final streamElementIndex:I

.field private trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 107
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v2, v4, v2

    .line 108
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->chunkExtractors:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->chunkExtractors:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 109
    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 110
    invoke-interface {v3, v5}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v8

    .line 111
    iget-object v6, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v8

    .line 114
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v14, 0x0

    if-eqz v7, :cond_0

    .line 115
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v18, v7

    goto :goto_1

    :cond_0
    move-object/from16 v18, v14

    .line 117
    :goto_1
    iget v7, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    const/4 v7, 0x4

    move/from16 v19, v7

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    .line 118
    :goto_2
    new-instance v15, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v9, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    iget-wide v10, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->timescale:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 p3, v5

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v15

    move-object/from16 v22, v15

    move-wide v14, v4

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 131
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v5, 0x3

    move-object/from16 v7, v22

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;)V

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->chunkExtractors:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 137
    new-instance v7, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;

    iget v8, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    invoke-direct {v7, v4, v8, v6}, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    aput-object v7, v5, p3

    add-int/lit8 v5, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static newMediaChunk(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;IJJJILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .locals 21

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p4

    move-wide/from16 v17, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v19, p12

    .line 324
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v2, v0

    move-object/from16 v12, p2

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 328
    new-instance v20, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v0, v20

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v14, p3

    int-to-long v14, v14

    const/16 v16, 0x1

    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)V

    return-object v20
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 345
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 349
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object p0, v0, p0

    .line 350
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v0, v0, -0x1

    .line 352
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v1

    .line 353
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    sub-long/2addr v1, p1

    return-wide v1
.end method


# virtual methods
.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 143
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object p0, v0, p0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    move-object v1, p3

    move-wide v2, p1

    .line 150
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 220
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v4, v4, v5

    .line 221
    iget v5, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v5, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 223
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    return-void

    .line 228
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v5

    move-object/from16 v15, p5

    goto :goto_0

    .line 232
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v15, p5

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v5

    iget v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-gez v5, :cond_3

    .line 235
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    .line 240
    :cond_3
    :goto_0
    iget v6, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lt v5, v6, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 242
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    return-void

    :cond_4
    sub-long v9, v1, p1

    .line 247
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v11

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 249
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v6

    new-array v14, v6, [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 251
    invoke-interface {v8, v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v8

    .line 252
    new-instance v13, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;

    invoke-direct {v13, v4, v8, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;II)V

    aput-object v13, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-wide/from16 v7, p1

    move-object/from16 v13, p5

    .line 254
    invoke-interface/range {v6 .. v14}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 257
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v19

    .line 258
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long v21, v19, v6

    .line 259
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    move-wide/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int v18, v5, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 262
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->chunkExtractors:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 263
    aget-object v27, v2, v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 265
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v1

    .line 266
    invoke-virtual {v4, v1, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v17

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 270
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v15

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 277
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v25

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 278
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v16, v1

    .line 269
    invoke-static/range {v15 .. v27}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;IJJJILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 195
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 198
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result p0

    return p0

    .line 196
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 189
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void

    .line 187
    :cond_0
    throw v0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 0

    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 296
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v0

    .line 295
    invoke-interface {p4, v0, p3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 297
    iget p2, p3, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 301
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iget-wide p2, p3, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 300
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->blacklist(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->chunkExtractors:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 306
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 307
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 207
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 155
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v0, v0, v1

    .line 156
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    .line 157
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v2, v2, v3

    if-eqz v1, :cond_2

    .line 158
    iget v3, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 163
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    .line 164
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    const/4 v3, 0x0

    .line 165
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v2

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    .line 171
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    return-void
.end method

.method public updateTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    return-void
.end method
