.class public interface abstract Landroidx/media3/exoplayer/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
.end method

.method public abstract getNextChunk(JJLjava/util/List;Landroidx/media3/exoplayer/source/chunk/ChunkHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;",
            "Landroidx/media3/exoplayer/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onChunkLoadCompleted(Landroidx/media3/exoplayer/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Landroidx/media3/exoplayer/source/chunk/Chunk;ZLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Z
.end method

.method public abstract release()V
.end method

.method public abstract shouldCancelLoad(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/exoplayer/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation
.end method
