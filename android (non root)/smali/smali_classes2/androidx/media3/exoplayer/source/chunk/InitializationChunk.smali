.class public final Landroidx/media3/exoplayer/source/chunk/InitializationChunk;
.super Landroidx/media3/exoplayer/source/chunk/Chunk;
.source "InitializationChunk.java"


# instance fields
.field private final chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

.field private volatile loadCanceled:Z

.field private nextLoadPosition:J

.field private trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;)V
    .locals 11

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 59
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/source/chunk/Chunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    iput-object v1, v0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->loadCanceled:Z

    return-void
.end method

.method public init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    return-void
.end method

.method public load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 98
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 99
    new-instance v7, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v3, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 101
    invoke-virtual {v1, v0}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 104
    invoke-interface {v0, v7}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->read(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    :try_start_2
    invoke-interface {v7}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :catchall_0
    move-exception v0

    .line 106
    :try_start_3
    invoke-interface {v7}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v3, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J

    .line 107
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 109
    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 110
    throw v0
.end method
