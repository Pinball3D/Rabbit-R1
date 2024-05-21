.class public interface abstract Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;
.super Ljava/lang/Object;
.source "SsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
.end method

.method public abstract updateTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
.end method
