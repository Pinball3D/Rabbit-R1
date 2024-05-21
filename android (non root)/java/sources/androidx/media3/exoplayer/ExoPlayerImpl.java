package androidx.media3.exoplayer;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Effect;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.SimpleBasePlayer$$ExternalSyntheticLambda21;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.AudioBecomingNoisyManager;
import androidx.media3.exoplayer.AudioFocusManager;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.ExoPlayerImpl;
import androidx.media3.exoplayer.ExoPlayerImplInternal;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.StreamVolumeManager;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionArray;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoDecoderOutputBufferRenderer;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ExoPlayerImpl extends BasePlayer implements ExoPlayer, ExoPlayer.AudioComponent, ExoPlayer.VideoComponent, ExoPlayer.TextComponent, ExoPlayer.DeviceComponent {
    private static final String TAG = "ExoPlayerImpl";
    private final AnalyticsCollector analyticsCollector;
    private final Context applicationContext;
    private final Looper applicationLooper;
    private AudioAttributes audioAttributes;
    private final AudioBecomingNoisyManager audioBecomingNoisyManager;
    private DecoderCounters audioDecoderCounters;
    private final AudioFocusManager audioFocusManager;
    private Format audioFormat;
    private final CopyOnWriteArraySet<ExoPlayer.AudioOffloadListener> audioOffloadListeners;
    private int audioSessionId;
    private Player.Commands availableCommands;
    private final BandwidthMeter bandwidthMeter;
    private CameraMotionListener cameraMotionListener;
    private final Clock clock;
    private final ComponentListener componentListener;
    private final ConditionVariable constructorFinished;
    private CueGroup currentCueGroup;
    private final long detachSurfaceTimeoutMs;
    private DeviceInfo deviceInfo;
    final TrackSelectorResult emptyTrackSelectorResult;
    private boolean foregroundMode;
    private final FrameMetadataListener frameMetadataListener;
    private boolean hasNotifiedFullWrongThreadWarning;
    private final ExoPlayerImplInternal internalPlayer;
    private boolean isPriorityTaskManagerRegistered;
    private AudioTrack keepSessionIdAudioTrack;
    private final ListenerSet<Player.Listener> listeners;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private MediaMetadata mediaMetadata;
    private final MediaSource.Factory mediaSourceFactory;
    private final List<MediaSourceHolderSnapshot> mediaSourceHolderSnapshots;
    private Surface ownedSurface;
    private boolean pauseAtEndOfMediaItems;
    private boolean pendingDiscontinuity;
    private int pendingDiscontinuityReason;
    private int pendingOperationAcks;
    private int pendingPlayWhenReadyChangeReason;
    private final Timeline.Period period;
    final Player.Commands permanentAvailableCommands;
    private PlaybackInfo playbackInfo;
    private final HandlerWrapper playbackInfoUpdateHandler;
    private final ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private boolean playerReleased;
    private MediaMetadata playlistMetadata;
    private PriorityTaskManager priorityTaskManager;
    private final Renderer[] renderers;
    private int repeatMode;
    private final long seekBackIncrementMs;
    private final long seekForwardIncrementMs;
    private SeekParameters seekParameters;
    private boolean shuffleModeEnabled;
    private ShuffleOrder shuffleOrder;
    private boolean skipSilenceEnabled;
    private SphericalGLSurfaceView sphericalGLSurfaceView;
    private MediaMetadata staticAndDynamicMediaMetadata;
    private final StreamVolumeManager streamVolumeManager;
    private SurfaceHolder surfaceHolder;
    private boolean surfaceHolderSurfaceIsVideoOutput;
    private Size surfaceSize;
    private TextureView textureView;
    private boolean throwsWhenUsingWrongThread;
    private final TrackSelector trackSelector;
    private final boolean useLazyPreparation;
    private int videoChangeFrameRateStrategy;
    private DecoderCounters videoDecoderCounters;
    private Format videoFormat;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private Object videoOutput;
    private int videoScalingMode;
    private VideoSize videoSize;
    private float volume;
    private final WakeLockManager wakeLockManager;
    private final WifiLockManager wifiLockManager;
    private final Player wrappingPlayer;

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPlayWhenReadyChangeReason(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    @Override // androidx.media3.common.Player
    public Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Clock getClock() {
        return this.clock;
    }

    static {
        MediaLibraryInfo.registerModule("media3.exoplayer");
    }

    public ExoPlayerImpl(ExoPlayer.Builder builder, Player player) {
        PlayerId registerMediaMetricsListener;
        ConditionVariable conditionVariable = new ConditionVariable();
        this.constructorFinished = conditionVariable;
        try {
            Log.i(TAG, "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.1.1] [" + Util.DEVICE_DEBUG_INFO + "]");
            Context applicationContext = builder.context.getApplicationContext();
            this.applicationContext = applicationContext;
            AnalyticsCollector apply = builder.analyticsCollectorFunction.apply(builder.clock);
            this.analyticsCollector = apply;
            this.priorityTaskManager = builder.priorityTaskManager;
            this.audioAttributes = builder.audioAttributes;
            this.videoScalingMode = builder.videoScalingMode;
            this.videoChangeFrameRateStrategy = builder.videoChangeFrameRateStrategy;
            this.skipSilenceEnabled = builder.skipSilenceEnabled;
            this.detachSurfaceTimeoutMs = builder.detachSurfaceTimeoutMs;
            ComponentListener componentListener = new ComponentListener();
            this.componentListener = componentListener;
            FrameMetadataListener frameMetadataListener = new FrameMetadataListener();
            this.frameMetadataListener = frameMetadataListener;
            Handler handler = new Handler(builder.looper);
            Renderer[] createRenderers = builder.renderersFactorySupplier.get().createRenderers(handler, componentListener, componentListener, componentListener, componentListener);
            this.renderers = createRenderers;
            Assertions.checkState(createRenderers.length > 0);
            TrackSelector trackSelector = builder.trackSelectorSupplier.get();
            this.trackSelector = trackSelector;
            this.mediaSourceFactory = builder.mediaSourceFactorySupplier.get();
            BandwidthMeter bandwidthMeter = builder.bandwidthMeterSupplier.get();
            this.bandwidthMeter = bandwidthMeter;
            this.useLazyPreparation = builder.useLazyPreparation;
            this.seekParameters = builder.seekParameters;
            this.seekBackIncrementMs = builder.seekBackIncrementMs;
            this.seekForwardIncrementMs = builder.seekForwardIncrementMs;
            this.pauseAtEndOfMediaItems = builder.pauseAtEndOfMediaItems;
            Looper looper = builder.looper;
            this.applicationLooper = looper;
            Clock clock = builder.clock;
            this.clock = clock;
            Player player2 = player == null ? this : player;
            this.wrappingPlayer = player2;
            this.listeners = new ListenerSet<>(looper, clock, new ListenerSet.IterationFinishedEvent() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda12
                @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
                public final void invoke(Object obj, FlagSet flagSet) {
                    ExoPlayerImpl.this.m5198lambda$new$0$androidxmedia3exoplayerExoPlayerImpl((Player.Listener) obj, flagSet);
                }
            });
            this.audioOffloadListeners = new CopyOnWriteArraySet<>();
            this.mediaSourceHolderSnapshots = new ArrayList();
            this.shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(0);
            TrackSelectorResult trackSelectorResult = new TrackSelectorResult(new RendererConfiguration[createRenderers.length], new ExoTrackSelection[createRenderers.length], Tracks.EMPTY, null);
            this.emptyTrackSelectorResult = trackSelectorResult;
            this.period = new Timeline.Period();
            Player.Commands build = new Player.Commands.Builder().addAll(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 24, 27, 28, 32).addIf(29, trackSelector.isSetParametersSupported()).addIf(23, builder.deviceVolumeControlEnabled).addIf(25, builder.deviceVolumeControlEnabled).addIf(33, builder.deviceVolumeControlEnabled).addIf(26, builder.deviceVolumeControlEnabled).addIf(34, builder.deviceVolumeControlEnabled).build();
            this.permanentAvailableCommands = build;
            this.availableCommands = new Player.Commands.Builder().addAll(build).add(4).add(10).build();
            this.playbackInfoUpdateHandler = clock.createHandler(looper, null);
            ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener = new ExoPlayerImplInternal.PlaybackInfoUpdateListener() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda13
                @Override // androidx.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdateListener
                public final void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
                    ExoPlayerImpl.this.m5200lambda$new$2$androidxmedia3exoplayerExoPlayerImpl(playbackInfoUpdate);
                }
            };
            this.playbackInfoUpdateListener = playbackInfoUpdateListener;
            this.playbackInfo = PlaybackInfo.createDummy(trackSelectorResult);
            apply.setPlayer(player2, looper);
            if (Util.SDK_INT < 31) {
                registerMediaMetricsListener = new PlayerId();
            } else {
                registerMediaMetricsListener = Api31.registerMediaMetricsListener(applicationContext, this, builder.usePlatformDiagnostics);
            }
            ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(createRenderers, trackSelector, trackSelectorResult, builder.loadControlSupplier.get(), bandwidthMeter, this.repeatMode, this.shuffleModeEnabled, apply, this.seekParameters, builder.livePlaybackSpeedControl, builder.releaseTimeoutMs, this.pauseAtEndOfMediaItems, looper, clock, playbackInfoUpdateListener, registerMediaMetricsListener, builder.playbackLooper);
            this.internalPlayer = exoPlayerImplInternal;
            this.volume = 1.0f;
            this.repeatMode = 0;
            this.mediaMetadata = MediaMetadata.EMPTY;
            this.playlistMetadata = MediaMetadata.EMPTY;
            this.staticAndDynamicMediaMetadata = MediaMetadata.EMPTY;
            this.maskingWindowIndex = -1;
            if (Util.SDK_INT < 21) {
                this.audioSessionId = initializeKeepSessionIdAudioTrack(0);
            } else {
                this.audioSessionId = Util.generateAudioSessionIdV21(applicationContext);
            }
            this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
            this.throwsWhenUsingWrongThread = true;
            addListener(apply);
            bandwidthMeter.addEventListener(new Handler(looper), apply);
            addAudioOffloadListener(componentListener);
            if (builder.foregroundModeTimeoutMs > 0) {
                exoPlayerImplInternal.experimentalSetForegroundModeTimeoutMs(builder.foregroundModeTimeoutMs);
            }
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(builder.context, handler, componentListener);
            this.audioBecomingNoisyManager = audioBecomingNoisyManager;
            audioBecomingNoisyManager.setEnabled(builder.handleAudioBecomingNoisy);
            AudioFocusManager audioFocusManager = new AudioFocusManager(builder.context, handler, componentListener);
            this.audioFocusManager = audioFocusManager;
            audioFocusManager.setAudioAttributes(builder.handleAudioFocus ? this.audioAttributes : null);
            if (builder.deviceVolumeControlEnabled) {
                StreamVolumeManager streamVolumeManager = new StreamVolumeManager(builder.context, handler, componentListener);
                this.streamVolumeManager = streamVolumeManager;
                streamVolumeManager.setStreamType(Util.getStreamTypeForAudioUsage(this.audioAttributes.usage));
            } else {
                this.streamVolumeManager = null;
            }
            WakeLockManager wakeLockManager = new WakeLockManager(builder.context);
            this.wakeLockManager = wakeLockManager;
            wakeLockManager.setEnabled(builder.wakeMode != 0);
            WifiLockManager wifiLockManager = new WifiLockManager(builder.context);
            this.wifiLockManager = wifiLockManager;
            wifiLockManager.setEnabled(builder.wakeMode == 2);
            this.deviceInfo = createDeviceInfo(this.streamVolumeManager);
            this.videoSize = VideoSize.UNKNOWN;
            this.surfaceSize = Size.UNKNOWN;
            trackSelector.setAudioAttributes(this.audioAttributes);
            sendRendererMessage(1, 10, Integer.valueOf(this.audioSessionId));
            sendRendererMessage(2, 10, Integer.valueOf(this.audioSessionId));
            sendRendererMessage(1, 3, this.audioAttributes);
            sendRendererMessage(2, 4, Integer.valueOf(this.videoScalingMode));
            sendRendererMessage(2, 5, Integer.valueOf(this.videoChangeFrameRateStrategy));
            sendRendererMessage(1, 9, Boolean.valueOf(this.skipSilenceEnabled));
            sendRendererMessage(2, 7, frameMetadataListener);
            sendRendererMessage(6, 8, frameMetadataListener);
            conditionVariable.open();
        } catch (Throwable th) {
            this.constructorFinished.open();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    public /* synthetic */ void m5198lambda$new$0$androidxmedia3exoplayerExoPlayerImpl(Player.Listener listener, FlagSet flagSet) {
        listener.onEvents(this.wrappingPlayer, new Player.Events(flagSet));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$2$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    public /* synthetic */ void m5200lambda$new$2$androidxmedia3exoplayerExoPlayerImpl(final ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.playbackInfoUpdateHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ExoPlayerImpl.this.m5199lambda$new$1$androidxmedia3exoplayerExoPlayerImpl(playbackInfoUpdate);
            }
        });
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public ExoPlayer.AudioComponent getAudioComponent() {
        verifyApplicationThread();
        return this;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public ExoPlayer.VideoComponent getVideoComponent() {
        verifyApplicationThread();
        return this;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public ExoPlayer.TextComponent getTextComponent() {
        verifyApplicationThread();
        return this;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public ExoPlayer.DeviceComponent getDeviceComponent() {
        verifyApplicationThread();
        return this;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void experimentalSetOffloadSchedulingEnabled(boolean z) {
        verifyApplicationThread();
        this.internalPlayer.experimentalSetOffloadSchedulingEnabled(z);
        Iterator<ExoPlayer.AudioOffloadListener> it = this.audioOffloadListeners.iterator();
        while (it.hasNext()) {
            it.next().onExperimentalOffloadSchedulingEnabledChanged(z);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean experimentalIsSleepingForOffload() {
        verifyApplicationThread();
        return this.playbackInfo.sleepingForOffload;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.audioOffloadListeners.add(audioOffloadListener);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void removeAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        verifyApplicationThread();
        this.audioOffloadListeners.remove(audioOffloadListener);
    }

    @Override // androidx.media3.common.Player
    public Player.Commands getAvailableCommands() {
        verifyApplicationThread();
        return this.availableCommands;
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackState() {
        verifyApplicationThread();
        return this.playbackInfo.playbackState;
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackSuppressionReason() {
        verifyApplicationThread();
        return this.playbackInfo.playbackSuppressionReason;
    }

    @Override // androidx.media3.common.Player
    public ExoPlaybackException getPlayerError() {
        verifyApplicationThread();
        return this.playbackInfo.playbackError;
    }

    @Override // androidx.media3.common.Player
    public void prepare() {
        verifyApplicationThread();
        boolean playWhenReady = getPlayWhenReady();
        int updateAudioFocus = this.audioFocusManager.updateAudioFocus(playWhenReady, 2);
        updatePlayWhenReady(playWhenReady, updateAudioFocus, getPlayWhenReadyChangeReason(playWhenReady, updateAudioFocus));
        if (this.playbackInfo.playbackState != 1) {
            return;
        }
        PlaybackInfo copyWithPlaybackError = this.playbackInfo.copyWithPlaybackError(null);
        PlaybackInfo copyWithPlaybackState = copyWithPlaybackError.copyWithPlaybackState(copyWithPlaybackError.timeline.isEmpty() ? 4 : 2);
        this.pendingOperationAcks++;
        this.internalPlayer.prepare();
        updatePlaybackInfo(copyWithPlaybackState, 1, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource) {
        verifyApplicationThread();
        setMediaSource(mediaSource);
        prepare();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        verifyApplicationThread();
        setMediaSource(mediaSource, z);
        prepare();
    }

    @Override // androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> list, boolean z) {
        verifyApplicationThread();
        setMediaSources(createMediaSources(list), z);
    }

    @Override // androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> list, int i, long j) {
        verifyApplicationThread();
        setMediaSources(createMediaSources(list), i, j);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSource(MediaSource mediaSource) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, long j) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource), 0, j);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, boolean z) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource), z);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSources(List<MediaSource> list) {
        verifyApplicationThread();
        setMediaSources(list, true);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSources(List<MediaSource> list, boolean z) {
        verifyApplicationThread();
        setMediaSourcesInternal(list, -1, -9223372036854775807L, z);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSources(List<MediaSource> list, int i, long j) {
        verifyApplicationThread();
        setMediaSourcesInternal(list, i, j, false);
    }

    @Override // androidx.media3.common.Player
    public void addMediaItems(int i, List<MediaItem> list) {
        verifyApplicationThread();
        addMediaSources(i, createMediaSources(list));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSource(MediaSource mediaSource) {
        verifyApplicationThread();
        addMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSource(int i, MediaSource mediaSource) {
        verifyApplicationThread();
        addMediaSources(i, Collections.singletonList(mediaSource));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSources(List<MediaSource> list) {
        verifyApplicationThread();
        addMediaSources(this.mediaSourceHolderSnapshots.size(), list);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSources(int i, List<MediaSource> list) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0);
        int min = Math.min(i, this.mediaSourceHolderSnapshots.size());
        if (this.mediaSourceHolderSnapshots.isEmpty()) {
            setMediaSources(list, this.maskingWindowIndex == -1);
        } else {
            updatePlaybackInfo(addMediaSourcesInternal(this.playbackInfo, min, list), 0, 1, false, 5, -9223372036854775807L, -1, false);
        }
    }

    @Override // androidx.media3.common.Player
    public void removeMediaItems(int i, int i2) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0 && i2 >= i);
        int size = this.mediaSourceHolderSnapshots.size();
        int min = Math.min(i2, size);
        if (i >= size || i == min) {
            return;
        }
        PlaybackInfo removeMediaItemsInternal = removeMediaItemsInternal(this.playbackInfo, i, min);
        updatePlaybackInfo(removeMediaItemsInternal, 0, 1, !removeMediaItemsInternal.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid), 4, getCurrentPositionUsInternal(removeMediaItemsInternal), -1, false);
    }

    @Override // androidx.media3.common.Player
    public void moveMediaItems(int i, int i2, int i3) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0 && i <= i2 && i3 >= 0);
        int size = this.mediaSourceHolderSnapshots.size();
        int min = Math.min(i2, size);
        int min2 = Math.min(i3, size - (min - i));
        if (i >= size || i == min || i == min2) {
            return;
        }
        Timeline currentTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        Util.moveItems(this.mediaSourceHolderSnapshots, i, min, min2);
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo playbackInfo = this.playbackInfo;
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(playbackInfo, createMaskingTimeline, getPeriodPositionUsAfterTimelineChanged(currentTimeline, createMaskingTimeline, getCurrentWindowIndexInternal(playbackInfo), getContentPositionInternal(this.playbackInfo)));
        this.internalPlayer.moveMediaSources(i, min, min2, this.shuffleOrder);
        updatePlaybackInfo(maskTimelineAndPosition, 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public void replaceMediaItems(int i, int i2, List<MediaItem> list) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0 && i2 >= i);
        int size = this.mediaSourceHolderSnapshots.size();
        if (i > size) {
            return;
        }
        int min = Math.min(i2, size);
        List<MediaSource> createMediaSources = createMediaSources(list);
        if (this.mediaSourceHolderSnapshots.isEmpty()) {
            setMediaSources(createMediaSources, this.maskingWindowIndex == -1);
        } else {
            PlaybackInfo removeMediaItemsInternal = removeMediaItemsInternal(addMediaSourcesInternal(this.playbackInfo, min, createMediaSources), i, min);
            updatePlaybackInfo(removeMediaItemsInternal, 0, 1, !removeMediaItemsInternal.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid), 4, getCurrentPositionUsInternal(removeMediaItemsInternal), -1, false);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        verifyApplicationThread();
        Assertions.checkArgument(shuffleOrder.getLength() == this.mediaSourceHolderSnapshots.size());
        this.shuffleOrder = shuffleOrder;
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, createMaskingTimeline, maskWindowPositionMsOrGetPeriodPositionUs(createMaskingTimeline, getCurrentMediaItemIndex(), getCurrentPosition()));
        this.pendingOperationAcks++;
        this.internalPlayer.setShuffleOrder(shuffleOrder);
        updatePlaybackInfo(maskTimelineAndPosition, 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPauseAtEndOfMediaItems(boolean z) {
        verifyApplicationThread();
        if (this.pauseAtEndOfMediaItems == z) {
            return;
        }
        this.pauseAtEndOfMediaItems = z;
        this.internalPlayer.setPauseAtEndOfWindow(z);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean getPauseAtEndOfMediaItems() {
        verifyApplicationThread();
        return this.pauseAtEndOfMediaItems;
    }

    @Override // androidx.media3.common.Player
    public void setPlayWhenReady(boolean z) {
        verifyApplicationThread();
        int updateAudioFocus = this.audioFocusManager.updateAudioFocus(z, getPlaybackState());
        updatePlayWhenReady(z, updateAudioFocus, getPlayWhenReadyChangeReason(z, updateAudioFocus));
    }

    @Override // androidx.media3.common.Player
    public boolean getPlayWhenReady() {
        verifyApplicationThread();
        return this.playbackInfo.playWhenReady;
    }

    @Override // androidx.media3.common.Player
    public void setRepeatMode(final int i) {
        verifyApplicationThread();
        if (this.repeatMode != i) {
            this.repeatMode = i;
            this.internalPlayer.setRepeatMode(i);
            this.listeners.queueEvent(8, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda14
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onRepeatModeChanged(i);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // androidx.media3.common.Player
    public int getRepeatMode() {
        verifyApplicationThread();
        return this.repeatMode;
    }

    @Override // androidx.media3.common.Player
    public void setShuffleModeEnabled(final boolean z) {
        verifyApplicationThread();
        if (this.shuffleModeEnabled != z) {
            this.shuffleModeEnabled = z;
            this.internalPlayer.setShuffleModeEnabled(z);
            this.listeners.queueEvent(9, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda17
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onShuffleModeEnabledChanged(z);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // androidx.media3.common.Player
    public boolean getShuffleModeEnabled() {
        verifyApplicationThread();
        return this.shuffleModeEnabled;
    }

    @Override // androidx.media3.common.Player
    public boolean isLoading() {
        verifyApplicationThread();
        return this.playbackInfo.isLoading;
    }

    @Override // androidx.media3.common.BasePlayer
    public void seekTo(int i, long j, int i2, boolean z) {
        verifyApplicationThread();
        Assertions.checkArgument(i >= 0);
        this.analyticsCollector.notifySeekStarted();
        Timeline timeline = this.playbackInfo.timeline;
        if (timeline.isEmpty() || i < timeline.getWindowCount()) {
            this.pendingOperationAcks++;
            if (isPlayingAd()) {
                Log.w(TAG, "seekTo ignored because an ad is playing");
                ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.playbackInfo);
                playbackInfoUpdate.incrementPendingOperationAcks(1);
                this.playbackInfoUpdateListener.onPlaybackInfoUpdate(playbackInfoUpdate);
                return;
            }
            PlaybackInfo playbackInfo = this.playbackInfo;
            if (playbackInfo.playbackState == 3 || (this.playbackInfo.playbackState == 4 && !timeline.isEmpty())) {
                playbackInfo = this.playbackInfo.copyWithPlaybackState(2);
            }
            int currentMediaItemIndex = getCurrentMediaItemIndex();
            PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(playbackInfo, timeline, maskWindowPositionMsOrGetPeriodPositionUs(timeline, i, j));
            this.internalPlayer.seekTo(timeline, i, Util.msToUs(j));
            updatePlaybackInfo(maskTimelineAndPosition, 0, 1, true, 1, getCurrentPositionUsInternal(maskTimelineAndPosition), currentMediaItemIndex, z);
        }
    }

    @Override // androidx.media3.common.Player
    public long getSeekBackIncrement() {
        verifyApplicationThread();
        return this.seekBackIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public long getSeekForwardIncrement() {
        verifyApplicationThread();
        return this.seekForwardIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public long getMaxSeekToPreviousPosition() {
        verifyApplicationThread();
        return 3000L;
    }

    @Override // androidx.media3.common.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        verifyApplicationThread();
        if (playbackParameters == null) {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        if (this.playbackInfo.playbackParameters.equals(playbackParameters)) {
            return;
        }
        PlaybackInfo copyWithPlaybackParameters = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        this.pendingOperationAcks++;
        this.internalPlayer.setPlaybackParameters(playbackParameters);
        updatePlaybackInfo(copyWithPlaybackParameters, 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public PlaybackParameters getPlaybackParameters() {
        verifyApplicationThread();
        return this.playbackInfo.playbackParameters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setSeekParameters(SeekParameters seekParameters) {
        verifyApplicationThread();
        if (seekParameters == null) {
            seekParameters = SeekParameters.DEFAULT;
        }
        if (this.seekParameters.equals(seekParameters)) {
            return;
        }
        this.seekParameters = seekParameters;
        this.internalPlayer.setSeekParameters(seekParameters);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public SeekParameters getSeekParameters() {
        verifyApplicationThread();
        return this.seekParameters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setForegroundMode(boolean z) {
        verifyApplicationThread();
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            if (this.internalPlayer.setForegroundMode(z)) {
                return;
            }
            stopInternal(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(2), 1003));
        }
    }

    @Override // androidx.media3.common.Player
    public void stop() {
        verifyApplicationThread();
        this.audioFocusManager.updateAudioFocus(getPlayWhenReady(), 1);
        stopInternal(null);
        this.currentCueGroup = new CueGroup(ImmutableList.of(), this.playbackInfo.positionUs);
    }

    @Override // androidx.media3.common.Player
    public void release() {
        AudioTrack audioTrack;
        Log.i(TAG, "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.1.1] [" + Util.DEVICE_DEBUG_INFO + "] [" + MediaLibraryInfo.registeredModules() + "]");
        verifyApplicationThread();
        if (Util.SDK_INT < 21 && (audioTrack = this.keepSessionIdAudioTrack) != null) {
            audioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        this.audioBecomingNoisyManager.setEnabled(false);
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.release();
        }
        this.wakeLockManager.setStayAwake(false);
        this.wifiLockManager.setStayAwake(false);
        this.audioFocusManager.release();
        if (!this.internalPlayer.release()) {
            this.listeners.sendEvent(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda16
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
                }
            });
        }
        this.listeners.release();
        this.playbackInfoUpdateHandler.removeCallbacksAndMessages(null);
        this.bandwidthMeter.removeEventListener(this.analyticsCollector);
        if (this.playbackInfo.sleepingForOffload) {
            this.playbackInfo = this.playbackInfo.copyWithEstimatedPosition();
        }
        PlaybackInfo copyWithPlaybackState = this.playbackInfo.copyWithPlaybackState(1);
        this.playbackInfo = copyWithPlaybackState;
        PlaybackInfo copyWithLoadingMediaPeriodId = copyWithPlaybackState.copyWithLoadingMediaPeriodId(copyWithPlaybackState.periodId);
        this.playbackInfo = copyWithLoadingMediaPeriodId;
        copyWithLoadingMediaPeriodId.bufferedPositionUs = copyWithLoadingMediaPeriodId.positionUs;
        this.playbackInfo.totalBufferedDurationUs = 0L;
        this.analyticsCollector.release();
        this.trackSelector.release();
        removeSurfaceCallbacks();
        Surface surface = this.ownedSurface;
        if (surface != null) {
            surface.release();
            this.ownedSurface = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((PriorityTaskManager) Assertions.checkNotNull(this.priorityTaskManager)).remove(0);
            this.isPriorityTaskManagerRegistered = false;
        }
        this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
        this.playerReleased = true;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        verifyApplicationThread();
        return createMessageInternal(target);
    }

    @Override // androidx.media3.common.Player
    public int getCurrentPeriodIndex() {
        verifyApplicationThread();
        return this.playbackInfo.timeline.isEmpty() ? this.maskingPeriodIndex : this.playbackInfo.timeline.getIndexOfPeriod(this.playbackInfo.periodId.periodUid);
    }

    @Override // androidx.media3.common.Player
    public int getCurrentMediaItemIndex() {
        verifyApplicationThread();
        int currentWindowIndexInternal = getCurrentWindowIndexInternal(this.playbackInfo);
        if (currentWindowIndexInternal == -1) {
            return 0;
        }
        return currentWindowIndexInternal;
    }

    @Override // androidx.media3.common.Player
    public long getDuration() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
            this.playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
            return Util.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
        }
        return getContentDuration();
    }

    @Override // androidx.media3.common.Player
    public long getCurrentPosition() {
        verifyApplicationThread();
        return Util.usToMs(getCurrentPositionUsInternal(this.playbackInfo));
    }

    @Override // androidx.media3.common.Player
    public long getBufferedPosition() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            if (this.playbackInfo.loadingMediaPeriodId.equals(this.playbackInfo.periodId)) {
                return Util.usToMs(this.playbackInfo.bufferedPositionUs);
            }
            return getDuration();
        }
        return getContentBufferedPosition();
    }

    @Override // androidx.media3.common.Player
    public long getTotalBufferedDuration() {
        verifyApplicationThread();
        return Util.usToMs(this.playbackInfo.totalBufferedDurationUs);
    }

    @Override // androidx.media3.common.Player
    public boolean isPlayingAd() {
        verifyApplicationThread();
        return this.playbackInfo.periodId.isAd();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdGroupIndex() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdIndexInAdGroup() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public long getContentPosition() {
        verifyApplicationThread();
        return getContentPositionInternal(this.playbackInfo);
    }

    @Override // androidx.media3.common.Player
    public long getContentBufferedPosition() {
        verifyApplicationThread();
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowPositionMs;
        }
        if (this.playbackInfo.loadingMediaPeriodId.windowSequenceNumber != this.playbackInfo.periodId.windowSequenceNumber) {
            return this.playbackInfo.timeline.getWindow(getCurrentMediaItemIndex(), this.window).getDurationMs();
        }
        long j = this.playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.isAd()) {
            Timeline.Period periodByUid = this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.loadingMediaPeriodId.periodUid, this.period);
            long adGroupTimeUs = periodByUid.getAdGroupTimeUs(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            j = adGroupTimeUs == Long.MIN_VALUE ? periodByUid.durationUs : adGroupTimeUs;
        }
        return Util.usToMs(periodPositionUsToWindowPositionUs(this.playbackInfo.timeline, this.playbackInfo.loadingMediaPeriodId, j));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public int getRendererCount() {
        verifyApplicationThread();
        return this.renderers.length;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public int getRendererType(int i) {
        verifyApplicationThread();
        return this.renderers[i].getTrackType();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Renderer getRenderer(int i) {
        verifyApplicationThread();
        return this.renderers[i];
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public TrackSelector getTrackSelector() {
        verifyApplicationThread();
        return this.trackSelector;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public TrackGroupArray getCurrentTrackGroups() {
        verifyApplicationThread();
        return this.playbackInfo.trackGroups;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public TrackSelectionArray getCurrentTrackSelections() {
        verifyApplicationThread();
        return new TrackSelectionArray(this.playbackInfo.trackSelectorResult.selections);
    }

    @Override // androidx.media3.common.Player
    public Tracks getCurrentTracks() {
        verifyApplicationThread();
        return this.playbackInfo.trackSelectorResult.tracks;
    }

    @Override // androidx.media3.common.Player
    public TrackSelectionParameters getTrackSelectionParameters() {
        verifyApplicationThread();
        return this.trackSelector.getParameters();
    }

    @Override // androidx.media3.common.Player
    public void setTrackSelectionParameters(final TrackSelectionParameters trackSelectionParameters) {
        verifyApplicationThread();
        if (!this.trackSelector.isSetParametersSupported() || trackSelectionParameters.equals(this.trackSelector.getParameters())) {
            return;
        }
        this.trackSelector.setParameters(trackSelectionParameters);
        this.listeners.sendEvent(19, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda11
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onTrackSelectionParametersChanged(TrackSelectionParameters.this);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata getMediaMetadata() {
        verifyApplicationThread();
        return this.mediaMetadata;
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata getPlaylistMetadata() {
        verifyApplicationThread();
        return this.playlistMetadata;
    }

    @Override // androidx.media3.common.Player
    public void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        verifyApplicationThread();
        Assertions.checkNotNull(mediaMetadata);
        if (mediaMetadata.equals(this.playlistMetadata)) {
            return;
        }
        this.playlistMetadata = mediaMetadata;
        this.listeners.sendEvent(15, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda10
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ExoPlayerImpl.this.m5201x47ee3208((Player.Listener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setPlaylistMetadata$7$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    public /* synthetic */ void m5201x47ee3208(Player.Listener listener) {
        listener.onPlaylistMetadataChanged(this.playlistMetadata);
    }

    @Override // androidx.media3.common.Player
    public Timeline getCurrentTimeline() {
        verifyApplicationThread();
        return this.playbackInfo.timeline;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setVideoEffects(List<Effect> list) {
        verifyApplicationThread();
        sendRendererMessage(2, 13, list);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public void setVideoScalingMode(int i) {
        verifyApplicationThread();
        this.videoScalingMode = i;
        sendRendererMessage(2, 4, Integer.valueOf(i));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public int getVideoScalingMode() {
        verifyApplicationThread();
        return this.videoScalingMode;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public void setVideoChangeFrameRateStrategy(int i) {
        verifyApplicationThread();
        if (this.videoChangeFrameRateStrategy == i) {
            return;
        }
        this.videoChangeFrameRateStrategy = i;
        sendRendererMessage(2, 5, Integer.valueOf(i));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public int getVideoChangeFrameRateStrategy() {
        verifyApplicationThread();
        return this.videoChangeFrameRateStrategy;
    }

    @Override // androidx.media3.common.Player
    public VideoSize getVideoSize() {
        verifyApplicationThread();
        return this.videoSize;
    }

    @Override // androidx.media3.common.Player
    public Size getSurfaceSize() {
        verifyApplicationThread();
        return this.surfaceSize;
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface() {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(null);
        maybeNotifySurfaceSizeChanged(0, 0);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface(Surface surface) {
        verifyApplicationThread();
        if (surface == null || surface != this.videoOutput) {
            return;
        }
        clearVideoSurface();
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurface(Surface surface) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(surface);
        int i = surface == null ? 0 : -1;
        maybeNotifySurfaceSizeChanged(i, i);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.surfaceHolderSurfaceIsVideoOutput = true;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            setVideoOutputInternal(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            maybeNotifySurfaceSizeChanged(surfaceFrame.width(), surfaceFrame.height());
        } else {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        }
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder == null || surfaceHolder != this.surfaceHolder) {
            return;
        }
        clearVideoSurface();
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        verifyApplicationThread();
        if (surfaceView instanceof VideoDecoderOutputBufferRenderer) {
            removeSurfaceCallbacks();
            setVideoOutputInternal(surfaceView);
            setNonVideoOutputSurfaceHolderInternal(surfaceView.getHolder());
        } else {
            if (surfaceView instanceof SphericalGLSurfaceView) {
                removeSurfaceCallbacks();
                this.sphericalGLSurfaceView = (SphericalGLSurfaceView) surfaceView;
                createMessageInternal(this.frameMetadataListener).setType(10000).setPayload(this.sphericalGLSurfaceView).send();
                this.sphericalGLSurfaceView.addVideoSurfaceListener(this.componentListener);
                setVideoOutputInternal(this.sphericalGLSurfaceView.getVideoSurface());
                setNonVideoOutputSurfaceHolderInternal(surfaceView.getHolder());
                return;
            }
            setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
        }
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        verifyApplicationThread();
        clearVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // androidx.media3.common.Player
    public void setVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.textureView = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.w(TAG, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        } else {
            setSurfaceTextureInternal(surfaceTexture);
            maybeNotifySurfaceSizeChanged(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // androidx.media3.common.Player
    public void clearVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null || textureView != this.textureView) {
            return;
        }
        clearVideoSurface();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.AudioComponent
    public void setAudioAttributes(final AudioAttributes audioAttributes, boolean z) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        if (!Util.areEqual(this.audioAttributes, audioAttributes)) {
            this.audioAttributes = audioAttributes;
            sendRendererMessage(1, 3, audioAttributes);
            StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
            if (streamVolumeManager != null) {
                streamVolumeManager.setStreamType(Util.getStreamTypeForAudioUsage(audioAttributes.usage));
            }
            this.listeners.queueEvent(20, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda9
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onAudioAttributesChanged(AudioAttributes.this);
                }
            });
        }
        this.audioFocusManager.setAudioAttributes(z ? audioAttributes : null);
        this.trackSelector.setAudioAttributes(audioAttributes);
        boolean playWhenReady = getPlayWhenReady();
        int updateAudioFocus = this.audioFocusManager.updateAudioFocus(playWhenReady, getPlaybackState());
        updatePlayWhenReady(playWhenReady, updateAudioFocus, getPlayWhenReadyChangeReason(playWhenReady, updateAudioFocus));
        this.listeners.flushEvents();
    }

    @Override // androidx.media3.common.Player
    public AudioAttributes getAudioAttributes() {
        verifyApplicationThread();
        return this.audioAttributes;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.AudioComponent
    public void setAudioSessionId(final int i) {
        verifyApplicationThread();
        if (this.audioSessionId == i) {
            return;
        }
        if (i == 0) {
            if (Util.SDK_INT < 21) {
                i = initializeKeepSessionIdAudioTrack(0);
            } else {
                i = Util.generateAudioSessionIdV21(this.applicationContext);
            }
        } else if (Util.SDK_INT < 21) {
            initializeKeepSessionIdAudioTrack(i);
        }
        this.audioSessionId = i;
        sendRendererMessage(1, 10, Integer.valueOf(i));
        sendRendererMessage(2, 10, Integer.valueOf(i));
        this.listeners.sendEvent(21, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onAudioSessionIdChanged(i);
            }
        });
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.AudioComponent
    public int getAudioSessionId() {
        verifyApplicationThread();
        return this.audioSessionId;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.AudioComponent
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        verifyApplicationThread();
        sendRendererMessage(1, 6, auxEffectInfo);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.AudioComponent
    public void clearAuxEffectInfo() {
        verifyApplicationThread();
        setAuxEffectInfo(new AuxEffectInfo(0, 0.0f));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPreferredAudioDevice(AudioDeviceInfo audioDeviceInfo) {
        verifyApplicationThread();
        sendRendererMessage(1, 12, audioDeviceInfo);
    }

    @Override // androidx.media3.common.Player
    public void setVolume(float f) {
        verifyApplicationThread();
        final float constrainValue = Util.constrainValue(f, 0.0f, 1.0f);
        if (this.volume == constrainValue) {
            return;
        }
        this.volume = constrainValue;
        sendVolumeToRenderers();
        this.listeners.sendEvent(22, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda19
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onVolumeChanged(constrainValue);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public float getVolume() {
        verifyApplicationThread();
        return this.volume;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.AudioComponent
    public boolean getSkipSilenceEnabled() {
        verifyApplicationThread();
        return this.skipSilenceEnabled;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.AudioComponent
    public void setSkipSilenceEnabled(final boolean z) {
        verifyApplicationThread();
        if (this.skipSilenceEnabled == z) {
            return;
        }
        this.skipSilenceEnabled = z;
        sendRendererMessage(1, 9, Boolean.valueOf(z));
        this.listeners.sendEvent(23, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda20
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSkipSilenceEnabledChanged(z);
            }
        });
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public AnalyticsCollector getAnalyticsCollector() {
        verifyApplicationThread();
        return this.analyticsCollector;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addAnalyticsListener(AnalyticsListener analyticsListener) {
        this.analyticsCollector.addListener((AnalyticsListener) Assertions.checkNotNull(analyticsListener));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void removeAnalyticsListener(AnalyticsListener analyticsListener) {
        verifyApplicationThread();
        this.analyticsCollector.removeListener((AnalyticsListener) Assertions.checkNotNull(analyticsListener));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setHandleAudioBecomingNoisy(boolean z) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        this.audioBecomingNoisyManager.setEnabled(z);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
        verifyApplicationThread();
        if (Util.areEqual(this.priorityTaskManager, priorityTaskManager)) {
            return;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((PriorityTaskManager) Assertions.checkNotNull(this.priorityTaskManager)).remove(0);
        }
        if (priorityTaskManager == null || !isLoading()) {
            this.isPriorityTaskManagerRegistered = false;
        } else {
            priorityTaskManager.add(0);
            this.isPriorityTaskManagerRegistered = true;
        }
        this.priorityTaskManager = priorityTaskManager;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Format getVideoFormat() {
        verifyApplicationThread();
        return this.videoFormat;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Format getAudioFormat() {
        verifyApplicationThread();
        return this.audioFormat;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public DecoderCounters getVideoDecoderCounters() {
        verifyApplicationThread();
        return this.videoDecoderCounters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public DecoderCounters getAudioDecoderCounters() {
        verifyApplicationThread();
        return this.audioDecoderCounters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        verifyApplicationThread();
        this.videoFrameMetadataListener = videoFrameMetadataListener;
        createMessageInternal(this.frameMetadataListener).setType(7).setPayload(videoFrameMetadataListener).send();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        verifyApplicationThread();
        if (this.videoFrameMetadataListener != videoFrameMetadataListener) {
            return;
        }
        createMessageInternal(this.frameMetadataListener).setType(7).setPayload(null).send();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public void setCameraMotionListener(CameraMotionListener cameraMotionListener) {
        verifyApplicationThread();
        this.cameraMotionListener = cameraMotionListener;
        createMessageInternal(this.frameMetadataListener).setType(8).setPayload(cameraMotionListener).send();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer, androidx.media3.exoplayer.ExoPlayer.VideoComponent
    public void clearCameraMotionListener(CameraMotionListener cameraMotionListener) {
        verifyApplicationThread();
        if (this.cameraMotionListener != cameraMotionListener) {
            return;
        }
        createMessageInternal(this.frameMetadataListener).setType(8).setPayload(null).send();
    }

    @Override // androidx.media3.common.Player
    public CueGroup getCurrentCues() {
        verifyApplicationThread();
        return this.currentCueGroup;
    }

    @Override // androidx.media3.common.Player
    public void addListener(Player.Listener listener) {
        this.listeners.add((Player.Listener) Assertions.checkNotNull(listener));
    }

    @Override // androidx.media3.common.Player
    public void removeListener(Player.Listener listener) {
        verifyApplicationThread();
        this.listeners.remove((Player.Listener) Assertions.checkNotNull(listener));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setWakeMode(int i) {
        verifyApplicationThread();
        if (i == 0) {
            this.wakeLockManager.setEnabled(false);
            this.wifiLockManager.setEnabled(false);
        } else if (i == 1) {
            this.wakeLockManager.setEnabled(true);
            this.wifiLockManager.setEnabled(false);
        } else {
            if (i != 2) {
                return;
            }
            this.wakeLockManager.setEnabled(true);
            this.wifiLockManager.setEnabled(true);
        }
    }

    @Override // androidx.media3.common.Player
    public DeviceInfo getDeviceInfo() {
        verifyApplicationThread();
        return this.deviceInfo;
    }

    @Override // androidx.media3.common.Player
    public int getDeviceVolume() {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            return streamVolumeManager.getVolume();
        }
        return 0;
    }

    @Override // androidx.media3.common.Player
    public boolean isDeviceMuted() {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            return streamVolumeManager.isMuted();
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void setDeviceVolume(int i) {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.setVolume(i, 1);
        }
    }

    @Override // androidx.media3.common.Player
    public void setDeviceVolume(int i, int i2) {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.setVolume(i, i2);
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void increaseDeviceVolume() {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.increaseVolume(1);
        }
    }

    @Override // androidx.media3.common.Player
    public void increaseDeviceVolume(int i) {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.increaseVolume(i);
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void decreaseDeviceVolume() {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.decreaseVolume(1);
        }
    }

    @Override // androidx.media3.common.Player
    public void decreaseDeviceVolume(int i) {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.decreaseVolume(i);
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void setDeviceMuted(boolean z) {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.setMuted(z, 1);
        }
    }

    @Override // androidx.media3.common.Player
    public void setDeviceMuted(boolean z, int i) {
        verifyApplicationThread();
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.setMuted(z, i);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean isTunnelingEnabled() {
        verifyApplicationThread();
        for (RendererConfiguration rendererConfiguration : this.playbackInfo.trackSelectorResult.rendererConfigurations) {
            if (rendererConfiguration != null && rendererConfiguration.tunneling) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setThrowsWhenUsingWrongThread(boolean z) {
        this.throwsWhenUsingWrongThread = z;
        this.listeners.setThrowsWhenUsingWrongThread(z);
        AnalyticsCollector analyticsCollector = this.analyticsCollector;
        if (analyticsCollector instanceof DefaultAnalyticsCollector) {
            ((DefaultAnalyticsCollector) analyticsCollector).setThrowsWhenUsingWrongThread(z);
        }
    }

    private void stopInternal(ExoPlaybackException exoPlaybackException) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        PlaybackInfo copyWithLoadingMediaPeriodId = playbackInfo.copyWithLoadingMediaPeriodId(playbackInfo.periodId);
        copyWithLoadingMediaPeriodId.bufferedPositionUs = copyWithLoadingMediaPeriodId.positionUs;
        copyWithLoadingMediaPeriodId.totalBufferedDurationUs = 0L;
        PlaybackInfo copyWithPlaybackState = copyWithLoadingMediaPeriodId.copyWithPlaybackState(1);
        if (exoPlaybackException != null) {
            copyWithPlaybackState = copyWithPlaybackState.copyWithPlaybackError(exoPlaybackException);
        }
        this.pendingOperationAcks++;
        this.internalPlayer.stop();
        updatePlaybackInfo(copyWithPlaybackState, 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    private int getCurrentWindowIndexInternal(PlaybackInfo playbackInfo) {
        return playbackInfo.timeline.isEmpty() ? this.maskingWindowIndex : playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    private long getContentPositionInternal(PlaybackInfo playbackInfo) {
        if (playbackInfo.periodId.isAd()) {
            playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period);
            if (playbackInfo.requestedContentPositionUs == -9223372036854775807L) {
                return playbackInfo.timeline.getWindow(getCurrentWindowIndexInternal(playbackInfo), this.window).getDefaultPositionMs();
            }
            return Util.usToMs(playbackInfo.requestedContentPositionUs) + this.period.getPositionInWindowMs();
        }
        return Util.usToMs(getCurrentPositionUsInternal(playbackInfo));
    }

    private long getCurrentPositionUsInternal(PlaybackInfo playbackInfo) {
        long j;
        if (playbackInfo.timeline.isEmpty()) {
            return Util.msToUs(this.maskingWindowPositionMs);
        }
        if (playbackInfo.sleepingForOffload) {
            j = playbackInfo.getEstimatedPositionUs();
        } else {
            j = playbackInfo.positionUs;
        }
        return playbackInfo.periodId.isAd() ? j : periodPositionUsToWindowPositionUs(playbackInfo.timeline, playbackInfo.periodId, j);
    }

    private List<MediaSource> createMediaSources(List<MediaItem> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(this.mediaSourceFactory.createMediaSource(list.get(i)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handlePlaybackInfo, reason: merged with bridge method [inline-methods] */
    public void m5199lambda$new$1$androidxmedia3exoplayerExoPlayerImpl(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        boolean z;
        this.pendingOperationAcks -= playbackInfoUpdate.operationAcks;
        boolean z2 = true;
        if (playbackInfoUpdate.positionDiscontinuity) {
            this.pendingDiscontinuityReason = playbackInfoUpdate.discontinuityReason;
            this.pendingDiscontinuity = true;
        }
        if (playbackInfoUpdate.hasPlayWhenReadyChangeReason) {
            this.pendingPlayWhenReadyChangeReason = playbackInfoUpdate.playWhenReadyChangeReason;
        }
        if (this.pendingOperationAcks == 0) {
            Timeline timeline = playbackInfoUpdate.playbackInfo.timeline;
            if (!this.playbackInfo.timeline.isEmpty() && timeline.isEmpty()) {
                this.maskingWindowIndex = -1;
                this.maskingWindowPositionMs = 0L;
                this.maskingPeriodIndex = 0;
            }
            if (!timeline.isEmpty()) {
                List<Timeline> childTimelines = ((PlaylistTimeline) timeline).getChildTimelines();
                Assertions.checkState(childTimelines.size() == this.mediaSourceHolderSnapshots.size());
                for (int i = 0; i < childTimelines.size(); i++) {
                    this.mediaSourceHolderSnapshots.get(i).timeline = childTimelines.get(i);
                }
            }
            long j = -9223372036854775807L;
            if (this.pendingDiscontinuity) {
                if (playbackInfoUpdate.playbackInfo.periodId.equals(this.playbackInfo.periodId) && playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs == this.playbackInfo.positionUs) {
                    z2 = false;
                }
                if (z2) {
                    if (timeline.isEmpty() || playbackInfoUpdate.playbackInfo.periodId.isAd()) {
                        j = playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs;
                    } else {
                        j = periodPositionUsToWindowPositionUs(timeline, playbackInfoUpdate.playbackInfo.periodId, playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs);
                    }
                }
                z = z2;
            } else {
                z = false;
            }
            this.pendingDiscontinuity = false;
            updatePlaybackInfo(playbackInfoUpdate.playbackInfo, 1, this.pendingPlayWhenReadyChangeReason, z, this.pendingDiscontinuityReason, j, -1, false);
        }
    }

    private void updatePlaybackInfo(final PlaybackInfo playbackInfo, final int i, final int i2, boolean z, final int i3, long j, int i4, boolean z2) {
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        this.playbackInfo = playbackInfo;
        boolean z3 = !playbackInfo2.timeline.equals(playbackInfo.timeline);
        Pair<Boolean, Integer> evaluateMediaItemTransitionReason = evaluateMediaItemTransitionReason(playbackInfo, playbackInfo2, z, i3, z3, z2);
        boolean booleanValue = ((Boolean) evaluateMediaItemTransitionReason.first).booleanValue();
        final int intValue = ((Integer) evaluateMediaItemTransitionReason.second).intValue();
        MediaMetadata mediaMetadata = this.mediaMetadata;
        if (booleanValue) {
            r3 = playbackInfo.timeline.isEmpty() ? null : playbackInfo.timeline.getWindow(playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).mediaItem;
            this.staticAndDynamicMediaMetadata = MediaMetadata.EMPTY;
        }
        if (booleanValue || !playbackInfo2.staticMetadata.equals(playbackInfo.staticMetadata)) {
            this.staticAndDynamicMediaMetadata = this.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(playbackInfo.staticMetadata).build();
            mediaMetadata = buildUpdatedMediaMetadata();
        }
        boolean z4 = !mediaMetadata.equals(this.mediaMetadata);
        this.mediaMetadata = mediaMetadata;
        boolean z5 = playbackInfo2.playWhenReady != playbackInfo.playWhenReady;
        boolean z6 = playbackInfo2.playbackState != playbackInfo.playbackState;
        if (z6 || z5) {
            updateWakeAndWifiLock();
        }
        boolean z7 = playbackInfo2.isLoading != playbackInfo.isLoading;
        if (z7) {
            updatePriorityTaskManagerForIsLoadingChange(playbackInfo.isLoading);
        }
        if (z3) {
            this.listeners.queueEvent(0, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda21
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.Listener listener = (Player.Listener) obj;
                    listener.onTimelineChanged(PlaybackInfo.this.timeline, i);
                }
            });
        }
        if (z) {
            final Player.PositionInfo previousPositionInfo = getPreviousPositionInfo(i3, playbackInfo2, i4);
            final Player.PositionInfo positionInfo = getPositionInfo(j);
            this.listeners.queueEvent(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda26
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.lambda$updatePlaybackInfo$13(i3, previousPositionInfo, positionInfo, (Player.Listener) obj);
                }
            });
        }
        if (booleanValue) {
            this.listeners.queueEvent(1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda27
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaItemTransition(MediaItem.this, intValue);
                }
            });
        }
        if (playbackInfo2.playbackError != playbackInfo.playbackError) {
            this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerErrorChanged(PlaybackInfo.this.playbackError);
                }
            });
            if (playbackInfo.playbackError != null) {
                this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda2
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.Listener) obj).onPlayerError(PlaybackInfo.this.playbackError);
                    }
                });
            }
        }
        if (playbackInfo2.trackSelectorResult != playbackInfo.trackSelectorResult) {
            this.trackSelector.onSelectionActivated(playbackInfo.trackSelectorResult.info);
            this.listeners.queueEvent(2, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda3
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTracksChanged(PlaybackInfo.this.trackSelectorResult.tracks);
                }
            });
        }
        if (z4) {
            final MediaMetadata mediaMetadata2 = this.mediaMetadata;
            this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda4
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaMetadataChanged(MediaMetadata.this);
                }
            });
        }
        if (z7) {
            this.listeners.queueEvent(3, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda5
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.lambda$updatePlaybackInfo$19(PlaybackInfo.this, (Player.Listener) obj);
                }
            });
        }
        if (z6 || z5) {
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda6
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerStateChanged(r0.playWhenReady, PlaybackInfo.this.playbackState);
                }
            });
        }
        if (z6) {
            this.listeners.queueEvent(4, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda7
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackStateChanged(PlaybackInfo.this.playbackState);
                }
            });
        }
        if (z5) {
            this.listeners.queueEvent(5, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda22
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.Listener listener = (Player.Listener) obj;
                    listener.onPlayWhenReadyChanged(PlaybackInfo.this.playWhenReady, i2);
                }
            });
        }
        if (playbackInfo2.playbackSuppressionReason != playbackInfo.playbackSuppressionReason) {
            this.listeners.queueEvent(6, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda23
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackSuppressionReasonChanged(PlaybackInfo.this.playbackSuppressionReason);
                }
            });
        }
        if (playbackInfo2.isPlaying() != playbackInfo.isPlaying()) {
            this.listeners.queueEvent(7, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda24
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onIsPlayingChanged(PlaybackInfo.this.isPlaying());
                }
            });
        }
        if (!playbackInfo2.playbackParameters.equals(playbackInfo.playbackParameters)) {
            this.listeners.queueEvent(12, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda25
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackParametersChanged(PlaybackInfo.this.playbackParameters);
                }
            });
        }
        updateAvailableCommands();
        this.listeners.flushEvents();
        if (playbackInfo2.sleepingForOffload != playbackInfo.sleepingForOffload) {
            Iterator<ExoPlayer.AudioOffloadListener> it = this.audioOffloadListeners.iterator();
            while (it.hasNext()) {
                it.next().onExperimentalSleepingForOffloadChanged(playbackInfo.sleepingForOffload);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updatePlaybackInfo$13(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updatePlaybackInfo$19(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onLoadingChanged(playbackInfo.isLoading);
        listener.onIsLoadingChanged(playbackInfo.isLoading);
    }

    private Player.PositionInfo getPreviousPositionInfo(int i, PlaybackInfo playbackInfo, int i2) {
        int i3;
        Object obj;
        MediaItem mediaItem;
        Object obj2;
        int i4;
        long j;
        long requestedContentPositionUs;
        Timeline.Period period = new Timeline.Period();
        if (playbackInfo.timeline.isEmpty()) {
            i3 = i2;
            obj = null;
            mediaItem = null;
            obj2 = null;
            i4 = -1;
        } else {
            Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.getPeriodByUid(obj3, period);
            int i5 = period.windowIndex;
            int indexOfPeriod = playbackInfo.timeline.getIndexOfPeriod(obj3);
            Object obj4 = playbackInfo.timeline.getWindow(i5, this.window).uid;
            mediaItem = this.window.mediaItem;
            obj2 = obj3;
            i4 = indexOfPeriod;
            obj = obj4;
            i3 = i5;
        }
        if (i == 0) {
            if (playbackInfo.periodId.isAd()) {
                j = period.getAdDurationUs(playbackInfo.periodId.adGroupIndex, playbackInfo.periodId.adIndexInAdGroup);
                requestedContentPositionUs = getRequestedContentPositionUs(playbackInfo);
            } else {
                if (playbackInfo.periodId.nextAdGroupIndex != -1) {
                    j = getRequestedContentPositionUs(this.playbackInfo);
                } else {
                    j = period.positionInWindowUs + period.durationUs;
                }
                requestedContentPositionUs = j;
            }
        } else if (playbackInfo.periodId.isAd()) {
            j = playbackInfo.positionUs;
            requestedContentPositionUs = getRequestedContentPositionUs(playbackInfo);
        } else {
            j = period.positionInWindowUs + playbackInfo.positionUs;
            requestedContentPositionUs = j;
        }
        return new Player.PositionInfo(obj, i3, mediaItem, obj2, i4, Util.usToMs(j), Util.usToMs(requestedContentPositionUs), playbackInfo.periodId.adGroupIndex, playbackInfo.periodId.adIndexInAdGroup);
    }

    private Player.PositionInfo getPositionInfo(long j) {
        MediaItem mediaItem;
        Object obj;
        int i;
        Object obj2;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        if (this.playbackInfo.timeline.isEmpty()) {
            mediaItem = null;
            obj = null;
            i = -1;
            obj2 = null;
        } else {
            Object obj3 = this.playbackInfo.periodId.periodUid;
            this.playbackInfo.timeline.getPeriodByUid(obj3, this.period);
            i = this.playbackInfo.timeline.getIndexOfPeriod(obj3);
            obj2 = this.playbackInfo.timeline.getWindow(currentMediaItemIndex, this.window).uid;
            mediaItem = this.window.mediaItem;
            obj = obj3;
        }
        long usToMs = Util.usToMs(j);
        return new Player.PositionInfo(obj2, currentMediaItemIndex, mediaItem, obj, i, usToMs, this.playbackInfo.periodId.isAd() ? Util.usToMs(getRequestedContentPositionUs(this.playbackInfo)) : usToMs, this.playbackInfo.periodId.adGroupIndex, this.playbackInfo.periodId.adIndexInAdGroup);
    }

    private static long getRequestedContentPositionUs(PlaybackInfo playbackInfo) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, period);
        if (playbackInfo.requestedContentPositionUs == -9223372036854775807L) {
            return playbackInfo.timeline.getWindow(period.windowIndex, window).getDefaultPositionUs();
        }
        return period.getPositionInWindowUs() + playbackInfo.requestedContentPositionUs;
    }

    private Pair<Boolean, Integer> evaluateMediaItemTransitionReason(PlaybackInfo playbackInfo, PlaybackInfo playbackInfo2, boolean z, int i, boolean z2, boolean z3) {
        Timeline timeline = playbackInfo2.timeline;
        Timeline timeline2 = playbackInfo.timeline;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return new Pair<>(false, -1);
        }
        int i2 = 3;
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return new Pair<>(true, 3);
        }
        if (timeline.getWindow(timeline.getPeriodByUid(playbackInfo2.periodId.periodUid, this.period).windowIndex, this.window).uid.equals(timeline2.getWindow(timeline2.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).uid)) {
            if (z && i == 0 && playbackInfo2.periodId.windowSequenceNumber < playbackInfo.periodId.windowSequenceNumber) {
                return new Pair<>(true, 0);
            }
            if (z && i == 1 && z3) {
                return new Pair<>(true, 2);
            }
            return new Pair<>(false, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            throw new IllegalStateException();
        }
        return new Pair<>(true, Integer.valueOf(i2));
    }

    private void updateAvailableCommands() {
        Player.Commands commands = this.availableCommands;
        Player.Commands availableCommands = Util.getAvailableCommands(this.wrappingPlayer, this.permanentAvailableCommands);
        this.availableCommands = availableCommands;
        if (availableCommands.equals(commands)) {
            return;
        }
        this.listeners.queueEvent(13, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda8
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ExoPlayerImpl.this.m5202x9a87546c((Player.Listener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateAvailableCommands$26$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    public /* synthetic */ void m5202x9a87546c(Player.Listener listener) {
        listener.onAvailableCommandsChanged(this.availableCommands);
    }

    private void setMediaSourcesInternal(List<MediaSource> list, int i, long j, boolean z) {
        int i2 = i;
        int currentWindowIndexInternal = getCurrentWindowIndexInternal(this.playbackInfo);
        long currentPosition = getCurrentPosition();
        this.pendingOperationAcks++;
        if (!this.mediaSourceHolderSnapshots.isEmpty()) {
            removeMediaSourceHolders(0, this.mediaSourceHolderSnapshots.size());
        }
        List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders = addMediaSourceHolders(0, list);
        Timeline createMaskingTimeline = createMaskingTimeline();
        if (!createMaskingTimeline.isEmpty() && i2 >= createMaskingTimeline.getWindowCount()) {
            throw new IllegalSeekPositionException(createMaskingTimeline, i2, j);
        }
        long j2 = j;
        if (z) {
            i2 = createMaskingTimeline.getFirstWindowIndex(this.shuffleModeEnabled);
            j2 = -9223372036854775807L;
        } else if (i2 == -1) {
            i2 = currentWindowIndexInternal;
            j2 = currentPosition;
        }
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, createMaskingTimeline, maskWindowPositionMsOrGetPeriodPositionUs(createMaskingTimeline, i2, j2));
        int i3 = maskTimelineAndPosition.playbackState;
        if (i2 != -1 && maskTimelineAndPosition.playbackState != 1) {
            i3 = (createMaskingTimeline.isEmpty() || i2 >= createMaskingTimeline.getWindowCount()) ? 4 : 2;
        }
        PlaybackInfo copyWithPlaybackState = maskTimelineAndPosition.copyWithPlaybackState(i3);
        this.internalPlayer.setMediaSources(addMediaSourceHolders, i2, Util.msToUs(j2), this.shuffleOrder);
        updatePlaybackInfo(copyWithPlaybackState, 0, 1, (this.playbackInfo.periodId.periodUid.equals(copyWithPlaybackState.periodId.periodUid) || this.playbackInfo.timeline.isEmpty()) ? false : true, 4, getCurrentPositionUsInternal(copyWithPlaybackState), -1, false);
    }

    private List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders(int i, List<MediaSource> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = new MediaSourceList.MediaSourceHolder(list.get(i2), this.useLazyPreparation);
            arrayList.add(mediaSourceHolder);
            this.mediaSourceHolderSnapshots.add(i2 + i, new MediaSourceHolderSnapshot(mediaSourceHolder.uid, mediaSourceHolder.mediaSource.getTimeline()));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndInsert(i, arrayList.size());
        return arrayList;
    }

    private PlaybackInfo addMediaSourcesInternal(PlaybackInfo playbackInfo, int i, List<MediaSource> list) {
        Timeline timeline = playbackInfo.timeline;
        this.pendingOperationAcks++;
        List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders = addMediaSourceHolders(i, list);
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(playbackInfo, createMaskingTimeline, getPeriodPositionUsAfterTimelineChanged(timeline, createMaskingTimeline, getCurrentWindowIndexInternal(playbackInfo), getContentPositionInternal(playbackInfo)));
        this.internalPlayer.addMediaSources(i, addMediaSourceHolders, this.shuffleOrder);
        return maskTimelineAndPosition;
    }

    private PlaybackInfo removeMediaItemsInternal(PlaybackInfo playbackInfo, int i, int i2) {
        int currentWindowIndexInternal = getCurrentWindowIndexInternal(playbackInfo);
        long contentPositionInternal = getContentPositionInternal(playbackInfo);
        Timeline timeline = playbackInfo.timeline;
        int size = this.mediaSourceHolderSnapshots.size();
        this.pendingOperationAcks++;
        removeMediaSourceHolders(i, i2);
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(playbackInfo, createMaskingTimeline, getPeriodPositionUsAfterTimelineChanged(timeline, createMaskingTimeline, currentWindowIndexInternal, contentPositionInternal));
        if (maskTimelineAndPosition.playbackState != 1 && maskTimelineAndPosition.playbackState != 4 && i < i2 && i2 == size && currentWindowIndexInternal >= maskTimelineAndPosition.timeline.getWindowCount()) {
            maskTimelineAndPosition = maskTimelineAndPosition.copyWithPlaybackState(4);
        }
        this.internalPlayer.removeMediaSources(i, i2, this.shuffleOrder);
        return maskTimelineAndPosition;
    }

    private void removeMediaSourceHolders(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.mediaSourceHolderSnapshots.remove(i3);
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndRemove(i, i2);
    }

    private Timeline createMaskingTimeline() {
        return new PlaylistTimeline(this.mediaSourceHolderSnapshots, this.shuffleOrder);
    }

    private PlaybackInfo maskTimelineAndPosition(PlaybackInfo playbackInfo, Timeline timeline, Pair<Object, Long> pair) {
        long j;
        Assertions.checkArgument(timeline.isEmpty() || pair != null);
        Timeline timeline2 = playbackInfo.timeline;
        long contentPositionInternal = getContentPositionInternal(playbackInfo);
        PlaybackInfo copyWithTimeline = playbackInfo.copyWithTimeline(timeline);
        if (timeline.isEmpty()) {
            MediaSource.MediaPeriodId dummyPeriodForEmptyTimeline = PlaybackInfo.getDummyPeriodForEmptyTimeline();
            long msToUs = Util.msToUs(this.maskingWindowPositionMs);
            PlaybackInfo copyWithLoadingMediaPeriodId = copyWithTimeline.copyWithNewPosition(dummyPeriodForEmptyTimeline, msToUs, msToUs, msToUs, 0L, TrackGroupArray.EMPTY, this.emptyTrackSelectorResult, ImmutableList.of()).copyWithLoadingMediaPeriodId(dummyPeriodForEmptyTimeline);
            copyWithLoadingMediaPeriodId.bufferedPositionUs = copyWithLoadingMediaPeriodId.positionUs;
            return copyWithLoadingMediaPeriodId;
        }
        Object obj = copyWithTimeline.periodId.periodUid;
        boolean z = !obj.equals(((Pair) Util.castNonNull(pair)).first);
        MediaSource.MediaPeriodId mediaPeriodId = z ? new MediaSource.MediaPeriodId(pair.first) : copyWithTimeline.periodId;
        long longValue = ((Long) pair.second).longValue();
        long msToUs2 = Util.msToUs(contentPositionInternal);
        if (!timeline2.isEmpty()) {
            msToUs2 -= timeline2.getPeriodByUid(obj, this.period).getPositionInWindowUs();
        }
        if (z || longValue < msToUs2) {
            Assertions.checkState(!mediaPeriodId.isAd());
            PlaybackInfo copyWithLoadingMediaPeriodId2 = copyWithTimeline.copyWithNewPosition(mediaPeriodId, longValue, longValue, longValue, 0L, z ? TrackGroupArray.EMPTY : copyWithTimeline.trackGroups, z ? this.emptyTrackSelectorResult : copyWithTimeline.trackSelectorResult, z ? ImmutableList.of() : copyWithTimeline.staticMetadata).copyWithLoadingMediaPeriodId(mediaPeriodId);
            copyWithLoadingMediaPeriodId2.bufferedPositionUs = longValue;
            return copyWithLoadingMediaPeriodId2;
        }
        if (longValue == msToUs2) {
            int indexOfPeriod = timeline.getIndexOfPeriod(copyWithTimeline.loadingMediaPeriodId.periodUid);
            if (indexOfPeriod != -1 && timeline.getPeriod(indexOfPeriod, this.period).windowIndex == timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex) {
                return copyWithTimeline;
            }
            timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
            if (mediaPeriodId.isAd()) {
                j = this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
            } else {
                j = this.period.durationUs;
            }
            PlaybackInfo copyWithLoadingMediaPeriodId3 = copyWithTimeline.copyWithNewPosition(mediaPeriodId, copyWithTimeline.positionUs, copyWithTimeline.positionUs, copyWithTimeline.discontinuityStartPositionUs, j - copyWithTimeline.positionUs, copyWithTimeline.trackGroups, copyWithTimeline.trackSelectorResult, copyWithTimeline.staticMetadata).copyWithLoadingMediaPeriodId(mediaPeriodId);
            copyWithLoadingMediaPeriodId3.bufferedPositionUs = j;
            return copyWithLoadingMediaPeriodId3;
        }
        Assertions.checkState(!mediaPeriodId.isAd());
        long max = Math.max(0L, copyWithTimeline.totalBufferedDurationUs - (longValue - msToUs2));
        long j2 = copyWithTimeline.bufferedPositionUs;
        if (copyWithTimeline.loadingMediaPeriodId.equals(copyWithTimeline.periodId)) {
            j2 = longValue + max;
        }
        PlaybackInfo copyWithNewPosition = copyWithTimeline.copyWithNewPosition(mediaPeriodId, longValue, longValue, longValue, max, copyWithTimeline.trackGroups, copyWithTimeline.trackSelectorResult, copyWithTimeline.staticMetadata);
        copyWithNewPosition.bufferedPositionUs = j2;
        return copyWithNewPosition;
    }

    private Pair<Object, Long> getPeriodPositionUsAfterTimelineChanged(Timeline timeline, Timeline timeline2, int i, long j) {
        if (timeline.isEmpty() || timeline2.isEmpty()) {
            boolean z = !timeline.isEmpty() && timeline2.isEmpty();
            return maskWindowPositionMsOrGetPeriodPositionUs(timeline2, z ? -1 : i, z ? -9223372036854775807L : j);
        }
        Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.window, this.period, i, Util.msToUs(j));
        Object obj = ((Pair) Util.castNonNull(periodPositionUs)).first;
        if (timeline2.getIndexOfPeriod(obj) != -1) {
            return periodPositionUs;
        }
        Object resolveSubsequentPeriod = ExoPlayerImplInternal.resolveSubsequentPeriod(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, obj, timeline, timeline2);
        if (resolveSubsequentPeriod != null) {
            timeline2.getPeriodByUid(resolveSubsequentPeriod, this.period);
            return maskWindowPositionMsOrGetPeriodPositionUs(timeline2, this.period.windowIndex, timeline2.getWindow(this.period.windowIndex, this.window).getDefaultPositionMs());
        }
        return maskWindowPositionMsOrGetPeriodPositionUs(timeline2, -1, -9223372036854775807L);
    }

    private Pair<Object, Long> maskWindowPositionMsOrGetPeriodPositionUs(Timeline timeline, int i, long j) {
        if (timeline.isEmpty()) {
            this.maskingWindowIndex = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.maskingWindowPositionMs = j;
            this.maskingPeriodIndex = 0;
            return null;
        }
        if (i == -1 || i >= timeline.getWindowCount()) {
            i = timeline.getFirstWindowIndex(this.shuffleModeEnabled);
            j = timeline.getWindow(i, this.window).getDefaultPositionMs();
        }
        return timeline.getPeriodPositionUs(this.window, this.period, i, Util.msToUs(j));
    }

    private long periodPositionUsToWindowPositionUs(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return j + this.period.getPositionInWindowUs();
    }

    private PlayerMessage createMessageInternal(PlayerMessage.Target target) {
        int currentWindowIndexInternal = getCurrentWindowIndexInternal(this.playbackInfo);
        ExoPlayerImplInternal exoPlayerImplInternal = this.internalPlayer;
        Timeline timeline = this.playbackInfo.timeline;
        if (currentWindowIndexInternal == -1) {
            currentWindowIndexInternal = 0;
        }
        return new PlayerMessage(exoPlayerImplInternal, target, timeline, currentWindowIndexInternal, this.clock, this.internalPlayer.getPlaybackLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaMetadata buildUpdatedMediaMetadata() {
        Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return this.staticAndDynamicMediaMetadata;
        }
        return this.staticAndDynamicMediaMetadata.buildUpon().populate(currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).mediaItem.mediaMetadata).build();
    }

    private void removeSurfaceCallbacks() {
        if (this.sphericalGLSurfaceView != null) {
            createMessageInternal(this.frameMetadataListener).setType(10000).setPayload(null).send();
            this.sphericalGLSurfaceView.removeVideoSurfaceListener(this.componentListener);
            this.sphericalGLSurfaceView = null;
        }
        TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.componentListener) {
                Log.w(TAG, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSurfaceTextureInternal(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        setVideoOutputInternal(surface);
        this.ownedSurface = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoOutputInternal(Object obj) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 2) {
                arrayList.add(createMessageInternal(renderer).setType(1).setPayload(obj).send());
            }
        }
        Object obj2 = this.videoOutput;
        if (obj2 != null && obj2 != obj) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PlayerMessage) it.next()).blockUntilDelivered(this.detachSurfaceTimeoutMs);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z = true;
            }
            Object obj3 = this.videoOutput;
            Surface surface = this.ownedSurface;
            if (obj3 == surface) {
                surface.release();
                this.ownedSurface = null;
            }
        }
        this.videoOutput = obj;
        if (z) {
            stopInternal(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    private void setNonVideoOutputSurfaceHolderInternal(SurfaceHolder surfaceHolder) {
        this.surfaceHolderSurfaceIsVideoOutput = false;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = this.surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            maybeNotifySurfaceSizeChanged(surfaceFrame.width(), surfaceFrame.height());
        } else {
            maybeNotifySurfaceSizeChanged(0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeNotifySurfaceSizeChanged(final int i, final int i2) {
        if (i == this.surfaceSize.getWidth() && i2 == this.surfaceSize.getHeight()) {
            return;
        }
        this.surfaceSize = new Size(i, i2);
        this.listeners.sendEvent(24, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda18
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSurfaceSizeChanged(i, i2);
            }
        });
        sendRendererMessage(2, 14, new Size(i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendVolumeToRenderers() {
        sendRendererMessage(1, 2, Float.valueOf(this.volume * this.audioFocusManager.getVolumeMultiplier()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayWhenReady(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        if (this.playbackInfo.playWhenReady == z2 && this.playbackInfo.playbackSuppressionReason == i3) {
            return;
        }
        this.pendingOperationAcks++;
        PlaybackInfo copyWithPlayWhenReady = (this.playbackInfo.sleepingForOffload ? this.playbackInfo.copyWithEstimatedPosition() : this.playbackInfo).copyWithPlayWhenReady(z2, i3);
        this.internalPlayer.setPlayWhenReady(z2, i3);
        updatePlaybackInfo(copyWithPlayWhenReady, 0, i2, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWakeAndWifiLock() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.wakeLockManager.setStayAwake(getPlayWhenReady() && !experimentalIsSleepingForOffload());
                this.wifiLockManager.setStayAwake(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.wakeLockManager.setStayAwake(false);
        this.wifiLockManager.setStayAwake(false);
    }

    private void verifyApplicationThread() {
        this.constructorFinished.blockUninterruptible();
        if (Thread.currentThread() != getApplicationLooper().getThread()) {
            String formatInvariant = Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), getApplicationLooper().getThread().getName());
            if (this.throwsWhenUsingWrongThread) {
                throw new IllegalStateException(formatInvariant);
            }
            Log.w(TAG, formatInvariant, this.hasNotifiedFullWrongThreadWarning ? null : new IllegalStateException());
            this.hasNotifiedFullWrongThreadWarning = true;
        }
    }

    private void sendRendererMessage(int i, int i2, Object obj) {
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == i) {
                createMessageInternal(renderer).setType(i2).setPayload(obj).send();
            }
        }
    }

    private int initializeKeepSessionIdAudioTrack(int i) {
        AudioTrack audioTrack = this.keepSessionIdAudioTrack;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i) {
            this.keepSessionIdAudioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        if (this.keepSessionIdAudioTrack == null) {
            this.keepSessionIdAudioTrack = new AudioTrack(3, 4000, 4, 2, 2, 0, i);
        }
        return this.keepSessionIdAudioTrack.getAudioSessionId();
    }

    private void updatePriorityTaskManagerForIsLoadingChange(boolean z) {
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            if (z && !this.isPriorityTaskManagerRegistered) {
                priorityTaskManager.add(0);
                this.isPriorityTaskManagerRegistered = true;
            } else {
                if (z || !this.isPriorityTaskManagerRegistered) {
                    return;
                }
                priorityTaskManager.remove(0);
                this.isPriorityTaskManagerRegistered = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DeviceInfo createDeviceInfo(StreamVolumeManager streamVolumeManager) {
        return new DeviceInfo.Builder(0).setMinVolume(streamVolumeManager != null ? streamVolumeManager.getMinVolume() : 0).setMaxVolume(streamVolumeManager != null ? streamVolumeManager.getMaxVolume() : 0).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class MediaSourceHolderSnapshot implements MediaSourceInfoHolder {
        private Timeline timeline;
        private final Object uid;

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Timeline getTimeline() {
            return this.timeline;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Object getUid() {
            return this.uid;
        }

        public MediaSourceHolderSnapshot(Object obj, Timeline timeline) {
            this.uid = obj;
            this.timeline = timeline;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.VideoSurfaceListener, AudioFocusManager.PlayerControl, AudioBecomingNoisyManager.EventListener, StreamVolumeManager.Listener, ExoPlayer.AudioOffloadListener {
        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        private ComponentListener() {
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoEnabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.videoDecoderCounters = decoderCounters;
            ExoPlayerImpl.this.analyticsCollector.onVideoEnabled(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(String str, long j, long j2) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDecoderInitialized(str, j, j2);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.videoFormat = format;
            ExoPlayerImpl.this.analyticsCollector.onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onDroppedFrames(int i, long j) {
            ExoPlayerImpl.this.analyticsCollector.onDroppedFrames(i, j);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoSizeChanged(final VideoSize videoSize) {
            ExoPlayerImpl.this.videoSize = videoSize;
            ExoPlayerImpl.this.listeners.sendEvent(25, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onVideoSizeChanged(VideoSize.this);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onRenderedFirstFrame(Object obj, long j) {
            ExoPlayerImpl.this.analyticsCollector.onRenderedFirstFrame(obj, j);
            if (ExoPlayerImpl.this.videoOutput == obj) {
                ExoPlayerImpl.this.listeners.sendEvent(26, new SimpleBasePlayer$$ExternalSyntheticLambda21());
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoDecoderReleased(String str) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDecoderReleased(str);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoDisabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDisabled(decoderCounters);
            ExoPlayerImpl.this.videoFormat = null;
            ExoPlayerImpl.this.videoDecoderCounters = null;
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoFrameProcessingOffset(long j, int i) {
            ExoPlayerImpl.this.analyticsCollector.onVideoFrameProcessingOffset(j, i);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoCodecError(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.onVideoCodecError(exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioEnabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.audioDecoderCounters = decoderCounters;
            ExoPlayerImpl.this.analyticsCollector.onAudioEnabled(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioDecoderInitialized(String str, long j, long j2) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDecoderInitialized(str, j, j2);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.audioFormat = format;
            ExoPlayerImpl.this.analyticsCollector.onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioPositionAdvancing(long j) {
            ExoPlayerImpl.this.analyticsCollector.onAudioPositionAdvancing(j);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioUnderrun(int i, long j, long j2) {
            ExoPlayerImpl.this.analyticsCollector.onAudioUnderrun(i, j, j2);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioDecoderReleased(String str) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDecoderReleased(str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioDisabled(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDisabled(decoderCounters);
            ExoPlayerImpl.this.audioFormat = null;
            ExoPlayerImpl.this.audioDecoderCounters = null;
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onSkipSilenceEnabledChanged(final boolean z) {
            if (ExoPlayerImpl.this.skipSilenceEnabled == z) {
                return;
            }
            ExoPlayerImpl.this.skipSilenceEnabled = z;
            ExoPlayerImpl.this.listeners.sendEvent(23, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSkipSilenceEnabledChanged(z);
                }
            });
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioSinkError(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.onAudioSinkError(exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioCodecError(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.onAudioCodecError(exc);
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public void onCues(final List<Cue> list) {
            ExoPlayerImpl.this.listeners.sendEvent(27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues((List<Cue>) list);
                }
            });
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public void onCues(final CueGroup cueGroup) {
            ExoPlayerImpl.this.currentCueGroup = cueGroup;
            ExoPlayerImpl.this.listeners.sendEvent(27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues(CueGroup.this);
                }
            });
        }

        @Override // androidx.media3.exoplayer.metadata.MetadataOutput
        public void onMetadata(final Metadata metadata) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.staticAndDynamicMediaMetadata = exoPlayerImpl.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(metadata).build();
            MediaMetadata buildUpdatedMediaMetadata = ExoPlayerImpl.this.buildUpdatedMediaMetadata();
            if (!buildUpdatedMediaMetadata.equals(ExoPlayerImpl.this.mediaMetadata)) {
                ExoPlayerImpl.this.mediaMetadata = buildUpdatedMediaMetadata;
                ExoPlayerImpl.this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ExoPlayerImpl.ComponentListener.this.m5203xb185137((Player.Listener) obj);
                    }
                });
            }
            ExoPlayerImpl.this.listeners.queueEvent(28, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMetadata(Metadata.this);
                }
            });
            ExoPlayerImpl.this.listeners.flushEvents();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onMetadata$4$androidx-media3-exoplayer-ExoPlayerImpl$ComponentListener, reason: not valid java name */
        public /* synthetic */ void m5203xb185137(Player.Listener listener) {
            listener.onMediaMetadataChanged(ExoPlayerImpl.this.mediaMetadata);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.setVideoOutputInternal(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.setVideoOutputInternal(null);
            }
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(0, 0);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            ExoPlayerImpl.this.setSurfaceTextureInternal(surfaceTexture);
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            ExoPlayerImpl.this.setVideoOutputInternal(null);
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(0, 0);
            return true;
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceCreated(Surface surface) {
            ExoPlayerImpl.this.setVideoOutputInternal(surface);
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceDestroyed(Surface surface) {
            ExoPlayerImpl.this.setVideoOutputInternal(null);
        }

        @Override // androidx.media3.exoplayer.AudioFocusManager.PlayerControl
        public void setVolumeMultiplier(float f) {
            ExoPlayerImpl.this.sendVolumeToRenderers();
        }

        @Override // androidx.media3.exoplayer.AudioFocusManager.PlayerControl
        public void executePlayerCommand(int i) {
            boolean playWhenReady = ExoPlayerImpl.this.getPlayWhenReady();
            ExoPlayerImpl.this.updatePlayWhenReady(playWhenReady, i, ExoPlayerImpl.getPlayWhenReadyChangeReason(playWhenReady, i));
        }

        @Override // androidx.media3.exoplayer.AudioBecomingNoisyManager.EventListener
        public void onAudioBecomingNoisy() {
            ExoPlayerImpl.this.updatePlayWhenReady(false, -1, 3);
        }

        @Override // androidx.media3.exoplayer.StreamVolumeManager.Listener
        public void onStreamTypeChanged(int i) {
            final DeviceInfo createDeviceInfo = ExoPlayerImpl.createDeviceInfo(ExoPlayerImpl.this.streamVolumeManager);
            if (createDeviceInfo.equals(ExoPlayerImpl.this.deviceInfo)) {
                return;
            }
            ExoPlayerImpl.this.deviceInfo = createDeviceInfo;
            ExoPlayerImpl.this.listeners.sendEvent(29, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceInfoChanged(DeviceInfo.this);
                }
            });
        }

        @Override // androidx.media3.exoplayer.StreamVolumeManager.Listener
        public void onStreamVolumeChanged(final int i, final boolean z) {
            ExoPlayerImpl.this.listeners.sendEvent(30, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceVolumeChanged(i, z);
                }
            });
        }

        @Override // androidx.media3.exoplayer.ExoPlayer.AudioOffloadListener
        public void onExperimentalSleepingForOffloadChanged(boolean z) {
            ExoPlayerImpl.this.updateWakeAndWifiLock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class FrameMetadataListener implements VideoFrameMetadataListener, CameraMotionListener, PlayerMessage.Target {
        public static final int MSG_SET_CAMERA_MOTION_LISTENER = 8;
        public static final int MSG_SET_SPHERICAL_SURFACE_VIEW = 10000;
        public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 7;
        private CameraMotionListener cameraMotionListener;
        private CameraMotionListener internalCameraMotionListener;
        private VideoFrameMetadataListener internalVideoFrameMetadataListener;
        private VideoFrameMetadataListener videoFrameMetadataListener;

        private FrameMetadataListener() {
        }

        @Override // androidx.media3.exoplayer.PlayerMessage.Target
        public void handleMessage(int i, Object obj) {
            if (i == 7) {
                this.videoFrameMetadataListener = (VideoFrameMetadataListener) obj;
                return;
            }
            if (i == 8) {
                this.cameraMotionListener = (CameraMotionListener) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.internalVideoFrameMetadataListener = null;
                this.internalCameraMotionListener = null;
            } else {
                this.internalVideoFrameMetadataListener = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.internalCameraMotionListener = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
        public void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat) {
            VideoFrameMetadataListener videoFrameMetadataListener = this.internalVideoFrameMetadataListener;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
            VideoFrameMetadataListener videoFrameMetadataListener2 = this.videoFrameMetadataListener;
            if (videoFrameMetadataListener2 != null) {
                videoFrameMetadataListener2.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public void onCameraMotion(long j, float[] fArr) {
            CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotion(j, fArr);
            }
            CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotion(j, fArr);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public void onCameraMotionReset() {
            CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotionReset();
            }
            CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotionReset();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class Api31 {
        private Api31() {
        }

        public static PlayerId registerMediaMetricsListener(Context context, ExoPlayerImpl exoPlayerImpl, boolean z) {
            MediaMetricsListener create = MediaMetricsListener.create(context);
            if (create == null) {
                Log.w(ExoPlayerImpl.TAG, "MediaMetricsService unavailable.");
                return new PlayerId(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z) {
                exoPlayerImpl.addAnalyticsListener(create);
            }
            return new PlayerId(create.getLogSessionId());
        }
    }
}
