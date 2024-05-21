.class public interface abstract Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
.end method

.method public abstract updateTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
.end method
