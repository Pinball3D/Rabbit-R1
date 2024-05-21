.class public interface abstract Landroidx/media3/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayer$Builder;,
        Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;,
        Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;,
        Landroidx/media3/exoplayer/ExoPlayer$TextComponent;,
        Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;,
        Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
    }
.end annotation


# static fields
.field public static final DEFAULT_DETACH_SURFACE_TIMEOUT_MS:J = 0x7d0L

.field public static final DEFAULT_RELEASE_TIMEOUT_MS:J = 0x1f4L


# virtual methods
.method public abstract addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
.end method

.method public abstract addAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
.end method

.method public abstract addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;)V
.end method

.method public abstract addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
.end method

.method public abstract addMediaSources(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addMediaSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearAuxEffectInfo()V
.end method

.method public abstract clearCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V
.end method

.method public abstract clearVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
.end method

.method public abstract createMessage(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
.end method

.method public abstract experimentalIsSleepingForOffload()Z
.end method

.method public abstract experimentalSetOffloadSchedulingEnabled(Z)V
.end method

.method public abstract getAnalyticsCollector()Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
.end method

.method public abstract getAudioComponent()Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAudioDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;
.end method

.method public abstract getAudioFormat()Landroidx/media3/common/Format;
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getClock()Landroidx/media3/common/util/Clock;
.end method

.method public abstract getCurrentTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeviceComponent()Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPauseAtEndOfMediaItems()Z
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public bridge synthetic getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 165
    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;
.end method

.method public abstract getRenderer(I)Landroidx/media3/exoplayer/Renderer;
.end method

.method public abstract getRendererCount()I
.end method

.method public abstract getRendererType(I)I
.end method

.method public abstract getSeekParameters()Landroidx/media3/exoplayer/SeekParameters;
.end method

.method public abstract getSkipSilenceEnabled()Z
.end method

.method public abstract getTextComponent()Landroidx/media3/exoplayer/ExoPlayer$TextComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTrackSelector()Landroidx/media3/exoplayer/trackselection/TrackSelector;
.end method

.method public abstract getVideoChangeFrameRateStrategy()I
.end method

.method public abstract getVideoComponent()Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;
.end method

.method public abstract getVideoFormat()Landroidx/media3/common/Format;
.end method

.method public abstract getVideoScalingMode()I
.end method

.method public abstract isTunnelingEnabled()Z
.end method

.method public abstract prepare(Landroidx/media3/exoplayer/source/MediaSource;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract prepare(Landroidx/media3/exoplayer/source/MediaSource;ZZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
.end method

.method public abstract removeAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
.end method

.method public abstract setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
.end method

.method public abstract setCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V
.end method

.method public abstract setForegroundMode(Z)V
.end method

.method public abstract setHandleAudioBecomingNoisy(Z)V
.end method

.method public abstract setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
.end method

.method public abstract setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V
.end method

.method public abstract setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V
.end method

.method public abstract setMediaSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMediaSources(Ljava/util/List;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation
.end method

.method public abstract setMediaSources(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setPauseAtEndOfMediaItems(Z)V
.end method

.method public abstract setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V
.end method

.method public abstract setPriorityTaskManager(Landroidx/media3/common/PriorityTaskManager;)V
.end method

.method public abstract setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V
.end method

.method public abstract setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setVideoChangeFrameRateStrategy(I)V
.end method

.method public abstract setVideoEffects(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

.method public abstract setWakeMode(I)V
.end method
