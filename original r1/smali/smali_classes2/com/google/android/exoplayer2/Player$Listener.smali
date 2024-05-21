.class public interface abstract Lcom/google/android/exoplayer2/Player$Listener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 0

    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    return-void
.end method

.method public onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 0

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    return-void
.end method
