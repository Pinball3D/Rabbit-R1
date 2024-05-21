.class public interface abstract Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/TrackSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;,
        Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluateQueueSize(JLjava/util/List;)I
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

.method public abstract excludeTrack(IJ)Z
.end method

.method public getLatestBitrateEstimate()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public abstract getSelectedFormat()Landroidx/media3/common/Format;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract isTrackExcluded(IJ)Z
.end method

.method public onDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract onPlaybackSpeed(F)V
.end method

.method public onRebuffer()V
    .locals 0

    return-void
.end method

.method public shouldCancelChunkLoad(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 0
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

    const/4 p0, 0x0

    return p0
.end method

.method public abstract updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation
.end method
