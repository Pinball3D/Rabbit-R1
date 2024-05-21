.class public interface abstract Landroidx/media3/common/Player$Listener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 0

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
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

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
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

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
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

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    return-void
.end method
