.class public interface abstract Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;,
        Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    }
.end annotation


# virtual methods
.method public abstract blacklist(IJ)Z
.end method

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
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getSelectedFormat()Lcom/google/android/exoplayer2/Format;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract isBlacklisted(IJ)Z
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

.method public shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 0
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

    const/4 p0, 0x0

    return p0
.end method

.method public abstract updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation
.end method
