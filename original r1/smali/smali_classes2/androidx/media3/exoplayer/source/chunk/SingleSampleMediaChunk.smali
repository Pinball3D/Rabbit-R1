.class public final Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;
.super Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleFormat:Landroidx/media3/common/Format;

.field private final trackType:I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJILandroidx/media3/common/Format;)V
    .locals 16

    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    .line 63
    invoke-direct/range {v0 .. v15}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    iput v1, v0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->trackType:I

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->sampleFormat:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public isLoadCompleted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return p0
.end method

.method public load()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->getOutput()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 94
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    iget v1, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->trackType:I

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v2, v1}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->sampleFormat:Landroidx/media3/common/Format;

    .line 96
    invoke-interface {v3, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 99
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v4, v5}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 100
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    add-long/2addr v0, v4

    :cond_0
    move-wide v8, v0

    .line 104
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    :goto_0
    const/4 v1, -0x1

    const/4 v10, 0x1

    if-eq v2, v1, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    int-to-long v1, v2

    add-long/2addr v4, v1

    iput-wide v4, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    const v1, 0x7fffffff

    .line 110
    invoke-interface {v3, v0, v1, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    long-to-int v7, v0

    .line 113
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iput-boolean v10, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 116
    throw v0
.end method
