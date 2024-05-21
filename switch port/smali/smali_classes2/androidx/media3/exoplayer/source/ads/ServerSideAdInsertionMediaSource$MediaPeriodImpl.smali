.class final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodImpl"
.end annotation


# instance fields
.field public callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public hasNotifiedDownstreamFormatChange:[Z

.field public isPrepared:Z

.field public lastStartPositionUs:J

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    const/4 p1, 0x0

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1203
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->continueLoading(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)Z

    move-result p0

    return p0
.end method

.method public discardBuffer(JZ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1172
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->discardBuffer(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1187
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getAdjustedSeekPositionUs(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1193
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getBufferedPositionUs(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1198
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getNextLoadPositionUs(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

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

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1148
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1143
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1208
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isLoading(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)Z

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

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1138
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onPrepared()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    if-eqz v0, :cond_0

    .line 1125
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->isPrepared:Z

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1133
    invoke-virtual {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->prepare(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1177
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->readDiscontinuity(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1213
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->reevaluateBuffer(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1182
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->seekToUs(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    .line 1158
    array-length v0, v0

    if-nez v0, :cond_0

    .line 1159
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    .line 1161
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->selectTracks(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p0

    return-wide p0
.end method
