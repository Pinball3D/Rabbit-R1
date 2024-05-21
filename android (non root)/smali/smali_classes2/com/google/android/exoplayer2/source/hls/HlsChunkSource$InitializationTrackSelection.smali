.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 1

    .line 883
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    const/4 v0, 0x0

    .line 886
    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

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

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .locals 0
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

    .line 896
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    .line 897
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 901
    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->length:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 902
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    iput p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 908
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
