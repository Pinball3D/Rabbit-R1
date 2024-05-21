.class public abstract Landroidx/media3/exoplayer/source/chunk/DataChunk;
.super Landroidx/media3/exoplayer/source/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;[B)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 60
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/source/chunk/Chunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p7, :cond_0

    .line 69
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object/from16 v0, p7

    :goto_0
    iput-object v0, v1, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    return-void
.end method

.method private maybeExpandData(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    .line 122
    array-length v1, v0

    add-int/lit16 p1, p1, 0x4000

    if-ge v1, p1, :cond_0

    .line 125
    array-length p1, v0

    add-int/lit16 p1, p1, 0x4000

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->loadCanceled:Z

    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    return-object p0
.end method

.method public final load()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_1

    .line 97
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/chunk/DataChunk;->maybeExpandData(I)V

    .line 98
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    const/16 v4, 0x4000

    invoke-virtual {v0, v3, v1, v4}, Landroidx/media3/datasource/StatsDataSource;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    .line 104
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/chunk/DataChunk;->consume([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 108
    throw v0
.end method
