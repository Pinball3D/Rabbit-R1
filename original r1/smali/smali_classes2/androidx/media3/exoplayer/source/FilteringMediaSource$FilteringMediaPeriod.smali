.class final Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;
.super Ljava/lang/Object;
.source "FilteringMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/FilteringMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteringMediaPeriod"
.end annotation


# instance fields
.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private filteredTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final trackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaPeriod;Lcom/google/common/collect/ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 159
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(J)Z

    move-result p0

    return p0
.end method

.method public discardBuffer(JZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 129
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 144
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 149
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 154
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 113
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->filteredTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 108
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 164
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result p0

    return p0
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 103
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 189
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    .line 80
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 6

    .line 174
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p1

    .line 175
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 176
    :goto_0
    iget v3, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v2, v3, :cond_1

    .line 177
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 178
    iget v5, v3, Landroidx/media3/common/TrackGroup;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-instance p1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 183
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-array v1, v1, [Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/TrackGroup;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->filteredTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 184
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 98
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 134
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 169
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 139
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 123
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p0

    return-wide p0
.end method
