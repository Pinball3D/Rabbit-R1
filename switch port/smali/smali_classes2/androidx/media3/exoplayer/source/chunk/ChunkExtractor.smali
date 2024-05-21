.class public interface abstract Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;,
        Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    }
.end annotation


# virtual methods
.method public abstract getChunkIndex()Landroidx/media3/extractor/ChunkIndex;
.end method

.method public abstract getSampleFormats()[Landroidx/media3/common/Format;
.end method

.method public abstract init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
.end method

.method public abstract read(Landroidx/media3/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method
