.class final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodImpl"
.end annotation


# instance fields
.field public callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field public final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public hasNotifiedDownstreamFormatChange:[Z

.field public lastStartPositionUs:J

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field public final sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 p1, 0x0

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1193
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->continueLoading(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)Z

    move-result p0

    return p0
.end method

.method public discardBuffer(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1162
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->discardBuffer(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1177
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getAdjustedSeekPositionUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1183
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getBufferedPositionUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1188
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getNextLoadPositionUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1138
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1133
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1198
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isLoading(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)Z

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

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1123
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1167
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->readDiscontinuity(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1203
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->reevaluateBuffer(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1172
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->seekToUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    .line 1148
    array-length v0, v0

    if-nez v0, :cond_0

    .line 1149
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    .line 1151
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->selectTracks(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p0

    return-wide p0
.end method
