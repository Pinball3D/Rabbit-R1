.class final Landroidx/media3/common/ForwardingPlayer$ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ForwardingPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForwardingListener"
.end annotation


# instance fields
.field private final forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

.field private final listener:Landroidx/media3/common/Player$Listener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/ForwardingPlayer;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    iput-object p2, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1133
    :cond_0
    instance-of v0, p1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 1136
    :cond_1
    check-cast p1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    .line 1137
    iget-object v2, p1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1140
    iget-object p1, p1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    .line 1145
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1146
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1090
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1085
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 980
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1110
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

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

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1105
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1120
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1125
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    .line 938
    invoke-interface {p1, p0, p2}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 969
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1013
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 975
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1065
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 949
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 959
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1115
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1002
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1050
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 996
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1008
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1028
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1033
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 991
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 964
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1039
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1045
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1080
    invoke-interface {p0}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1018
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1055
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1060
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1023
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1100
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1075
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 943
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 985
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 954
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1070
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->listener:Landroidx/media3/common/Player$Listener;

    .line 1095
    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method
