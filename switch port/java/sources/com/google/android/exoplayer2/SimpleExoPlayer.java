package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.PlayerMessage;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AuxEffectInfo;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Size;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.spherical.CameraMotionListener;
import java.util.List;

@Deprecated
/* loaded from: classes2.dex */
public class SimpleExoPlayer extends BasePlayer implements ExoPlayer, ExoPlayer.AudioComponent, ExoPlayer.VideoComponent, ExoPlayer.TextComponent, ExoPlayer.DeviceComponent {
    private final ConditionVariable constructorFinished;
    private final ExoPlayerImpl player;

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.AudioComponent getAudioComponent() {
        return this;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.DeviceComponent getDeviceComponent() {
        return this;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.TextComponent getTextComponent() {
        return this;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.VideoComponent getVideoComponent() {
        return this;
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static final class Builder {
        private final ExoPlayer.Builder wrappedBuilder;

        @Deprecated
        public Builder(Context context) {
            this.wrappedBuilder = new ExoPlayer.Builder(context);
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory);
        }

        @Deprecated
        public Builder(Context context, ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, new DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory, ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory, new DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, MediaSource.Factory factory, LoadControl loadControl, BandwidthMeter bandwidthMeter, AnalyticsCollector analyticsCollector) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory, factory, trackSelector, loadControl, bandwidthMeter, analyticsCollector);
        }

        @Deprecated
        public Builder experimentalSetForegroundModeTimeoutMs(long j) {
            this.wrappedBuilder.experimentalSetForegroundModeTimeoutMs(j);
            return this;
        }

        @Deprecated
        public Builder setTrackSelector(TrackSelector trackSelector) {
            this.wrappedBuilder.setTrackSelector(trackSelector);
            return this;
        }

        @Deprecated
        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            this.wrappedBuilder.setMediaSourceFactory(factory);
            return this;
        }

        @Deprecated
        public Builder setLoadControl(LoadControl loadControl) {
            this.wrappedBuilder.setLoadControl(loadControl);
            return this;
        }

        @Deprecated
        public Builder setBandwidthMeter(BandwidthMeter bandwidthMeter) {
            this.wrappedBuilder.setBandwidthMeter(bandwidthMeter);
            return this;
        }

        @Deprecated
        public Builder setLooper(Looper looper) {
            this.wrappedBuilder.setLooper(looper);
            return this;
        }

        @Deprecated
        public Builder setAnalyticsCollector(AnalyticsCollector analyticsCollector) {
            this.wrappedBuilder.setAnalyticsCollector(analyticsCollector);
            return this;
        }

        @Deprecated
        public Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
            this.wrappedBuilder.setPriorityTaskManager(priorityTaskManager);
            return this;
        }

