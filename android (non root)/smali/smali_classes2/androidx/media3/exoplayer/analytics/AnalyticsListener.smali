.class public interface abstract Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;,
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventFlags;,
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;
    }
.end annotation


# static fields
.field public static final EVENT_AUDIO_ATTRIBUTES_CHANGED:I = 0x14

.field public static final EVENT_AUDIO_CODEC_ERROR:I = 0x405

.field public static final EVENT_AUDIO_DECODER_INITIALIZED:I = 0x3f0

.field public static final EVENT_AUDIO_DECODER_RELEASED:I = 0x3f4

.field public static final EVENT_AUDIO_DISABLED:I = 0x3f5

.field public static final EVENT_AUDIO_ENABLED:I = 0x3ef

.field public static final EVENT_AUDIO_INPUT_FORMAT_CHANGED:I = 0x3f1

.field public static final EVENT_AUDIO_POSITION_ADVANCING:I = 0x3f2

.field public static final EVENT_AUDIO_SESSION_ID:I = 0x15

.field public static final EVENT_AUDIO_SINK_ERROR:I = 0x3f6

.field public static final EVENT_AUDIO_UNDERRUN:I = 0x3f3

.field public static final EVENT_AVAILABLE_COMMANDS_CHANGED:I = 0xd

.field public static final EVENT_BANDWIDTH_ESTIMATE:I = 0x3ee

.field public static final EVENT_CUES:I = 0x1b

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x1d

.field public static final EVENT_DEVICE_VOLUME_CHANGED:I = 0x1e

.field public static final EVENT_DOWNSTREAM_FORMAT_CHANGED:I = 0x3ec

.field public static final EVENT_DRM_KEYS_LOADED:I = 0x3ff

.field public static final EVENT_DRM_KEYS_REMOVED:I = 0x402

.field public static final EVENT_DRM_KEYS_RESTORED:I = 0x401

.field public static final EVENT_DRM_SESSION_ACQUIRED:I = 0x3fe

.field public static final EVENT_DRM_SESSION_MANAGER_ERROR:I = 0x400

.field public static final EVENT_DRM_SESSION_RELEASED:I = 0x403

.field public static final EVENT_DROPPED_VIDEO_FRAMES:I = 0x3fa

.field public static final EVENT_IS_LOADING_CHANGED:I = 0x3

.field public static final EVENT_IS_PLAYING_CHANGED:I = 0x7

.field public static final EVENT_LOAD_CANCELED:I = 0x3ea

.field public static final EVENT_LOAD_COMPLETED:I = 0x3e9

.field public static final EVENT_LOAD_ERROR:I = 0x3eb

.field public static final EVENT_LOAD_STARTED:I = 0x3e8

.field public static final EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED:I = 0x12

.field public static final EVENT_MEDIA_ITEM_TRANSITION:I = 0x1

.field public static final EVENT_MEDIA_METADATA_CHANGED:I = 0xe

.field public static final EVENT_METADATA:I = 0x1c

.field public static final EVENT_PLAYBACK_PARAMETERS_CHANGED:I = 0xc

.field public static final EVENT_PLAYBACK_STATE_CHANGED:I = 0x4

.field public static final EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED:I = 0x6

.field public static final EVENT_PLAYER_ERROR:I = 0xa

.field public static final EVENT_PLAYER_RELEASED:I = 0x404

.field public static final EVENT_PLAYLIST_METADATA_CHANGED:I = 0xf

.field public static final EVENT_PLAY_WHEN_READY_CHANGED:I = 0x5

.field public static final EVENT_POSITION_DISCONTINUITY:I = 0xb

.field public static final EVENT_RENDERED_FIRST_FRAME:I = 0x1a

.field public static final EVENT_REPEAT_MODE_CHANGED:I = 0x8

.field public static final EVENT_SEEK_BACK_INCREMENT_CHANGED:I = 0x10

.field public static final EVENT_SEEK_FORWARD_INCREMENT_CHANGED:I = 0x11

.field public static final EVENT_SHUFFLE_MODE_ENABLED_CHANGED:I = 0x9

.field public static final EVENT_SKIP_SILENCE_ENABLED_CHANGED:I = 0x17

.field public static final EVENT_SURFACE_SIZE_CHANGED:I = 0x18

.field public static final EVENT_TIMELINE_CHANGED:I = 0x0

.field public static final EVENT_TRACKS_CHANGED:I = 0x2

.field public static final EVENT_TRACK_SELECTION_PARAMETERS_CHANGED:I = 0x13

.field public static final EVENT_UPSTREAM_DISCARDED:I = 0x3ed

.field public static final EVENT_VIDEO_CODEC_ERROR:I = 0x406

.field public static final EVENT_VIDEO_DECODER_INITIALIZED:I = 0x3f8

.field public static final EVENT_VIDEO_DECODER_RELEASED:I = 0x3fb

.field public static final EVENT_VIDEO_DISABLED:I = 0x3fc

.field public static final EVENT_VIDEO_ENABLED:I = 0x3f7

.field public static final EVENT_VIDEO_FRAME_PROCESSING_OFFSET:I = 0x3fd

.field public static final EVENT_VIDEO_INPUT_FORMAT_CHANGED:I = 0x3f9

.field public static final EVENT_VIDEO_SIZE_CHANGED:I = 0x19

.field public static final EVENT_VOLUME_CHANGED:I = 0x16


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public onAudioCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onAudioDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    return-void
.end method

.method public onAudioPositionAdvancing(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    return-void
.end method

.method public onAudioSessionIdChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public onAudioSinkError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onAudioUnderrun(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V
    .locals 0

    return-void
.end method

.method public onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    return-void
.end method

.method public onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDeviceVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0

    return-void
.end method

.method public onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRemoved(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRestored(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onDrmSessionReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 0

    return-void
.end method

.method public onIsLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    return-void
.end method

.method public onIsPlayingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V
    .locals 0

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public onMetadata(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V
    .locals 0

    return-void
.end method

.method public onPlayWhenReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public onSeekBackIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    return-void
.end method

.method public onSeekForwardIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    return-void
.end method

.method public onSeekStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    return-void
.end method

.method public onSurfaceSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V
    .locals 0

    return-void
.end method

.method public onUpstreamDiscarded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onVideoFrameProcessingOffset(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method

.method public onVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    return-void
.end method
