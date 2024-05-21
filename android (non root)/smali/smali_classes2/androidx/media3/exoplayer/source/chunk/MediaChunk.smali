.class public abstract Landroidx/media3/exoplayer/source/chunk/MediaChunk;
.super Landroidx/media3/exoplayer/source/chunk/Chunk;
.source "MediaChunk.java"


# instance fields
.field public final chunkIndex:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 52
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/source/chunk/Chunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 61
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, p10

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    return-void
.end method


# virtual methods
.method public getNextChunkIndex()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public abstract isLoadCompleted()Z
.end method
