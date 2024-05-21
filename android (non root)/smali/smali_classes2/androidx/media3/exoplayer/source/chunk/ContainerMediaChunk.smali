.class public Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;
.super Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# instance fields
.field private final chunkCount:I

.field private final chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJIJLandroidx/media3/exoplayer/source/chunk/ChunkExtractor;)V
    .locals 3

    move-object v0, p0

    .line 76
    invoke-direct/range {p0 .. p15}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    iput v1, v0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkCount:I

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public getNextChunkIndex()J
    .locals 4

    .line 94
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkIndex:J

    iget p0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getTrackOutputProvider(Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;
    .locals 0

    return-object p1
.end method

.method public isLoadCompleted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return p0
.end method

.method public final load()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->getOutput()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 115
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 117
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->getTrackOutputProvider(Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v4

    .line 118
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    move-wide v0, v5

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v0, v7

    .line 119
    :goto_0
    iget-wide v7, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v5, v7

    :goto_1
    move-wide v7, v5

    move-wide v5, v0

    .line 116
    invoke-interface/range {v3 .. v8}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 123
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 124
    new-instance v7, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v3, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 126
    invoke-virtual {v1, v0}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 129
    invoke-interface {v0, v7}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->read(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 131
    :cond_3
    :try_start_2
    invoke-interface {v7}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return-void

    :catchall_0
    move-exception v0

    .line 131
    :try_start_3
    invoke-interface {v7}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v3, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    .line 132
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 134
    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 135
    throw v0
.end method