        @Deprecated
        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
            this.wrappedBuilder.setAudioAttributes(audioAttributes, z);
            return this;
        }

        @Deprecated
        public Builder setWakeMode(int i) {
            this.wrappedBuilder.setWakeMode(i);
            return this;
        }

        @Deprecated
        public Builder setHandleAudioBecomingNoisy(boolean z) {
            this.wrappedBuilder.setHandleAudioBecomingNoisy(z);
            return this;
        }

        @Deprecated
        public Builder setSkipSilenceEnabled(boolean z) {
            this.wrappedBuilder.setSkipSilenceEnabled(z);
            return this;
        }

        @Deprecated
        public Builder setVideoScalingMode(int i) {
            this.wrappedBuilder.setVideoScalingMode(i);
            return this;
        }

        @Deprecated
        public Builder setVideoChangeFrameRateStrategy(int i) {
            this.wrappedBuilder.setVideoChangeFrameRateStrategy(i);
            return this;
        }

        @Deprecated
        public Builder setUseLazyPreparation(boolean z) {
            this.wrappedBuilder.setUseLazyPreparation(z);
            return this;
        }

        @Deprecated
        public Builder setSeekParameters(SeekParameters seekParameters) {
            this.wrappedBuilder.setSeekParameters(seekParameters);
            return this;
        }

        @Deprecated
        public Builder setSeekBackIncrementMs(long j) {
            this.wrappedBuilder.setSeekBackIncrementMs(j);
            return this;
        }

        @Deprecated
        public Builder setSeekForwardIncrementMs(long j) {
            this.wrappedBuilder.setSeekForwardIncrementMs(j);
            return this;
        }

        @Deprecated
        public Builder setReleaseTimeoutMs(long j) {
            this.wrappedBuilder.setReleaseTimeoutMs(j);
            return this;
        }

        @Deprecated
        public Builder setDetachSurfaceTimeoutMs(long j) {
            this.wrappedBuilder.setDetachSurfaceTimeoutMs(j);
            return this;
        }

        @Deprecated
        public Builder setPauseAtEndOfMediaItems(boolean z) {
            this.wrappedBuilder.setPauseAtEndOfMediaItems(z);
            return this;
        }

        @Deprecated
        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            this.wrappedBuilder.setLivePlaybackSpeedControl(livePlaybackSpeedControl);
            return this;
        }

        @Deprecated
        public Builder setClock(Clock clock) {
            this.wrappedBuilder.setClock(clock);
            return this;
        }

        @Deprecated
        public SimpleExoPlayer build() {
            return this.wrappedBuilder.buildSimpleExoPlayer();
        }
    }

    @Deprecated
    protected SimpleExoPlayer(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, MediaSource.Factory factory, LoadControl loadControl, BandwidthMeter bandwidthMeter, AnalyticsCollector analyticsCollector, boolean z, Clock clock, Looper looper) {
        this(new ExoPlayer.Builder(context, renderersFactory, factory, trackSelector, loadControl, bandwidthMeter, analyticsCollector).setUseLazyPreparation(z).setClock(clock).setLooper(looper));
    }

    protected SimpleExoPlayer(Builder builder) {
        this(builder.wrappedBuilder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleExoPlayer(ExoPlayer.Builder builder) {
        ConditionVariable conditionVariable = new ConditionVariable();
        this.constructorFinished = conditionVariable;
        try {
            this.player = new ExoPlayerImpl(builder, this);
            conditionVariable.open();
        } catch (Throwable th) {
            this.constructorFinished.open();
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void experimentalSetOffloadSchedulingEnabled(boolean z) {
        blockUntilConstructorFinished();
        this.player.experimentalSetOffloadSchedulingEnabled(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean experimentalIsSleepingForOffload() {
        blockUntilConstructorFinished();
        return this.player.experimentalIsSleepingForOffload();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoScalingMode(int i) {
        blockUntilConstructorFinished();
        this.player.setVideoScalingMode(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public int getVideoScalingMode() {
        blockUntilConstructorFinished();
        return this.player.getVideoScalingMode();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoChangeFrameRateStrategy(int i) {
        blockUntilConstructorFinished();
        this.player.setVideoChangeFrameRateStrategy(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public int getVideoChangeFrameRateStrategy() {
        blockUntilConstructorFinished();
        return this.player.getVideoChangeFrameRateStrategy();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public VideoSize getVideoSize() {
        blockUntilConstructorFinished();
        return this.player.getVideoSize();
    }

    @Override // com.google.android.exoplayer2.Player
    public Size getSurfaceSize() {
        blockUntilConstructorFinished();
        return this.player.getSurfaceSize();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoSurface() {
        blockUntilConstructorFinished();
        this.player.clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoSurface(Surface surface) {
        blockUntilConstructorFinished();
        this.player.clearVideoSurface(surface);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoSurface(Surface surface) {
        blockUntilConstructorFinished();
        this.player.setVideoSurface(surface);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        blockUntilConstructorFinished();
        this.player.setVideoSurfaceHolder(surfaceHolder);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        blockUntilConstructorFinished();
        this.player.clearVideoSurfaceHolder(surfaceHolder);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        blockUntilConstructorFinished();
        this.player.setVideoSurfaceView(surfaceView);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        blockUntilConstructorFinished();
        this.player.clearVideoSurfaceView(surfaceView);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoTextureView(TextureView textureView) {
        blockUntilConstructorFinished();
        this.player.setVideoTextureView(textureView);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoTextureView(TextureView textureView) {
        blockUntilConstructorFinished();
        this.player.clearVideoTextureView(textureView);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        blockUntilConstructorFinished();
        this.player.addAudioOffloadListener(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void removeAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        blockUntilConstructorFinished();
        this.player.removeAudioOffloadListener(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
        blockUntilConstructorFinished();
        this.player.setAudioAttributes(audioAttributes, z);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public AudioAttributes getAudioAttributes() {
        blockUntilConstructorFinished();
        return this.player.getAudioAttributes();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAudioSessionId(int i) {
        blockUntilConstructorFinished();
        this.player.setAudioSessionId(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public int getAudioSessionId() {
        blockUntilConstructorFinished();
        return this.player.getAudioSessionId();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        blockUntilConstructorFinished();
        this.player.setAuxEffectInfo(auxEffectInfo);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void clearAuxEffectInfo() {
        blockUntilConstructorFinished();
        this.player.clearAuxEffectInfo();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPreferredAudioDevice(AudioDeviceInfo audioDeviceInfo) {
        blockUntilConstructorFinished();
        this.player.setPreferredAudioDevice(audioDeviceInfo);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setVolume(float f) {
        blockUntilConstructorFinished();
        this.player.setVolume(f);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public float getVolume() {
        blockUntilConstructorFinished();
        return this.player.getVolume();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public boolean getSkipSilenceEnabled() {
        blockUntilConstructorFinished();
        return this.player.getSkipSilenceEnabled();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setSkipSilenceEnabled(boolean z) {
        blockUntilConstructorFinished();
        this.player.setSkipSilenceEnabled(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public AnalyticsCollector getAnalyticsCollector() {
        blockUntilConstructorFinished();
        return this.player.getAnalyticsCollector();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAnalyticsListener(AnalyticsListener analyticsListener) {
        blockUntilConstructorFinished();
        this.player.addAnalyticsListener(analyticsListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void removeAnalyticsListener(AnalyticsListener analyticsListener) {
        blockUntilConstructorFinished();
        this.player.removeAnalyticsListener(analyticsListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setHandleAudioBecomingNoisy(boolean z) {
        blockUntilConstructorFinished();
        this.player.setHandleAudioBecomingNoisy(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
        blockUntilConstructorFinished();
        this.player.setPriorityTaskManager(priorityTaskManager);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Format getVideoFormat() {
        blockUntilConstructorFinished();
        return this.player.getVideoFormat();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Format getAudioFormat() {
        blockUntilConstructorFinished();
        return this.player.getAudioFormat();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public DecoderCounters getVideoDecoderCounters() {
        blockUntilConstructorFinished();
        return this.player.getVideoDecoderCounters();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public DecoderCounters getAudioDecoderCounters() {
        blockUntilConstructorFinished();
        return this.player.getAudioDecoderCounters();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        blockUntilConstructorFinished();
        this.player.setVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        blockUntilConstructorFinished();
        this.player.clearVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setCameraMotionListener(CameraMotionListener cameraMotionListener) {
        blockUntilConstructorFinished();
        this.player.setCameraMotionListener(cameraMotionListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearCameraMotionListener(CameraMotionListener cameraMotionListener) {
        blockUntilConstructorFinished();
        this.player.clearCameraMotionListener(cameraMotionListener);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.TextComponent
    public CueGroup getCurrentCues() {
        blockUntilConstructorFinished();
        return this.player.getCurrentCues();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Looper getPlaybackLooper() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackLooper();
    }

    @Override // com.google.android.exoplayer2.Player
    public Looper getApplicationLooper() {
        blockUntilConstructorFinished();
        return this.player.getApplicationLooper();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Clock getClock() {
        blockUntilConstructorFinished();
        return this.player.getClock();
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(Player.Listener listener) {
        blockUntilConstructorFinished();
        this.player.addListener(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(Player.Listener listener) {
        blockUntilConstructorFinished();
        this.player.removeListener(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackState() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackState();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackSuppressionReason() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackSuppressionReason();
    }

    @Override // com.google.android.exoplayer2.Player
    public ExoPlaybackException getPlayerError() {
        blockUntilConstructorFinished();
        return this.player.getPlayerError();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void retry() {
        blockUntilConstructorFinished();
        this.player.retry();
    }

    @Override // com.google.android.exoplayer2.Player
    public Player.Commands getAvailableCommands() {
        blockUntilConstructorFinished();
        return this.player.getAvailableCommands();
    }

    @Override // com.google.android.exoplayer2.Player
    public void prepare() {
        blockUntilConstructorFinished();
        this.player.prepare();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.prepare(mediaSource);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        blockUntilConstructorFinished();
        this.player.prepare(mediaSource, z, z2);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(List<MediaItem> list, boolean z) {
        blockUntilConstructorFinished();
        this.player.setMediaItems(list, z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(List<MediaItem> list, int i, long j) {
        blockUntilConstructorFinished();
        this.player.setMediaItems(list, i, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list) {
        blockUntilConstructorFinished();
        this.player.setMediaSources(list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list, boolean z) {
        blockUntilConstructorFinished();
        this.player.setMediaSources(list, z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list, int i, long j) {
        blockUntilConstructorFinished();
        this.player.setMediaSources(list, i, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.setMediaSource(mediaSource);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, boolean z) {
        blockUntilConstructorFinished();
        this.player.setMediaSource(mediaSource, z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, long j) {
        blockUntilConstructorFinished();
        this.player.setMediaSource(mediaSource, j);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addMediaItems(int i, List<MediaItem> list) {
        blockUntilConstructorFinished();
        this.player.addMediaItems(i, list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.addMediaSource(mediaSource);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(int i, MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.addMediaSource(i, mediaSource);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(List<MediaSource> list) {
        blockUntilConstructorFinished();
        this.player.addMediaSources(list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(int i, List<MediaSource> list) {
        blockUntilConstructorFinished();
        this.player.addMediaSources(i, list);
    }

    @Override // com.google.android.exoplayer2.Player
    public void moveMediaItems(int i, int i2, int i3) {
        blockUntilConstructorFinished();
        this.player.moveMediaItems(i, i2, i3);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeMediaItems(int i, int i2) {
        blockUntilConstructorFinished();
        this.player.removeMediaItems(i, i2);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        blockUntilConstructorFinished();
        this.player.setShuffleOrder(shuffleOrder);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlayWhenReady(boolean z) {
        blockUntilConstructorFinished();
        this.player.setPlayWhenReady(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getPlayWhenReady() {
        blockUntilConstructorFinished();
        return this.player.getPlayWhenReady();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPauseAtEndOfMediaItems(boolean z) {
        blockUntilConstructorFinished();
        this.player.setPauseAtEndOfMediaItems(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean getPauseAtEndOfMediaItems() {
        blockUntilConstructorFinished();
        return this.player.getPauseAtEndOfMediaItems();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRepeatMode() {
        blockUntilConstructorFinished();
        return this.player.getRepeatMode();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setRepeatMode(int i) {
        blockUntilConstructorFinished();
        this.player.setRepeatMode(i);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setShuffleModeEnabled(boolean z) {
        blockUntilConstructorFinished();
        this.player.setShuffleModeEnabled(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getShuffleModeEnabled() {
        blockUntilConstructorFinished();
        return this.player.getShuffleModeEnabled();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isLoading() {
        blockUntilConstructorFinished();
        return this.player.isLoading();
    }

    @Override // com.google.android.exoplayer2.BasePlayer
    public void seekTo(int i, long j, int i2, boolean z) {
        blockUntilConstructorFinished();
        this.player.seekTo(i, j, i2, z);
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekBackIncrement() {
        blockUntilConstructorFinished();
        return this.player.getSeekBackIncrement();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekForwardIncrement() {
        blockUntilConstructorFinished();
        return this.player.getSeekForwardIncrement();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getMaxSeekToPreviousPosition() {
        blockUntilConstructorFinished();
        return this.player.getMaxSeekToPreviousPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        blockUntilConstructorFinished();
        this.player.setPlaybackParameters(playbackParameters);
    }

    @Override // com.google.android.exoplayer2.Player
    public PlaybackParameters getPlaybackParameters() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setSeekParameters(SeekParameters seekParameters) {
        blockUntilConstructorFinished();
        this.player.setSeekParameters(seekParameters);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public SeekParameters getSeekParameters() {
        blockUntilConstructorFinished();
        return this.player.getSeekParameters();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setForegroundMode(boolean z) {
        blockUntilConstructorFinished();
        this.player.setForegroundMode(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop() {
        blockUntilConstructorFinished();
        this.player.stop();
    }

    @Override // com.google.android.exoplayer2.Player
    @Deprecated
    public void stop(boolean z) {
        blockUntilConstructorFinished();
        this.player.stop(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void release() {
        blockUntilConstructorFinished();
        this.player.release();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        blockUntilConstructorFinished();
        return this.player.createMessage(target);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererCount() {
        blockUntilConstructorFinished();
        return this.player.getRendererCount();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererType(int i) {
        blockUntilConstructorFinished();
        return this.player.getRendererType(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Renderer getRenderer(int i) {
        blockUntilConstructorFinished();
        return this.player.getRenderer(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public TrackSelector getTrackSelector() {
        blockUntilConstructorFinished();
        return this.player.getTrackSelector();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public TrackGroupArray getCurrentTrackGroups() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTrackGroups();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public TrackSelectionArray getCurrentTrackSelections() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTrackSelections();
    }

    @Override // com.google.android.exoplayer2.Player
    public Tracks getCurrentTracks() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTracks();
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackSelectionParameters getTrackSelectionParameters() {
        blockUntilConstructorFinished();
        return this.player.getTrackSelectionParameters();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        blockUntilConstructorFinished();
        this.player.setTrackSelectionParameters(trackSelectionParameters);
    }

    @Override // com.google.android.exoplayer2.Player
    public MediaMetadata getMediaMetadata() {
        blockUntilConstructorFinished();
        return this.player.getMediaMetadata();
    }

    @Override // com.google.android.exoplayer2.Player
    public MediaMetadata getPlaylistMetadata() {
        blockUntilConstructorFinished();
        return this.player.getPlaylistMetadata();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        blockUntilConstructorFinished();
        this.player.setPlaylistMetadata(mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.Player
    public Timeline getCurrentTimeline() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTimeline();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        blockUntilConstructorFinished();
        return this.player.getCurrentPeriodIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentMediaItemIndex() {
        blockUntilConstructorFinished();
        return this.player.getCurrentMediaItemIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getDuration() {
        blockUntilConstructorFinished();
        return this.player.getDuration();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getCurrentPosition() {
        blockUntilConstructorFinished();
        return this.player.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getBufferedPosition() {
        blockUntilConstructorFinished();
        return this.player.getBufferedPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getTotalBufferedDuration() {
        blockUntilConstructorFinished();
        return this.player.getTotalBufferedDuration();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isPlayingAd() {
        blockUntilConstructorFinished();
        return this.player.isPlayingAd();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        blockUntilConstructorFinished();
        return this.player.getCurrentAdGroupIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        blockUntilConstructorFinished();
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentPosition() {
        blockUntilConstructorFinished();
        return this.player.getContentPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentBufferedPosition() {
        blockUntilConstructorFinished();
        return this.player.getContentBufferedPosition();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void setHandleWakeLock(boolean z) {
        blockUntilConstructorFinished();
        this.player.setHandleWakeLock(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setWakeMode(int i) {
        blockUntilConstructorFinished();
        this.player.setWakeMode(i);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public DeviceInfo getDeviceInfo() {
        blockUntilConstructorFinished();
        return this.player.getDeviceInfo();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public int getDeviceVolume() {
        blockUntilConstructorFinished();
        return this.player.getDeviceVolume();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public boolean isDeviceMuted() {
        blockUntilConstructorFinished();
        return this.player.isDeviceMuted();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public void setDeviceVolume(int i) {
        blockUntilConstructorFinished();
        this.player.setDeviceVolume(i);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public void increaseDeviceVolume() {
        blockUntilConstructorFinished();
        this.player.increaseDeviceVolume();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public void decreaseDeviceVolume() {
        blockUntilConstructorFinished();
        this.player.decreaseDeviceVolume();
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public void setDeviceMuted(boolean z) {
        blockUntilConstructorFinished();
        this.player.setDeviceMuted(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean isTunnelingEnabled() {
        blockUntilConstructorFinished();
        return this.player.isTunnelingEnabled();
    }

    void setThrowsWhenUsingWrongThread(boolean z) {
        blockUntilConstructorFinished();
        this.player.setThrowsWhenUsingWrongThread(z);
    }

    private void blockUntilConstructorFinished() {
        this.constructorFinished.blockUninterruptible();
    }
}
