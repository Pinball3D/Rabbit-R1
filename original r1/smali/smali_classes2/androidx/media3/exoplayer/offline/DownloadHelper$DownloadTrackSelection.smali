.class final Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadTrackSelection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;[I)V
    .locals 0

    .line 1015
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectionReason()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 0
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

    return-void
.end method
