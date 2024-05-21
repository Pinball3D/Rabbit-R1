.class public interface abstract Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;I[ILcom/google/android/exoplayer2/trackselection/ExoTrackSelection;IJZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;",
            "I[I",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            "IJZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;"
        }
    .end annotation
.end method
