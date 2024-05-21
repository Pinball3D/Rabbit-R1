package com.google.android.exoplayer2;

import android.graphics.Rect;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.util.Size;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.ListenableFuture;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public abstract class SimpleBasePlayer extends BasePlayer {
    private static final long POSITION_DISCONTINUITY_THRESHOLD_MS = 1000;
    private final HandlerWrapper applicationHandler;
    private final Looper applicationLooper;
    private final ListenerSet<Player.Listener> listeners;
    private final HashSet<ListenableFuture<?>> pendingOperations;
    private final Timeline.Period period;
    private boolean released;
    private State state;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ State lambda$release$12(State state) {
        return state;
    }

    @Override // com.google.android.exoplayer2.Player
    public final Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    protected State getPlaceholderState(State state) {
        return state;
    }

    protected abstract State getState();

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class State {
        public final PositionSupplier adBufferedPositionMsSupplier;
        public final PositionSupplier adPositionMsSupplier;
        public final AudioAttributes audioAttributes;
        public final Player.Commands availableCommands;
        public final PositionSupplier contentBufferedPositionMsSupplier;
        public final PositionSupplier contentPositionMsSupplier;
        public final int currentAdGroupIndex;
        public final int currentAdIndexInAdGroup;
        public final CueGroup currentCues;
        public final int currentMediaItemIndex;
        public final DeviceInfo deviceInfo;
        public final int deviceVolume;
        public final long discontinuityPositionMs;
        public final boolean hasPositionDiscontinuity;
        public final boolean isDeviceMuted;
        public final boolean isLoading;
        public final long maxSeekToPreviousPositionMs;
        public final boolean newlyRenderedFirstFrame;
        public final boolean playWhenReady;
        public final int playWhenReadyChangeReason;
        public final PlaybackParameters playbackParameters;
        public final int playbackState;
        public final int playbackSuppressionReason;
        public final PlaybackException playerError;
        public final ImmutableList<MediaItemData> playlist;
        public final MediaMetadata playlistMetadata;
        public final int positionDiscontinuityReason;
        public final int repeatMode;
        public final long seekBackIncrementMs;
        public final long seekForwardIncrementMs;
        public final boolean shuffleModeEnabled;
        public final Size surfaceSize;
        public final Metadata timedMetadata;
        public final Timeline timeline;
        public final PositionSupplier totalBufferedDurationMsSupplier;
        public final TrackSelectionParameters trackSelectionParameters;
        public final VideoSize videoSize;
        public final float volume;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private PositionSupplier adBufferedPositionMsSupplier;
            private Long adPositionMs;
            private PositionSupplier adPositionMsSupplier;
            private AudioAttributes audioAttributes;
            private Player.Commands availableCommands;
            private PositionSupplier contentBufferedPositionMsSupplier;
            private Long contentPositionMs;
            private PositionSupplier contentPositionMsSupplier;
            private int currentAdGroupIndex;
            private int currentAdIndexInAdGroup;
            private CueGroup currentCues;
            private int currentMediaItemIndex;
            private DeviceInfo deviceInfo;
            private int deviceVolume;
            private long discontinuityPositionMs;
            private boolean hasPositionDiscontinuity;
            private boolean isDeviceMuted;
            private boolean isLoading;
            private long maxSeekToPreviousPositionMs;
            private boolean newlyRenderedFirstFrame;
            private boolean playWhenReady;
            private int playWhenReadyChangeReason;
            private PlaybackParameters playbackParameters;
            private int playbackState;
            private int playbackSuppressionReason;
            private PlaybackException playerError;
            private ImmutableList<MediaItemData> playlist;
            private MediaMetadata playlistMetadata;
            private int positionDiscontinuityReason;
            private int repeatMode;
            private long seekBackIncrementMs;
            private long seekForwardIncrementMs;
            private boolean shuffleModeEnabled;
            private Size surfaceSize;
            private Metadata timedMetadata;
            private Timeline timeline;
            private PositionSupplier totalBufferedDurationMsSupplier;
            private TrackSelectionParameters trackSelectionParameters;
            private VideoSize videoSize;
            private float volume;

            public Builder clearPositionDiscontinuity() {
                this.hasPositionDiscontinuity = false;
                return this;
            }

            public Builder setAdBufferedPositionMs(PositionSupplier positionSupplier) {
                this.adBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setAdPositionMs(PositionSupplier positionSupplier) {
                this.adPositionMs = null;
                this.adPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setAudioAttributes(AudioAttributes audioAttributes) {
                this.audioAttributes = audioAttributes;
                return this;
            }

            public Builder setAvailableCommands(Player.Commands commands) {
                this.availableCommands = commands;
                return this;
            }

            public Builder setContentBufferedPositionMs(PositionSupplier positionSupplier) {
                this.contentBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setContentPositionMs(PositionSupplier positionSupplier) {
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setCurrentCues(CueGroup cueGroup) {
                this.currentCues = cueGroup;
                return this;
            }

            public Builder setCurrentMediaItemIndex(int i) {
                this.currentMediaItemIndex = i;
                return this;
            }

            public Builder setDeviceInfo(DeviceInfo deviceInfo) {
                this.deviceInfo = deviceInfo;
                return this;
            }

            public Builder setIsDeviceMuted(boolean z) {
                this.isDeviceMuted = z;
                return this;
            }

            public Builder setIsLoading(boolean z) {
                this.isLoading = z;
                return this;
            }

            public Builder setMaxSeekToPreviousPositionMs(long j) {
                this.maxSeekToPreviousPositionMs = j;
                return this;
            }

            public Builder setNewlyRenderedFirstFrame(boolean z) {
                this.newlyRenderedFirstFrame = z;
                return this;
            }

            public Builder setPlayWhenReady(boolean z, int i) {
                this.playWhenReady = z;
                this.playWhenReadyChangeReason = i;
                return this;
            }

            public Builder setPlaybackParameters(PlaybackParameters playbackParameters) {
                this.playbackParameters = playbackParameters;
                return this;
            }

            public Builder setPlaybackState(int i) {
                this.playbackState = i;
                return this;
            }

            public Builder setPlaybackSuppressionReason(int i) {
                this.playbackSuppressionReason = i;
                return this;
            }

            public Builder setPlayerError(PlaybackException playbackException) {
                this.playerError = playbackException;
                return this;
            }

            public Builder setPlaylistMetadata(MediaMetadata mediaMetadata) {
                this.playlistMetadata = mediaMetadata;
                return this;
            }

            public Builder setPositionDiscontinuity(int i, long j) {
                this.hasPositionDiscontinuity = true;
                this.positionDiscontinuityReason = i;
                this.discontinuityPositionMs = j;
                return this;
            }

            public Builder setRepeatMode(int i) {
                this.repeatMode = i;
                return this;
            }

            public Builder setSeekBackIncrementMs(long j) {
                this.seekBackIncrementMs = j;
                return this;
            }

            public Builder setSeekForwardIncrementMs(long j) {
                this.seekForwardIncrementMs = j;
                return this;
            }

            public Builder setShuffleModeEnabled(boolean z) {
                this.shuffleModeEnabled = z;
                return this;
            }

            public Builder setSurfaceSize(Size size) {
                this.surfaceSize = size;
                return this;
            }

            public Builder setTimedMetadata(Metadata metadata) {
                this.timedMetadata = metadata;
                return this;
            }

            public Builder setTotalBufferedDurationMs(PositionSupplier positionSupplier) {
                this.totalBufferedDurationMsSupplier = positionSupplier;
                return this;
            }

            public Builder setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
                this.trackSelectionParameters = trackSelectionParameters;
                return this;
            }

            public Builder setVideoSize(VideoSize videoSize) {
                this.videoSize = videoSize;
                return this;
            }

            public Builder() {
                this.availableCommands = Player.Commands.EMPTY;
                this.playWhenReady = false;
                this.playWhenReadyChangeReason = 1;
                this.playbackState = 1;
                this.playbackSuppressionReason = 0;
                this.playerError = null;
                this.repeatMode = 0;
                this.shuffleModeEnabled = false;
                this.isLoading = false;
                this.seekBackIncrementMs = 5000L;
                this.seekForwardIncrementMs = 15000L;
                this.maxSeekToPreviousPositionMs = 3000L;
                this.playbackParameters = PlaybackParameters.DEFAULT;
                this.trackSelectionParameters = TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
                this.audioAttributes = AudioAttributes.DEFAULT;
                this.volume = 1.0f;
                this.videoSize = VideoSize.UNKNOWN;
                this.currentCues = CueGroup.EMPTY_TIME_ZERO;
                this.deviceInfo = DeviceInfo.UNKNOWN;
                this.deviceVolume = 0;
                this.isDeviceMuted = false;
                this.surfaceSize = Size.UNKNOWN;
                this.newlyRenderedFirstFrame = false;
                this.timedMetadata = new Metadata(-9223372036854775807L, new Metadata.Entry[0]);
                this.playlist = ImmutableList.of();
                this.timeline = Timeline.EMPTY;
                this.playlistMetadata = MediaMetadata.EMPTY;
                this.currentMediaItemIndex = -1;
                this.currentAdGroupIndex = -1;
                this.currentAdIndexInAdGroup = -1;
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = PositionSupplier.getConstant(-9223372036854775807L);
                this.adPositionMs = null;
                this.adPositionMsSupplier = PositionSupplier.ZERO;
                this.contentBufferedPositionMsSupplier = PositionSupplier.getConstant(-9223372036854775807L);
                this.adBufferedPositionMsSupplier = PositionSupplier.ZERO;
                this.totalBufferedDurationMsSupplier = PositionSupplier.ZERO;
                this.hasPositionDiscontinuity = false;
                this.positionDiscontinuityReason = 5;
                this.discontinuityPositionMs = 0L;
            }

            private Builder(State state) {
                this.availableCommands = state.availableCommands;
                this.playWhenReady = state.playWhenReady;
                this.playWhenReadyChangeReason = state.playWhenReadyChangeReason;
                this.playbackState = state.playbackState;
                this.playbackSuppressionReason = state.playbackSuppressionReason;
                this.playerError = state.playerError;
                this.repeatMode = state.repeatMode;
                this.shuffleModeEnabled = state.shuffleModeEnabled;
                this.isLoading = state.isLoading;
                this.seekBackIncrementMs = state.seekBackIncrementMs;
                this.seekForwardIncrementMs = state.seekForwardIncrementMs;
                this.maxSeekToPreviousPositionMs = state.maxSeekToPreviousPositionMs;
                this.playbackParameters = state.playbackParameters;
                this.trackSelectionParameters = state.trackSelectionParameters;
                this.audioAttributes = state.audioAttributes;
                this.volume = state.volume;
                this.videoSize = state.videoSize;
                this.currentCues = state.currentCues;
                this.deviceInfo = state.deviceInfo;
                this.deviceVolume = state.deviceVolume;
                this.isDeviceMuted = state.isDeviceMuted;
                this.surfaceSize = state.surfaceSize;
                this.newlyRenderedFirstFrame = state.newlyRenderedFirstFrame;
                this.timedMetadata = state.timedMetadata;
                this.playlist = state.playlist;
                this.timeline = state.timeline;
                this.playlistMetadata = state.playlistMetadata;
                this.currentMediaItemIndex = state.currentMediaItemIndex;
                this.currentAdGroupIndex = state.currentAdGroupIndex;
                this.currentAdIndexInAdGroup = state.currentAdIndexInAdGroup;
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = state.contentPositionMsSupplier;
                this.adPositionMs = null;
                this.adPositionMsSupplier = state.adPositionMsSupplier;
                this.contentBufferedPositionMsSupplier = state.contentBufferedPositionMsSupplier;
                this.adBufferedPositionMsSupplier = state.adBufferedPositionMsSupplier;
                this.totalBufferedDurationMsSupplier = state.totalBufferedDurationMsSupplier;
                this.hasPositionDiscontinuity = state.hasPositionDiscontinuity;
                this.positionDiscontinuityReason = state.positionDiscontinuityReason;
                this.discontinuityPositionMs = state.discontinuityPositionMs;
            }

            public Builder setVolume(float f) {
                Assertions.checkArgument(f >= 0.0f && f <= 1.0f);
                this.volume = f;
                return this;
            }

            public Builder setDeviceVolume(int i) {
                Assertions.checkArgument(i >= 0);
                this.deviceVolume = i;
                return this;
            }

            public Builder setPlaylist(List<MediaItemData> list) {
                HashSet hashSet = new HashSet();
                for (int i = 0; i < list.size(); i++) {
                    Assertions.checkArgument(hashSet.add(list.get(i).uid), "Duplicate MediaItemData UID in playlist");
                }
                this.playlist = ImmutableList.copyOf((Collection) list);
                this.timeline = new PlaylistTimeline(this.playlist);
                return this;
            }

            public Builder setCurrentAd(int i, int i2) {
                Assertions.checkArgument((i == -1) == (i2 == -1));
                this.currentAdGroupIndex = i;
                this.currentAdIndexInAdGroup = i2;
                return this;
            }

            public Builder setContentPositionMs(long j) {
                this.contentPositionMs = Long.valueOf(j);
                return this;
            }

            public Builder setAdPositionMs(long j) {
                this.adPositionMs = Long.valueOf(j);
                return this;
            }

            public State build() {
                return new State(this);
            }
        }

        private State(Builder builder) {
            int i;
            if (!builder.timeline.isEmpty()) {
                int i2 = builder.currentMediaItemIndex;
                if (i2 == -1) {
                    i = 0;
                } else {
                    Assertions.checkArgument(builder.currentMediaItemIndex < builder.timeline.getWindowCount(), "currentMediaItemIndex must be less than playlist.size()");
                    i = i2;
                }
                if (builder.currentAdGroupIndex != -1) {
                    Timeline.Period period = new Timeline.Period();
                    builder.timeline.getPeriod(SimpleBasePlayer.getPeriodIndexFromWindowPosition(builder.timeline, i, builder.contentPositionMs != null ? builder.contentPositionMs.longValue() : builder.contentPositionMsSupplier.get(), new Timeline.Window(), period), period);
                    Assertions.checkArgument(builder.currentAdGroupIndex < period.getAdGroupCount(), "PeriodData has less ad groups than adGroupIndex");
                    int adCountInAdGroup = period.getAdCountInAdGroup(builder.currentAdGroupIndex);
                    if (adCountInAdGroup != -1) {
                        Assertions.checkArgument(builder.currentAdIndexInAdGroup < adCountInAdGroup, "Ad group has less ads than adIndexInGroupIndex");
                    }
                }
            } else {
                Assertions.checkArgument(builder.playbackState == 1 || builder.playbackState == 4, "Empty playlist only allowed in STATE_IDLE or STATE_ENDED");
                Assertions.checkArgument(builder.currentAdGroupIndex == -1 && builder.currentAdIndexInAdGroup == -1, "Ads not allowed if playlist is empty");
            }
            if (builder.playerError != null) {
                Assertions.checkArgument(builder.playbackState == 1, "Player error only allowed in STATE_IDLE");
            }
            if (builder.playbackState == 1 || builder.playbackState == 4) {
                Assertions.checkArgument(!builder.isLoading, "isLoading only allowed when not in STATE_IDLE or STATE_ENDED");
            }
            PositionSupplier extrapolating = builder.contentPositionMs != null ? (builder.currentAdGroupIndex == -1 && builder.playWhenReady && builder.playbackState == 3 && builder.playbackSuppressionReason == 0 && builder.contentPositionMs.longValue() != -9223372036854775807L) ? PositionSupplier.getExtrapolating(builder.contentPositionMs.longValue(), builder.playbackParameters.speed) : PositionSupplier.getConstant(builder.contentPositionMs.longValue()) : builder.contentPositionMsSupplier;
            PositionSupplier extrapolating2 = builder.adPositionMs != null ? (builder.currentAdGroupIndex != -1 && builder.playWhenReady && builder.playbackState == 3 && builder.playbackSuppressionReason == 0) ? PositionSupplier.getExtrapolating(builder.adPositionMs.longValue(), 1.0f) : PositionSupplier.getConstant(builder.adPositionMs.longValue()) : builder.adPositionMsSupplier;
            this.availableCommands = builder.availableCommands;
            this.playWhenReady = builder.playWhenReady;
            this.playWhenReadyChangeReason = builder.playWhenReadyChangeReason;
            this.playbackState = builder.playbackState;
            this.playbackSuppressionReason = builder.playbackSuppressionReason;
            this.playerError = builder.playerError;
            this.repeatMode = builder.repeatMode;
            this.shuffleModeEnabled = builder.shuffleModeEnabled;
            this.isLoading = builder.isLoading;
            this.seekBackIncrementMs = builder.seekBackIncrementMs;
            this.seekForwardIncrementMs = builder.seekForwardIncrementMs;
            this.maxSeekToPreviousPositionMs = builder.maxSeekToPreviousPositionMs;
            this.playbackParameters = builder.playbackParameters;
            this.trackSelectionParameters = builder.trackSelectionParameters;
            this.audioAttributes = builder.audioAttributes;
            this.volume = builder.volume;
            this.videoSize = builder.videoSize;
            this.currentCues = builder.currentCues;
            this.deviceInfo = builder.deviceInfo;
            this.deviceVolume = builder.deviceVolume;
            this.isDeviceMuted = builder.isDeviceMuted;
            this.surfaceSize = builder.surfaceSize;
            this.newlyRenderedFirstFrame = builder.newlyRenderedFirstFrame;
            this.timedMetadata = builder.timedMetadata;
            this.playlist = builder.playlist;
            this.timeline = builder.timeline;
            this.playlistMetadata = builder.playlistMetadata;
            this.currentMediaItemIndex = builder.currentMediaItemIndex;
            this.currentAdGroupIndex = builder.currentAdGroupIndex;
            this.currentAdIndexInAdGroup = builder.currentAdIndexInAdGroup;
            this.contentPositionMsSupplier = extrapolating;
            this.adPositionMsSupplier = extrapolating2;
            this.contentBufferedPositionMsSupplier = builder.contentBufferedPositionMsSupplier;
            this.adBufferedPositionMsSupplier = builder.adBufferedPositionMsSupplier;
            this.totalBufferedDurationMsSupplier = builder.totalBufferedDurationMsSupplier;
            this.hasPositionDiscontinuity = builder.hasPositionDiscontinuity;
            this.positionDiscontinuityReason = builder.positionDiscontinuityReason;
            this.discontinuityPositionMs = builder.discontinuityPositionMs;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof State)) {
                return false;
            }
            State state = (State) obj;
            return this.playWhenReady == state.playWhenReady && this.playWhenReadyChangeReason == state.playWhenReadyChangeReason && this.availableCommands.equals(state.availableCommands) && this.playbackState == state.playbackState && this.playbackSuppressionReason == state.playbackSuppressionReason && Util.areEqual(this.playerError, state.playerError) && this.repeatMode == state.repeatMode && this.shuffleModeEnabled == state.shuffleModeEnabled && this.isLoading == state.isLoading && this.seekBackIncrementMs == state.seekBackIncrementMs && this.seekForwardIncrementMs == state.seekForwardIncrementMs && this.maxSeekToPreviousPositionMs == state.maxSeekToPreviousPositionMs && this.playbackParameters.equals(state.playbackParameters) && this.trackSelectionParameters.equals(state.trackSelectionParameters) && this.audioAttributes.equals(state.audioAttributes) && this.volume == state.volume && this.videoSize.equals(state.videoSize) && this.currentCues.equals(state.currentCues) && this.deviceInfo.equals(state.deviceInfo) && this.deviceVolume == state.deviceVolume && this.isDeviceMuted == state.isDeviceMuted && this.surfaceSize.equals(state.surfaceSize) && this.newlyRenderedFirstFrame == state.newlyRenderedFirstFrame && this.timedMetadata.equals(state.timedMetadata) && this.playlist.equals(state.playlist) && this.playlistMetadata.equals(state.playlistMetadata) && this.currentMediaItemIndex == state.currentMediaItemIndex && this.currentAdGroupIndex == state.currentAdGroupIndex && this.currentAdIndexInAdGroup == state.currentAdIndexInAdGroup && this.contentPositionMsSupplier.equals(state.contentPositionMsSupplier) && this.adPositionMsSupplier.equals(state.adPositionMsSupplier) && this.contentBufferedPositionMsSupplier.equals(state.contentBufferedPositionMsSupplier) && this.adBufferedPositionMsSupplier.equals(state.adBufferedPositionMsSupplier) && this.totalBufferedDurationMsSupplier.equals(state.totalBufferedDurationMsSupplier) && this.hasPositionDiscontinuity == state.hasPositionDiscontinuity && this.positionDiscontinuityReason == state.positionDiscontinuityReason && this.discontinuityPositionMs == state.discontinuityPositionMs;
        }

        public int hashCode() {
            int hashCode = (((((((((217 + this.availableCommands.hashCode()) * 31) + (this.playWhenReady ? 1 : 0)) * 31) + this.playWhenReadyChangeReason) * 31) + this.playbackState) * 31) + this.playbackSuppressionReason) * 31;
            PlaybackException playbackException = this.playerError;
            int hashCode2 = (((((((hashCode + (playbackException == null ? 0 : playbackException.hashCode())) * 31) + this.repeatMode) * 31) + (this.shuffleModeEnabled ? 1 : 0)) * 31) + (this.isLoading ? 1 : 0)) * 31;
            long j = this.seekBackIncrementMs;
            int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.seekForwardIncrementMs;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.maxSeekToPreviousPositionMs;
            int hashCode3 = (((((((((((((((((((((((((((((((((((((((((((((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + this.playbackParameters.hashCode()) * 31) + this.trackSelectionParameters.hashCode()) * 31) + this.audioAttributes.hashCode()) * 31) + Float.floatToRawIntBits(this.volume)) * 31) + this.videoSize.hashCode()) * 31) + this.currentCues.hashCode()) * 31) + this.deviceInfo.hashCode()) * 31) + this.deviceVolume) * 31) + (this.isDeviceMuted ? 1 : 0)) * 31) + this.surfaceSize.hashCode()) * 31) + (this.newlyRenderedFirstFrame ? 1 : 0)) * 31) + this.timedMetadata.hashCode()) * 31) + this.playlist.hashCode()) * 31) + this.playlistMetadata.hashCode()) * 31) + this.currentMediaItemIndex) * 31) + this.currentAdGroupIndex) * 31) + this.currentAdIndexInAdGroup) * 31) + this.contentPositionMsSupplier.hashCode()) * 31) + this.adPositionMsSupplier.hashCode()) * 31) + this.contentBufferedPositionMsSupplier.hashCode()) * 31) + this.adBufferedPositionMsSupplier.hashCode()) * 31) + this.totalBufferedDurationMsSupplier.hashCode()) * 31) + (this.hasPositionDiscontinuity ? 1 : 0)) * 31) + this.positionDiscontinuityReason) * 31;
            long j4 = this.discontinuityPositionMs;
            return hashCode3 + ((int) (j4 ^ (j4 >>> 32)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class PlaylistTimeline extends Timeline {
        private final int[] firstPeriodIndexByWindowIndex;
        private final HashMap<Object, Integer> periodIndexByUid;
        private final ImmutableList<MediaItemData> playlist;
        private final int[] windowIndexByPeriodIndex;

        public PlaylistTimeline(ImmutableList<MediaItemData> immutableList) {
            int size = immutableList.size();
            this.playlist = immutableList;
            this.firstPeriodIndexByWindowIndex = new int[size];
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                MediaItemData mediaItemData = immutableList.get(i2);
                this.firstPeriodIndexByWindowIndex[i2] = i;
                i += getPeriodCountInMediaItem(mediaItemData);
            }
            this.windowIndexByPeriodIndex = new int[i];
            this.periodIndexByUid = new HashMap<>();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                MediaItemData mediaItemData2 = immutableList.get(i4);
                for (int i5 = 0; i5 < getPeriodCountInMediaItem(mediaItemData2); i5++) {
                    this.periodIndexByUid.put(mediaItemData2.getPeriodUid(i5), Integer.valueOf(i3));
                    this.windowIndexByPeriodIndex[i3] = i4;
                    i3++;
                }
            }
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.playlist.size();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getNextWindowIndex(int i, int i2, boolean z) {
            return super.getNextWindowIndex(i, i2, z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPreviousWindowIndex(int i, int i2, boolean z) {
            return super.getPreviousWindowIndex(i, i2, z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getLastWindowIndex(boolean z) {
            return super.getLastWindowIndex(z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getFirstWindowIndex(boolean z) {
            return super.getFirstWindowIndex(z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            return this.playlist.get(i).getWindow(this.firstPeriodIndexByWindowIndex[i], window);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.windowIndexByPeriodIndex.length;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
            return getPeriod(((Integer) Assertions.checkNotNull(this.periodIndexByUid.get(obj))).intValue(), period, true);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            int i2 = this.windowIndexByPeriodIndex[i];
            return this.playlist.get(i2).getPeriod(i2, i - this.firstPeriodIndexByWindowIndex[i2], period);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            Integer num = this.periodIndexByUid.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            int i2 = this.windowIndexByPeriodIndex[i];
            return this.playlist.get(i2).getPeriodUid(i - this.firstPeriodIndexByWindowIndex[i2]);
        }

        private static int getPeriodCountInMediaItem(MediaItemData mediaItemData) {
            if (mediaItemData.periods.isEmpty()) {
                return 1;
            }
            return mediaItemData.periods.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class MediaItemData {
        private final MediaMetadata combinedMediaMetadata;
        public final long defaultPositionUs;
        public final long durationUs;
        public final long elapsedRealtimeEpochOffsetMs;
        public final boolean isDynamic;
        public final boolean isPlaceholder;
        public final boolean isSeekable;
        public final MediaItem.LiveConfiguration liveConfiguration;
        public final Object manifest;
        public final MediaItem mediaItem;
        public final MediaMetadata mediaMetadata;
        private final long[] periodPositionInWindowUs;
        public final ImmutableList<PeriodData> periods;
        public final long positionInFirstPeriodUs;
        public final long presentationStartTimeMs;
        public final Tracks tracks;
        public final Object uid;
        public final long windowStartTimeMs;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private long defaultPositionUs;
            private long durationUs;
            private long elapsedRealtimeEpochOffsetMs;
            private boolean isDynamic;
            private boolean isPlaceholder;
            private boolean isSeekable;
            private MediaItem.LiveConfiguration liveConfiguration;
            private Object manifest;
            private MediaItem mediaItem;
            private MediaMetadata mediaMetadata;
            private ImmutableList<PeriodData> periods;
            private long positionInFirstPeriodUs;
            private long presentationStartTimeMs;
            private Tracks tracks;
            private Object uid;
            private long windowStartTimeMs;

            public Builder setElapsedRealtimeEpochOffsetMs(long j) {
                this.elapsedRealtimeEpochOffsetMs = j;
                return this;
            }

            public Builder setIsDynamic(boolean z) {
                this.isDynamic = z;
                return this;
            }

            public Builder setIsPlaceholder(boolean z) {
                this.isPlaceholder = z;
                return this;
            }

            public Builder setIsSeekable(boolean z) {
                this.isSeekable = z;
                return this;
            }

            public Builder setLiveConfiguration(MediaItem.LiveConfiguration liveConfiguration) {
                this.liveConfiguration = liveConfiguration;
                return this;
            }

            public Builder setManifest(Object obj) {
                this.manifest = obj;
                return this;
            }

            public Builder setMediaItem(MediaItem mediaItem) {
                this.mediaItem = mediaItem;
                return this;
            }

            public Builder setMediaMetadata(MediaMetadata mediaMetadata) {
                this.mediaMetadata = mediaMetadata;
                return this;
            }

            public Builder setPresentationStartTimeMs(long j) {
                this.presentationStartTimeMs = j;
                return this;
            }

            public Builder setTracks(Tracks tracks) {
                this.tracks = tracks;
                return this;
            }

            public Builder setUid(Object obj) {
                this.uid = obj;
                return this;
            }

            public Builder setWindowStartTimeMs(long j) {
                this.windowStartTimeMs = j;
                return this;
            }

            public Builder(Object obj) {
                this.uid = obj;
                this.tracks = Tracks.EMPTY;
                this.mediaItem = MediaItem.EMPTY;
                this.mediaMetadata = null;
                this.manifest = null;
                this.liveConfiguration = null;
                this.presentationStartTimeMs = -9223372036854775807L;
                this.windowStartTimeMs = -9223372036854775807L;
                this.elapsedRealtimeEpochOffsetMs = -9223372036854775807L;
                this.isSeekable = false;
                this.isDynamic = false;
                this.defaultPositionUs = 0L;
                this.durationUs = -9223372036854775807L;
                this.positionInFirstPeriodUs = 0L;
                this.isPlaceholder = false;
                this.periods = ImmutableList.of();
            }

            private Builder(MediaItemData mediaItemData) {
                this.uid = mediaItemData.uid;
                this.tracks = mediaItemData.tracks;
                this.mediaItem = mediaItemData.mediaItem;
                this.mediaMetadata = mediaItemData.mediaMetadata;
                this.manifest = mediaItemData.manifest;
                this.liveConfiguration = mediaItemData.liveConfiguration;
                this.presentationStartTimeMs = mediaItemData.presentationStartTimeMs;
                this.windowStartTimeMs = mediaItemData.windowStartTimeMs;
                this.elapsedRealtimeEpochOffsetMs = mediaItemData.elapsedRealtimeEpochOffsetMs;
                this.isSeekable = mediaItemData.isSeekable;
                this.isDynamic = mediaItemData.isDynamic;
                this.defaultPositionUs = mediaItemData.defaultPositionUs;
                this.durationUs = mediaItemData.durationUs;
                this.positionInFirstPeriodUs = mediaItemData.positionInFirstPeriodUs;
                this.isPlaceholder = mediaItemData.isPlaceholder;
                this.periods = mediaItemData.periods;
            }

            public Builder setDefaultPositionUs(long j) {
                Assertions.checkArgument(j >= 0);
                this.defaultPositionUs = j;
                return this;
            }

            public Builder setDurationUs(long j) {
                Assertions.checkArgument(j == -9223372036854775807L || j >= 0);
                this.durationUs = j;
                return this;
            }

            public Builder setPositionInFirstPeriodUs(long j) {
                Assertions.checkArgument(j >= 0);
                this.positionInFirstPeriodUs = j;
                return this;
            }

            public Builder setPeriods(List<PeriodData> list) {
                int size = list.size();
                int i = 0;
                while (i < size - 1) {
                    Assertions.checkArgument(list.get(i).durationUs != -9223372036854775807L, "Periods other than last need a duration");
                    int i2 = i + 1;
                    for (int i3 = i2; i3 < size; i3++) {
                        Assertions.checkArgument(!list.get(i).uid.equals(list.get(i3).uid), "Duplicate PeriodData UIDs in period list");
                    }
                    i = i2;
                }
                this.periods = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public MediaItemData build() {
                return new MediaItemData(this);
            }
        }

        private MediaItemData(Builder builder) {
            int i = 0;
            if (builder.liveConfiguration == null) {
                Assertions.checkArgument(builder.presentationStartTimeMs == -9223372036854775807L, "presentationStartTimeMs can only be set if liveConfiguration != null");
                Assertions.checkArgument(builder.windowStartTimeMs == -9223372036854775807L, "windowStartTimeMs can only be set if liveConfiguration != null");
                Assertions.checkArgument(builder.elapsedRealtimeEpochOffsetMs == -9223372036854775807L, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null");
            } else if (builder.presentationStartTimeMs != -9223372036854775807L && builder.windowStartTimeMs != -9223372036854775807L) {
                Assertions.checkArgument(builder.windowStartTimeMs >= builder.presentationStartTimeMs, "windowStartTimeMs can't be less than presentationStartTimeMs");
            }
            int size = builder.periods.size();
            if (builder.durationUs != -9223372036854775807L) {
                Assertions.checkArgument(builder.defaultPositionUs <= builder.durationUs, "defaultPositionUs can't be greater than durationUs");
            }
            this.uid = builder.uid;
            this.tracks = builder.tracks;
            this.mediaItem = builder.mediaItem;
            this.mediaMetadata = builder.mediaMetadata;
            this.manifest = builder.manifest;
            this.liveConfiguration = builder.liveConfiguration;
            this.presentationStartTimeMs = builder.presentationStartTimeMs;
            this.windowStartTimeMs = builder.windowStartTimeMs;
            this.elapsedRealtimeEpochOffsetMs = builder.elapsedRealtimeEpochOffsetMs;
            this.isSeekable = builder.isSeekable;
            this.isDynamic = builder.isDynamic;
            this.defaultPositionUs = builder.defaultPositionUs;
            this.durationUs = builder.durationUs;
            long j = builder.positionInFirstPeriodUs;
            this.positionInFirstPeriodUs = j;
            this.isPlaceholder = builder.isPlaceholder;
            ImmutableList<PeriodData> immutableList = builder.periods;
            this.periods = immutableList;
            long[] jArr = new long[immutableList.size()];
            this.periodPositionInWindowUs = jArr;
            if (!immutableList.isEmpty()) {
                jArr[0] = -j;
                while (i < size - 1) {
                    long[] jArr2 = this.periodPositionInWindowUs;
                    int i2 = i + 1;
                    jArr2[i2] = jArr2[i] + this.periods.get(i).durationUs;
                    i = i2;
                }
            }
            MediaMetadata mediaMetadata = this.mediaMetadata;
            this.combinedMediaMetadata = mediaMetadata == null ? getCombinedMediaMetadata(this.mediaItem, this.tracks) : mediaMetadata;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaItemData)) {
                return false;
            }
            MediaItemData mediaItemData = (MediaItemData) obj;
            return this.uid.equals(mediaItemData.uid) && this.tracks.equals(mediaItemData.tracks) && this.mediaItem.equals(mediaItemData.mediaItem) && Util.areEqual(this.mediaMetadata, mediaItemData.mediaMetadata) && Util.areEqual(this.manifest, mediaItemData.manifest) && Util.areEqual(this.liveConfiguration, mediaItemData.liveConfiguration) && this.presentationStartTimeMs == mediaItemData.presentationStartTimeMs && this.windowStartTimeMs == mediaItemData.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == mediaItemData.elapsedRealtimeEpochOffsetMs && this.isSeekable == mediaItemData.isSeekable && this.isDynamic == mediaItemData.isDynamic && this.defaultPositionUs == mediaItemData.defaultPositionUs && this.durationUs == mediaItemData.durationUs && this.positionInFirstPeriodUs == mediaItemData.positionInFirstPeriodUs && this.isPlaceholder == mediaItemData.isPlaceholder && this.periods.equals(mediaItemData.periods);
        }

        public int hashCode() {
            int hashCode = (((((217 + this.uid.hashCode()) * 31) + this.tracks.hashCode()) * 31) + this.mediaItem.hashCode()) * 31;
            MediaMetadata mediaMetadata = this.mediaMetadata;
            int hashCode2 = (hashCode + (mediaMetadata == null ? 0 : mediaMetadata.hashCode())) * 31;
            Object obj = this.manifest;
            int hashCode3 = (hashCode2 + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int hashCode4 = (hashCode3 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j = this.presentationStartTimeMs;
            int i = (hashCode4 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.windowStartTimeMs;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.elapsedRealtimeEpochOffsetMs;
            int i3 = (((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31;
            long j4 = this.defaultPositionUs;
            int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            long j5 = this.durationUs;
            int i5 = (i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
            long j6 = this.positionInFirstPeriodUs;
            return ((((i5 + ((int) (j6 ^ (j6 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31) + this.periods.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Window getWindow(int i, Timeline.Window window) {
            window.set(this.uid, this.mediaItem, this.manifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, this.isSeekable, this.isDynamic, this.liveConfiguration, this.defaultPositionUs, this.durationUs, i, (i + (this.periods.isEmpty() ? 1 : this.periods.size())) - 1, this.positionInFirstPeriodUs);
            window.isPlaceholder = this.isPlaceholder;
            return window;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Period getPeriod(int i, int i2, Timeline.Period period) {
            if (this.periods.isEmpty()) {
                Object obj = this.uid;
                period.set(obj, obj, i, this.positionInFirstPeriodUs + this.durationUs, 0L, AdPlaybackState.NONE, this.isPlaceholder);
            } else {
                PeriodData periodData = this.periods.get(i2);
                Object obj2 = periodData.uid;
                period.set(obj2, Pair.create(this.uid, obj2), i, periodData.durationUs, this.periodPositionInWindowUs[i2], periodData.adPlaybackState, periodData.isPlaceholder);
            }
            return period;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object getPeriodUid(int i) {
            if (this.periods.isEmpty()) {
                return this.uid;
            }
            return Pair.create(this.uid, this.periods.get(i).uid);
        }

        private static MediaMetadata getCombinedMediaMetadata(MediaItem mediaItem, Tracks tracks) {
            MediaMetadata.Builder builder = new MediaMetadata.Builder();
            int size = tracks.getGroups().size();
            for (int i = 0; i < size; i++) {
                Tracks.Group group = tracks.getGroups().get(i);
                for (int i2 = 0; i2 < group.length; i2++) {
                    if (group.isTrackSelected(i2)) {
                        Format trackFormat = group.getTrackFormat(i2);
                        if (trackFormat.metadata != null) {
                            for (int i3 = 0; i3 < trackFormat.metadata.length(); i3++) {
                                trackFormat.metadata.get(i3).populateMediaMetadata(builder);
                            }
                        }
                    }
                }
            }
            return builder.populate(mediaItem.mediaMetadata).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class PeriodData {
        public final AdPlaybackState adPlaybackState;
        public final long durationUs;
        public final boolean isPlaceholder;
        public final Object uid;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private AdPlaybackState adPlaybackState;
            private long durationUs;
            private boolean isPlaceholder;
            private Object uid;

            public Builder setAdPlaybackState(AdPlaybackState adPlaybackState) {
                this.adPlaybackState = adPlaybackState;
                return this;
            }

            public Builder setIsPlaceholder(boolean z) {
                this.isPlaceholder = z;
                return this;
            }

            public Builder setUid(Object obj) {
                this.uid = obj;
                return this;
            }

            public Builder(Object obj) {
                this.uid = obj;
                this.durationUs = 0L;
                this.adPlaybackState = AdPlaybackState.NONE;
                this.isPlaceholder = false;
            }

            private Builder(PeriodData periodData) {
                this.uid = periodData.uid;
                this.durationUs = periodData.durationUs;
                this.adPlaybackState = periodData.adPlaybackState;
                this.isPlaceholder = periodData.isPlaceholder;
            }

            public Builder setDurationUs(long j) {
                Assertions.checkArgument(j == -9223372036854775807L || j >= 0);
                this.durationUs = j;
                return this;
            }

            public PeriodData build() {
                return new PeriodData(this);
            }
        }

        private PeriodData(Builder builder) {
            this.uid = builder.uid;
            this.durationUs = builder.durationUs;
            this.adPlaybackState = builder.adPlaybackState;
            this.isPlaceholder = builder.isPlaceholder;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PeriodData)) {
                return false;
            }
            PeriodData periodData = (PeriodData) obj;
            return this.uid.equals(periodData.uid) && this.durationUs == periodData.durationUs && this.adPlaybackState.equals(periodData.adPlaybackState) && this.isPlaceholder == periodData.isPlaceholder;
        }

        public int hashCode() {
            int hashCode = (217 + this.uid.hashCode()) * 31;
            long j = this.durationUs;
            return ((((hashCode + ((int) (j ^ (j >>> 32)))) * 31) + this.adPlaybackState.hashCode()) * 31) + (this.isPlaceholder ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public interface PositionSupplier {
        public static final PositionSupplier ZERO = getConstant(0);

        static /* synthetic */ long lambda$getConstant$0(long j) {
            return j;
        }

        long get();

        static PositionSupplier getConstant(final long j) {
            return new PositionSupplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    return SimpleBasePlayer.PositionSupplier.lambda$getConstant$0(j);
                }
            };
        }

        static PositionSupplier getExtrapolating(final long j, final float f) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            return new PositionSupplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    return SimpleBasePlayer.PositionSupplier.lambda$getExtrapolating$1(j, elapsedRealtime, f);
                }
            };
        }

        static /* synthetic */ long lambda$getExtrapolating$1(long j, long j2, float f) {
            return j + (((float) (SystemClock.elapsedRealtime() - j2)) * f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleBasePlayer(Looper looper) {
        this(looper, Clock.DEFAULT);
    }

    protected SimpleBasePlayer(Looper looper, Clock clock) {
        this.applicationLooper = looper;
        this.applicationHandler = clock.createHandler(looper, null);
        this.pendingOperations = new HashSet<>();
        this.period = new Timeline.Period();
        this.listeners = new ListenerSet<>(looper, clock, new ListenerSet.IterationFinishedEvent() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda44
            @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
            public final void invoke(Object obj, FlagSet flagSet) {
                SimpleBasePlayer.this.m5396lambda$new$0$comgoogleandroidexoplayer2SimpleBasePlayer((Player.Listener) obj, flagSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-google-android-exoplayer2-SimpleBasePlayer, reason: not valid java name */
    public /* synthetic */ void m5396lambda$new$0$comgoogleandroidexoplayer2SimpleBasePlayer(Player.Listener listener, FlagSet flagSet) {
        listener.onEvents(this, new Player.Events(flagSet));
    }

    @Override // com.google.android.exoplayer2.Player
    public final void addListener(Player.Listener listener) {
        this.listeners.add((Player.Listener) Assertions.checkNotNull(listener));
    }

    @Override // com.google.android.exoplayer2.Player
    public final void removeListener(Player.Listener listener) {
        verifyApplicationThreadAndInitState();
        this.listeners.remove(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public final Player.Commands getAvailableCommands() {
        verifyApplicationThreadAndInitState();
        return this.state.availableCommands;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setPlayWhenReady(final boolean z) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(1)) {
            updateStateForPendingOperation(handleSetPlayWhenReady(z), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda6
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setPlayWhenReady(z, 1).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean getPlayWhenReady() {
        verifyApplicationThreadAndInitState();
        return this.state.playWhenReady;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItems(List<MediaItem> list, boolean z) {
        verifyApplicationThreadAndInitState();
        setMediaItemsInternal(list, z ? -1 : this.state.currentMediaItemIndex, z ? -9223372036854775807L : this.state.contentPositionMsSupplier.get());
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItems(List<MediaItem> list, int i, long j) {
        verifyApplicationThreadAndInitState();
        if (i == -1) {
            i = this.state.currentMediaItemIndex;
            j = this.state.contentPositionMsSupplier.get();
        }
        setMediaItemsInternal(list, i, j);
    }

    @RequiresNonNull({SentryThread.JsonKeys.STATE})
    private void setMediaItemsInternal(final List<MediaItem> list, final int i, final long j) {
        Assertions.checkArgument(i == -1 || i >= 0);
        final State state = this.state;
        if (shouldHandleCommand(20) || (list.size() == 1 && shouldHandleCommand(31))) {
            updateStateForPendingOperation(handleSetMediaItems(list, i, j), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda42
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return SimpleBasePlayer.this.m5398xb80ed5ee(list, state, i, j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setMediaItemsInternal$2$com-google-android-exoplayer2-SimpleBasePlayer, reason: not valid java name */
    public /* synthetic */ State m5398xb80ed5ee(List list, State state, int i, long j) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(getPlaceholderMediaItemData((MediaItem) list.get(i2)));
        }
        return getStateWithNewPlaylistAndPosition(state, arrayList, i, j);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void addMediaItems(int i, final List<MediaItem> list) {
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0);
        final State state = this.state;
        int size = state.playlist.size();
        if (!shouldHandleCommand(20) || list.isEmpty()) {
            return;
        }
        final int min = Math.min(i, size);
        updateStateForPendingOperation(handleAddMediaItems(min, list), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return SimpleBasePlayer.this.m5394xc134386b(state, list, min);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$addMediaItems$3$com-google-android-exoplayer2-SimpleBasePlayer, reason: not valid java name */
    public /* synthetic */ State m5394xc134386b(State state, List list, int i) {
        ArrayList arrayList = new ArrayList(state.playlist);
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(i2 + i, getPlaceholderMediaItemData((MediaItem) list.get(i2)));
        }
        return getStateWithNewPlaylist(state, arrayList, this.period);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void moveMediaItems(final int i, int i2, int i3) {
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0 && i2 >= i && i3 >= 0);
        final State state = this.state;
        int size = state.playlist.size();
        if (!shouldHandleCommand(20) || size == 0 || i >= size) {
            return;
        }
        final int min = Math.min(i2, size);
        final int min2 = Math.min(i3, state.playlist.size() - (min - i));
        if (i == min || min2 == i) {
            return;
        }
        updateStateForPendingOperation(handleMoveMediaItems(i, min, min2), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return SimpleBasePlayer.this.m5395xfea097c0(state, i, min, min2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$moveMediaItems$4$com-google-android-exoplayer2-SimpleBasePlayer, reason: not valid java name */
    public /* synthetic */ State m5395xfea097c0(State state, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList(state.playlist);
        Util.moveItems(arrayList, i, i2, i3);
        return getStateWithNewPlaylist(state, arrayList, this.period);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void removeMediaItems(final int i, int i2) {
        final int min;
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0 && i2 >= i);
        final State state = this.state;
        int size = state.playlist.size();
        if (!shouldHandleCommand(20) || size == 0 || i >= size || i == (min = Math.min(i2, size))) {
            return;
        }
        updateStateForPendingOperation(handleRemoveMediaItems(i, min), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda48
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return SimpleBasePlayer.this.m5397xc687f44c(state, i, min);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$removeMediaItems$5$com-google-android-exoplayer2-SimpleBasePlayer, reason: not valid java name */
    public /* synthetic */ State m5397xc687f44c(State state, int i, int i2) {
        ArrayList arrayList = new ArrayList(state.playlist);
        Util.removeRange(arrayList, i, i2);
        return getStateWithNewPlaylist(state, arrayList, this.period);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void prepare() {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(2)) {
            updateStateForPendingOperation(handlePrepare(), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda46
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setPlayerError(null).setPlaybackState(r2.timeline.isEmpty() ? 4 : 2).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getPlaybackState() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackState;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getPlaybackSuppressionReason() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackSuppressionReason;
    }

    @Override // com.google.android.exoplayer2.Player
    public final PlaybackException getPlayerError() {
        verifyApplicationThreadAndInitState();
        return this.state.playerError;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setRepeatMode(final int i) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(15)) {
            updateStateForPendingOperation(handleSetRepeatMode(i), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setRepeatMode(i).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getRepeatMode() {
        verifyApplicationThreadAndInitState();
        return this.state.repeatMode;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setShuffleModeEnabled(final boolean z) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(14)) {
            updateStateForPendingOperation(handleSetShuffleModeEnabled(z), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setShuffleModeEnabled(z).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean getShuffleModeEnabled() {
        verifyApplicationThreadAndInitState();
        return this.state.shuffleModeEnabled;
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isLoading() {
        verifyApplicationThreadAndInitState();
        return this.state.isLoading;
    }

    @Override // com.google.android.exoplayer2.BasePlayer
    public final void seekTo(final int i, final long j, int i2, boolean z) {
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0);
        final State state = this.state;
        if (!shouldHandleCommand(i2) || isPlayingAd()) {
            return;
        }
        if (state.playlist.isEmpty() || i < state.playlist.size()) {
            updateStateForPendingOperation(handleSeek(i, j, i2), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State stateWithNewPlaylistAndPosition;
                    stateWithNewPlaylistAndPosition = SimpleBasePlayer.getStateWithNewPlaylistAndPosition(r0, SimpleBasePlayer.State.this.playlist, i, j);
                    return stateWithNewPlaylistAndPosition;
                }
            }, true, z);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getSeekBackIncrement() {
        verifyApplicationThreadAndInitState();
        return this.state.seekBackIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getSeekForwardIncrement() {
        verifyApplicationThreadAndInitState();
        return this.state.seekForwardIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getMaxSeekToPreviousPosition() {
        verifyApplicationThreadAndInitState();
        return this.state.maxSeekToPreviousPositionMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setPlaybackParameters(final PlaybackParameters playbackParameters) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(13)) {
            updateStateForPendingOperation(handleSetPlaybackParameters(playbackParameters), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda47
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setPlaybackParameters(playbackParameters).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final PlaybackParameters getPlaybackParameters() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void stop() {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(3)) {
            updateStateForPendingOperation(handleStop(), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda53
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = r0.buildUpon().setPlaybackState(1).setTotalBufferedDurationMs(SimpleBasePlayer.PositionSupplier.ZERO).setContentBufferedPositionMs(SimpleBasePlayer.PositionSupplier.getConstant(SimpleBasePlayer.getContentPositionMsInternal(r0))).setAdBufferedPositionMs(SimpleBasePlayer.State.this.adPositionMsSupplier).setIsLoading(false).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void stop(boolean z) {
        stop();
        if (z) {
            clearMediaItems();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void release() {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (this.released) {
            return;
        }
        updateStateForPendingOperation(handleRelease(), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda54
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return SimpleBasePlayer.lambda$release$12(SimpleBasePlayer.State.this);
            }
        });
        this.released = true;
        this.listeners.release();
        this.state = this.state.buildUpon().setPlaybackState(1).setTotalBufferedDurationMs(PositionSupplier.ZERO).setContentBufferedPositionMs(PositionSupplier.getConstant(getContentPositionMsInternal(state))).setAdBufferedPositionMs(state.adPositionMsSupplier).setIsLoading(false).build();
    }

    @Override // com.google.android.exoplayer2.Player
    public final Tracks getCurrentTracks() {
        verifyApplicationThreadAndInitState();
        return getCurrentTracksInternal(this.state);
    }

    @Override // com.google.android.exoplayer2.Player
    public final TrackSelectionParameters getTrackSelectionParameters() {
        verifyApplicationThreadAndInitState();
        return this.state.trackSelectionParameters;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setTrackSelectionParameters(final TrackSelectionParameters trackSelectionParameters) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(29)) {
            updateStateForPendingOperation(handleSetTrackSelectionParameters(trackSelectionParameters), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda11
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setTrackSelectionParameters(trackSelectionParameters).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final MediaMetadata getMediaMetadata() {
        verifyApplicationThreadAndInitState();
        return getMediaMetadataInternal(this.state);
    }

    @Override // com.google.android.exoplayer2.Player
    public final MediaMetadata getPlaylistMetadata() {
        verifyApplicationThreadAndInitState();
        return this.state.playlistMetadata;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setPlaylistMetadata(final MediaMetadata mediaMetadata) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(19)) {
            updateStateForPendingOperation(handleSetPlaylistMetadata(mediaMetadata), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda51
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setPlaylistMetadata(mediaMetadata).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final Timeline getCurrentTimeline() {
        verifyApplicationThreadAndInitState();
        return this.state.timeline;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentPeriodIndex() {
        verifyApplicationThreadAndInitState();
        return getCurrentPeriodIndexInternal(this.state, this.window, this.period);
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentMediaItemIndex() {
        verifyApplicationThreadAndInitState();
        return getCurrentMediaItemIndexInternal(this.state);
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getDuration() {
        verifyApplicationThreadAndInitState();
        if (isPlayingAd()) {
            this.state.timeline.getPeriod(getCurrentPeriodIndex(), this.period);
            return Util.usToMs(this.period.getAdDurationUs(this.state.currentAdGroupIndex, this.state.currentAdIndexInAdGroup));
        }
        return getContentDuration();
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getCurrentPosition() {
        verifyApplicationThreadAndInitState();
        return isPlayingAd() ? this.state.adPositionMsSupplier.get() : getContentPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getBufferedPosition() {
        verifyApplicationThreadAndInitState();
        if (isPlayingAd()) {
            return Math.max(this.state.adBufferedPositionMsSupplier.get(), this.state.adPositionMsSupplier.get());
        }
        return getContentBufferedPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getTotalBufferedDuration() {
        verifyApplicationThreadAndInitState();
        return this.state.totalBufferedDurationMsSupplier.get();
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isPlayingAd() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdGroupIndex != -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentAdGroupIndex() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdGroupIndex;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentAdIndexInAdGroup() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdIndexInAdGroup;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getContentPosition() {
        verifyApplicationThreadAndInitState();
        return getContentPositionMsInternal(this.state);
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getContentBufferedPosition() {
        verifyApplicationThreadAndInitState();
        return Math.max(getContentBufferedPositionMsInternal(this.state), getContentPositionMsInternal(this.state));
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public final AudioAttributes getAudioAttributes() {
        verifyApplicationThreadAndInitState();
        return this.state.audioAttributes;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public final void setVolume(final float f) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(24)) {
            updateStateForPendingOperation(handleSetVolume(f), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda52
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setVolume(f).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public final float getVolume() {
        verifyApplicationThreadAndInitState();
        return this.state.volume;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoSurface(Surface surface) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surface == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surface), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda1
                    @Override // com.google.common.base.Supplier
                    public final Object get() {
                        SimpleBasePlayer.State build;
                        build = SimpleBasePlayer.State.this.buildUpon().setSurfaceSize(Size.UNKNOWN).build();
                        return build;
                    }
                });
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoSurfaceHolder(final SurfaceHolder surfaceHolder) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surfaceHolder == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surfaceHolder), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda45
                    @Override // com.google.common.base.Supplier
                    public final Object get() {
                        SimpleBasePlayer.State build;
                        build = SimpleBasePlayer.State.this.buildUpon().setSurfaceSize(SimpleBasePlayer.getSurfaceHolderSize(surfaceHolder)).build();
                        return build;
                    }
                });
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoSurfaceView(final SurfaceView surfaceView) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surfaceView == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surfaceView), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda56
                    @Override // com.google.common.base.Supplier
                    public final Object get() {
                        SimpleBasePlayer.State build;
                        build = SimpleBasePlayer.State.this.buildUpon().setSurfaceSize(SimpleBasePlayer.getSurfaceHolderSize(surfaceView.getHolder())).build();
                        return build;
                    }
                });
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoTextureView(TextureView textureView) {
        final Size size;
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(27)) {
            if (textureView == null) {
                clearVideoSurface();
                return;
            }
            if (textureView.isAvailable()) {
                size = new Size(textureView.getWidth(), textureView.getHeight());
            } else {
                size = Size.ZERO;
            }
            updateStateForPendingOperation(handleSetVideoOutput(textureView), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda7
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setSurfaceSize(size).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurface() {
        clearVideoOutput(null);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurface(Surface surface) {
        clearVideoOutput(surface);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        clearVideoOutput(surfaceHolder);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurfaceView(SurfaceView surfaceView) {
        clearVideoOutput(surfaceView);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoTextureView(TextureView textureView) {
        clearVideoOutput(textureView);
    }

    private void clearVideoOutput(Object obj) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(27)) {
            updateStateForPendingOperation(handleClearVideoOutput(obj), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda32
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setSurfaceSize(Size.ZERO).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final VideoSize getVideoSize() {
        verifyApplicationThreadAndInitState();
        return this.state.videoSize;
    }

    @Override // com.google.android.exoplayer2.Player
    public final Size getSurfaceSize() {
        verifyApplicationThreadAndInitState();
        return this.state.surfaceSize;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.TextComponent
    public final CueGroup getCurrentCues() {
        verifyApplicationThreadAndInitState();
        return this.state.currentCues;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final DeviceInfo getDeviceInfo() {
        verifyApplicationThreadAndInitState();
        return this.state.deviceInfo;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final int getDeviceVolume() {
        verifyApplicationThreadAndInitState();
        return this.state.deviceVolume;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final boolean isDeviceMuted() {
        verifyApplicationThreadAndInitState();
        return this.state.isDeviceMuted;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final void setDeviceVolume(final int i) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(25)) {
            updateStateForPendingOperation(handleSetDeviceVolume(i), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda22
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setDeviceVolume(i).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final void increaseDeviceVolume() {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleIncreaseDeviceVolume(), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda9
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = r0.buildUpon().setDeviceVolume(SimpleBasePlayer.State.this.deviceVolume + 1).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final void decreaseDeviceVolume() {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleDecreaseDeviceVolume(), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda55
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    SimpleBasePlayer.State state2 = SimpleBasePlayer.State.this;
                    build = state2.buildUpon().setDeviceVolume(Math.max(0, state2.deviceVolume - 1)).build();
                    return build;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final void setDeviceMuted(final boolean z) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleSetDeviceMuted(z), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    SimpleBasePlayer.State build;
                    build = SimpleBasePlayer.State.this.buildUpon().setIsDeviceMuted(z).build();
                    return build;
                }
            });
        }
    }

    protected final void invalidateState() {
        verifyApplicationThreadAndInitState();
        if (!this.pendingOperations.isEmpty() || this.released) {
            return;
        }
        updateStateAndInformListeners(getState(), false, false);
    }

    protected MediaItemData getPlaceholderMediaItemData(MediaItem mediaItem) {
        return new MediaItemData.Builder(new PlaceholderUid()).setMediaItem(mediaItem).setIsDynamic(true).setIsPlaceholder(true).build();
    }

    protected ListenableFuture<?> handleSetPlayWhenReady(boolean z) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PLAY_PAUSE");
    }

    protected ListenableFuture<?> handlePrepare() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PREPARE");
    }

    protected ListenableFuture<?> handleStop() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_STOP");
    }

    protected ListenableFuture<?> handleRelease() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_RELEASE");
    }

    protected ListenableFuture<?> handleSetRepeatMode(int i) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_REPEAT_MODE");
    }

    protected ListenableFuture<?> handleSetShuffleModeEnabled(boolean z) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SHUFFLE_MODE");
    }

    protected ListenableFuture<?> handleSetPlaybackParameters(PlaybackParameters playbackParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH");
    }

    protected ListenableFuture<?> handleSetTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS");
    }

    protected ListenableFuture<?> handleSetPlaylistMetadata(MediaMetadata mediaMetadata) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_MEDIA_ITEMS_METADATA");
    }

    protected ListenableFuture<?> handleSetVolume(float f) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VOLUME");
    }

    protected ListenableFuture<?> handleSetDeviceVolume(int i) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_DEVICE_VOLUME");
    }

    protected ListenableFuture<?> handleIncreaseDeviceVolume() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME");
    }

    protected ListenableFuture<?> handleDecreaseDeviceVolume() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME");
    }

    protected ListenableFuture<?> handleSetDeviceMuted(boolean z) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME");
    }

    protected ListenableFuture<?> handleSetVideoOutput(Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    protected ListenableFuture<?> handleClearVideoOutput(Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    protected ListenableFuture<?> handleSetMediaItems(List<MediaItem> list, int i, long j) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_MEDIA_ITEM(S)");
    }

    protected ListenableFuture<?> handleAddMediaItems(int i, List<MediaItem> list) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    protected ListenableFuture<?> handleMoveMediaItems(int i, int i2, int i3) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    protected ListenableFuture<?> handleRemoveMediaItems(int i, int i2) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    protected ListenableFuture<?> handleSeek(int i, long j, int i2) {
        throw new IllegalStateException("Missing implementation to handle one of the COMMAND_SEEK_*");
    }

    @RequiresNonNull({SentryThread.JsonKeys.STATE})
    private boolean shouldHandleCommand(int i) {
        return !this.released && this.state.availableCommands.contains(i);
    }

    @RequiresNonNull({SentryThread.JsonKeys.STATE})
    private void updateStateAndInformListeners(final State state, boolean z, boolean z2) {
        State state2 = this.state;
        this.state = state;
        if (state.hasPositionDiscontinuity || state.newlyRenderedFirstFrame) {
            this.state = this.state.buildUpon().clearPositionDiscontinuity().setNewlyRenderedFirstFrame(false).build();
        }
        boolean z3 = state2.playWhenReady != state.playWhenReady;
        boolean z4 = state2.playbackState != state.playbackState;
        Tracks currentTracksInternal = getCurrentTracksInternal(state2);
        final Tracks currentTracksInternal2 = getCurrentTracksInternal(state);
        MediaMetadata mediaMetadataInternal = getMediaMetadataInternal(state2);
        final MediaMetadata mediaMetadataInternal2 = getMediaMetadataInternal(state);
        final int positionDiscontinuityReason = getPositionDiscontinuityReason(state2, state, z, this.window, this.period);
        boolean z5 = !state2.timeline.equals(state.timeline);
        final int mediaItemTransitionReason = getMediaItemTransitionReason(state2, state, positionDiscontinuityReason, z2, this.window);
        if (z5) {
            final int timelineChangeReason = getTimelineChangeReason(state2.playlist, state.playlist);
            this.listeners.queueEvent(0, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda10
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.Listener listener = (Player.Listener) obj;
                    listener.onTimelineChanged(SimpleBasePlayer.State.this.timeline, timelineChangeReason);
                }
            });
        }
        if (positionDiscontinuityReason != -1) {
            final Player.PositionInfo positionInfo = getPositionInfo(state2, false, this.window, this.period);
            final Player.PositionInfo positionInfo2 = getPositionInfo(state, state.hasPositionDiscontinuity, this.window, this.period);
            this.listeners.queueEvent(11, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda23
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.lambda$updateStateAndInformListeners$26(positionDiscontinuityReason, positionInfo, positionInfo2, (Player.Listener) obj);
                }
            });
        }
        if (mediaItemTransitionReason != -1) {
            final MediaItem mediaItem = state.timeline.isEmpty() ? null : state.playlist.get(getCurrentMediaItemIndexInternal(state)).mediaItem;
            this.listeners.queueEvent(1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda34
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaItemTransition(MediaItem.this, mediaItemTransitionReason);
                }
            });
        }
        if (!Util.areEqual(state2.playerError, state.playerError)) {
            this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda36
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerErrorChanged(SimpleBasePlayer.State.this.playerError);
                }
            });
            if (state.playerError != null) {
                this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda37
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.Listener) obj).onPlayerError((PlaybackException) Util.castNonNull(SimpleBasePlayer.State.this.playerError));
                    }
                });
            }
        }
        if (!state2.trackSelectionParameters.equals(state.trackSelectionParameters)) {
            this.listeners.queueEvent(19, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda38
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTrackSelectionParametersChanged(SimpleBasePlayer.State.this.trackSelectionParameters);
                }
            });
        }
        if (!currentTracksInternal.equals(currentTracksInternal2)) {
            this.listeners.queueEvent(2, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda39
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTracksChanged(Tracks.this);
                }
            });
        }
        if (!mediaMetadataInternal.equals(mediaMetadataInternal2)) {
            this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda40
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaMetadataChanged(MediaMetadata.this);
                }
            });
        }
        if (state2.isLoading != state.isLoading) {
            this.listeners.queueEvent(3, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda41
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.lambda$updateStateAndInformListeners$33(SimpleBasePlayer.State.this, (Player.Listener) obj);
                }
            });
        }
        if (z3 || z4) {
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda43
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerStateChanged(r0.playWhenReady, SimpleBasePlayer.State.this.playbackState);
                }
            });
        }
        if (z4) {
            this.listeners.queueEvent(4, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda12
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackStateChanged(SimpleBasePlayer.State.this.playbackState);
                }
            });
        }
        if (z3 || state2.playWhenReadyChangeReason != state.playWhenReadyChangeReason) {
            this.listeners.queueEvent(5, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda13
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayWhenReadyChanged(r0.playWhenReady, SimpleBasePlayer.State.this.playWhenReadyChangeReason);
                }
            });
        }
        if (state2.playbackSuppressionReason != state.playbackSuppressionReason) {
            this.listeners.queueEvent(6, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda14
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackSuppressionReasonChanged(SimpleBasePlayer.State.this.playbackSuppressionReason);
                }
            });
        }
        if (isPlaying(state2) != isPlaying(state)) {
            this.listeners.queueEvent(7, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda15
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onIsPlayingChanged(SimpleBasePlayer.isPlaying(SimpleBasePlayer.State.this));
                }
            });
        }
        if (!state2.playbackParameters.equals(state.playbackParameters)) {
            this.listeners.queueEvent(12, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda16
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackParametersChanged(SimpleBasePlayer.State.this.playbackParameters);
                }
            });
        }
        if (state2.repeatMode != state.repeatMode) {
            this.listeners.queueEvent(8, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda17
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onRepeatModeChanged(SimpleBasePlayer.State.this.repeatMode);
                }
            });
        }
        if (state2.shuffleModeEnabled != state.shuffleModeEnabled) {
            this.listeners.queueEvent(9, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda18
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onShuffleModeEnabledChanged(SimpleBasePlayer.State.this.shuffleModeEnabled);
                }
            });
        }
        if (state2.seekBackIncrementMs != state.seekBackIncrementMs) {
            this.listeners.queueEvent(16, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda19
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSeekBackIncrementChanged(SimpleBasePlayer.State.this.seekBackIncrementMs);
                }
            });
        }
        if (state2.seekForwardIncrementMs != state.seekForwardIncrementMs) {
            this.listeners.queueEvent(17, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda20
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSeekForwardIncrementChanged(SimpleBasePlayer.State.this.seekForwardIncrementMs);
                }
            });
        }
        if (state2.maxSeekToPreviousPositionMs != state.maxSeekToPreviousPositionMs) {
            this.listeners.queueEvent(18, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda21
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMaxSeekToPreviousPositionChanged(SimpleBasePlayer.State.this.maxSeekToPreviousPositionMs);
                }
            });
        }
        if (!state2.audioAttributes.equals(state.audioAttributes)) {
            this.listeners.queueEvent(20, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda24
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onAudioAttributesChanged(SimpleBasePlayer.State.this.audioAttributes);
                }
            });
        }
        if (!state2.videoSize.equals(state.videoSize)) {
            this.listeners.queueEvent(25, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda25
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onVideoSizeChanged(SimpleBasePlayer.State.this.videoSize);
                }
            });
        }
        if (!state2.deviceInfo.equals(state.deviceInfo)) {
            this.listeners.queueEvent(29, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda26
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceInfoChanged(SimpleBasePlayer.State.this.deviceInfo);
                }
            });
        }
        if (!state2.playlistMetadata.equals(state.playlistMetadata)) {
            this.listeners.queueEvent(15, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda27
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaylistMetadataChanged(SimpleBasePlayer.State.this.playlistMetadata);
                }
            });
        }
        if (state.newlyRenderedFirstFrame) {
            this.listeners.queueEvent(26, new ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7());
        }
        if (!state2.surfaceSize.equals(state.surfaceSize)) {
            this.listeners.queueEvent(24, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda28
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSurfaceSizeChanged(r0.surfaceSize.getWidth(), SimpleBasePlayer.State.this.surfaceSize.getHeight());
                }
            });
        }
        if (state2.volume != state.volume) {
            this.listeners.queueEvent(22, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda29
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onVolumeChanged(SimpleBasePlayer.State.this.volume);
                }
            });
        }
        if (state2.deviceVolume != state.deviceVolume || state2.isDeviceMuted != state.isDeviceMuted) {
            this.listeners.queueEvent(30, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda30
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceVolumeChanged(r0.deviceVolume, SimpleBasePlayer.State.this.isDeviceMuted);
                }
            });
        }
        if (!state2.currentCues.equals(state.currentCues)) {
            this.listeners.queueEvent(27, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda31
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.lambda$updateStateAndInformListeners$52(SimpleBasePlayer.State.this, (Player.Listener) obj);
                }
            });
        }
        if (!state2.timedMetadata.equals(state.timedMetadata) && state.timedMetadata.presentationTimeUs != -9223372036854775807L) {
            this.listeners.queueEvent(28, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda33
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMetadata(SimpleBasePlayer.State.this.timedMetadata);
                }
            });
        }
        if (positionDiscontinuityReason == 1) {
            this.listeners.queueEvent(-1, new ExoPlayerImpl$$ExternalSyntheticLambda10());
        }
        if (!state2.availableCommands.equals(state.availableCommands)) {
            this.listeners.queueEvent(13, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda35
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onAvailableCommandsChanged(SimpleBasePlayer.State.this.availableCommands);
                }
            });
        }
        this.listeners.flushEvents();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$26(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$33(State state, Player.Listener listener) {
        listener.onLoadingChanged(state.isLoading);
        listener.onIsLoadingChanged(state.isLoading);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$52(State state, Player.Listener listener) {
        listener.onCues(state.currentCues.cues);
        listener.onCues(state.currentCues);
    }

    @EnsuresNonNull({SentryThread.JsonKeys.STATE})
    private void verifyApplicationThreadAndInitState() {
        if (Thread.currentThread() != this.applicationLooper.getThread()) {
            throw new IllegalStateException(Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.applicationLooper.getThread().getName()));
        }
        if (this.state == null) {
            this.state = getState();
        }
    }

    @RequiresNonNull({SentryThread.JsonKeys.STATE})
    private void updateStateForPendingOperation(ListenableFuture<?> listenableFuture, Supplier<State> supplier) {
        updateStateForPendingOperation(listenableFuture, supplier, false, false);
    }

    @RequiresNonNull({SentryThread.JsonKeys.STATE})
    private void updateStateForPendingOperation(final ListenableFuture<?> listenableFuture, Supplier<State> supplier, boolean z, boolean z2) {
        if (listenableFuture.isDone() && this.pendingOperations.isEmpty()) {
            updateStateAndInformListeners(getState(), z, z2);
            return;
        }
        this.pendingOperations.add(listenableFuture);
        updateStateAndInformListeners(getPlaceholderState(supplier.get()), z, z2);
        listenableFuture.addListener(new Runnable() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                SimpleBasePlayer.this.m5399x902fbd44(listenableFuture);
            }
        }, new Executor() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda50
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                SimpleBasePlayer.this.postOrRunOnApplicationHandler(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateStateForPendingOperation$55$com-google-android-exoplayer2-SimpleBasePlayer, reason: not valid java name */
    public /* synthetic */ void m5399x902fbd44(ListenableFuture listenableFuture) {
        Util.castNonNull(this.state);
        this.pendingOperations.remove(listenableFuture);
        if (!this.pendingOperations.isEmpty() || this.released) {
            return;
        }
        updateStateAndInformListeners(getState(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOrRunOnApplicationHandler(Runnable runnable) {
        if (this.applicationHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.applicationHandler.post(runnable);
        }
    }

    private static boolean isPlaying(State state) {
        return state.playWhenReady && state.playbackState == 3 && state.playbackSuppressionReason == 0;
    }

    private static Tracks getCurrentTracksInternal(State state) {
        if (state.playlist.isEmpty()) {
            return Tracks.EMPTY;
        }
        return state.playlist.get(getCurrentMediaItemIndexInternal(state)).tracks;
    }

    private static MediaMetadata getMediaMetadataInternal(State state) {
        if (!state.playlist.isEmpty()) {
            return state.playlist.get(getCurrentMediaItemIndexInternal(state)).combinedMediaMetadata;
        }
        return MediaMetadata.EMPTY;
    }

    private static int getCurrentMediaItemIndexInternal(State state) {
        if (state.currentMediaItemIndex != -1) {
            return state.currentMediaItemIndex;
        }
        return 0;
    }

    private static long getContentPositionMsInternal(State state) {
        return getPositionOrDefaultInMediaItem(state.contentPositionMsSupplier.get(), state);
    }

    private static long getContentBufferedPositionMsInternal(State state) {
        return getPositionOrDefaultInMediaItem(state.contentBufferedPositionMsSupplier.get(), state);
    }

    private static long getPositionOrDefaultInMediaItem(long j, State state) {
        if (j != -9223372036854775807L) {
            return j;
        }
        if (state.playlist.isEmpty()) {
            return 0L;
        }
        return Util.usToMs(state.playlist.get(getCurrentMediaItemIndexInternal(state)).defaultPositionUs);
    }

    private static int getCurrentPeriodIndexInternal(State state, Timeline.Window window, Timeline.Period period) {
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        return state.timeline.isEmpty() ? currentMediaItemIndexInternal : getPeriodIndexFromWindowPosition(state.timeline, currentMediaItemIndexInternal, getContentPositionMsInternal(state), window, period);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPeriodIndexFromWindowPosition(Timeline timeline, int i, long j, Timeline.Window window, Timeline.Period period) {
        return timeline.getIndexOfPeriod(timeline.getPeriodPositionUs(window, period, i, Util.msToUs(j)).first);
    }

    private static int getTimelineChangeReason(List<MediaItemData> list, List<MediaItemData> list2) {
        if (list.size() != list2.size()) {
            return 0;
        }
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                return 1;
            }
            Object obj = list.get(i).uid;
            Object obj2 = list2.get(i).uid;
            boolean z = (obj instanceof PlaceholderUid) && !(obj2 instanceof PlaceholderUid);
            if (!obj.equals(obj2) && !z) {
                return 0;
            }
            i++;
        }
    }

    private static int getPositionDiscontinuityReason(State state, State state2, boolean z, Timeline.Window window, Timeline.Period period) {
        if (state2.hasPositionDiscontinuity) {
            return state2.positionDiscontinuityReason;
        }
        if (z) {
            return 1;
        }
        if (state.playlist.isEmpty()) {
            return -1;
        }
        if (state2.playlist.isEmpty()) {
            return 4;
        }
        Object uidOfPeriod = state.timeline.getUidOfPeriod(getCurrentPeriodIndexInternal(state, window, period));
        Object uidOfPeriod2 = state2.timeline.getUidOfPeriod(getCurrentPeriodIndexInternal(state2, window, period));
        if ((uidOfPeriod instanceof PlaceholderUid) && !(uidOfPeriod2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (!uidOfPeriod2.equals(uidOfPeriod) || state.currentAdGroupIndex != state2.currentAdGroupIndex || state.currentAdIndexInAdGroup != state2.currentAdIndexInAdGroup) {
            if (state2.timeline.getIndexOfPeriod(uidOfPeriod) == -1) {
                return 4;
            }
            long currentPeriodOrAdPositionMs = getCurrentPeriodOrAdPositionMs(state, uidOfPeriod, period);
            long periodOrAdDurationMs = getPeriodOrAdDurationMs(state, uidOfPeriod, period);
            return (periodOrAdDurationMs == -9223372036854775807L || currentPeriodOrAdPositionMs < periodOrAdDurationMs) ? 3 : 0;
        }
        long currentPeriodOrAdPositionMs2 = getCurrentPeriodOrAdPositionMs(state, uidOfPeriod, period);
        if (Math.abs(currentPeriodOrAdPositionMs2 - getCurrentPeriodOrAdPositionMs(state2, uidOfPeriod2, period)) < 1000) {
            return -1;
        }
        long periodOrAdDurationMs2 = getPeriodOrAdDurationMs(state, uidOfPeriod, period);
        return (periodOrAdDurationMs2 == -9223372036854775807L || currentPeriodOrAdPositionMs2 < periodOrAdDurationMs2) ? 5 : 0;
    }

    private static long getCurrentPeriodOrAdPositionMs(State state, Object obj, Timeline.Period period) {
        if (state.currentAdGroupIndex != -1) {
            return state.adPositionMsSupplier.get();
        }
        return getContentPositionMsInternal(state) - state.timeline.getPeriodByUid(obj, period).getPositionInWindowMs();
    }

    private static long getPeriodOrAdDurationMs(State state, Object obj, Timeline.Period period) {
        long adDurationUs;
        state.timeline.getPeriodByUid(obj, period);
        if (state.currentAdGroupIndex == -1) {
            adDurationUs = period.durationUs;
        } else {
            adDurationUs = period.getAdDurationUs(state.currentAdGroupIndex, state.currentAdIndexInAdGroup);
        }
        return Util.usToMs(adDurationUs);
    }

    private static Player.PositionInfo getPositionInfo(State state, boolean z, Timeline.Window window, Timeline.Period period) {
        Object obj;
        MediaItem mediaItem;
        Object obj2;
        int i;
        long j;
        long j2;
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        if (state.timeline.isEmpty()) {
            obj = null;
            mediaItem = null;
            obj2 = null;
            i = -1;
        } else {
            int currentPeriodIndexInternal = getCurrentPeriodIndexInternal(state, window, period);
            Object obj3 = state.timeline.getPeriod(currentPeriodIndexInternal, period, true).uid;
            Object obj4 = state.timeline.getWindow(currentMediaItemIndexInternal, window).uid;
            i = currentPeriodIndexInternal;
            mediaItem = window.mediaItem;
            obj = obj4;
            obj2 = obj3;
        }
        if (z) {
            j = state.discontinuityPositionMs;
            j2 = state.currentAdGroupIndex == -1 ? j : getContentPositionMsInternal(state);
        } else {
            long contentPositionMsInternal = getContentPositionMsInternal(state);
            j = state.currentAdGroupIndex != -1 ? state.adPositionMsSupplier.get() : contentPositionMsInternal;
            j2 = contentPositionMsInternal;
        }
        return new Player.PositionInfo(obj, currentMediaItemIndexInternal, mediaItem, obj2, i, j, j2, state.currentAdGroupIndex, state.currentAdIndexInAdGroup);
    }

    private static int getMediaItemTransitionReason(State state, State state2, int i, boolean z, Timeline.Window window) {
        Timeline timeline = state.timeline;
        Timeline timeline2 = state2.timeline;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return -1;
        }
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return 3;
        }
        Object obj = state.timeline.getWindow(getCurrentMediaItemIndexInternal(state), window).uid;
        Object obj2 = state2.timeline.getWindow(getCurrentMediaItemIndexInternal(state2), window).uid;
        if ((obj instanceof PlaceholderUid) && !(obj2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (!obj.equals(obj2)) {
            if (i == 0) {
                return 1;
            }
            return i == 1 ? 2 : 3;
        }
        if (i != 0 || getContentPositionMsInternal(state) <= getContentPositionMsInternal(state2)) {
            return (i == 1 && z) ? 2 : -1;
        }
        return 0;
    }

    private static Size getSurfaceHolderSize(SurfaceHolder surfaceHolder) {
        if (!surfaceHolder.getSurface().isValid()) {
            return Size.ZERO;
        }
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        return new Size(surfaceFrame.width(), surfaceFrame.height());
    }

    private static int getMediaItemIndexInNewPlaylist(List<MediaItemData> list, Timeline timeline, int i, Timeline.Period period) {
        if (!list.isEmpty()) {
            Object periodUid = list.get(i).getPeriodUid(0);
            if (timeline.getIndexOfPeriod(periodUid) == -1) {
                return -1;
            }
            return timeline.getPeriodByUid(periodUid, period).windowIndex;
        }
        if (i < timeline.getWindowCount()) {
            return i;
        }
        return -1;
    }

    private static State getStateWithNewPlaylist(State state, List<MediaItemData> list, Timeline.Period period) {
        State.Builder buildUpon = state.buildUpon();
        buildUpon.setPlaylist(list);
        Timeline timeline = buildUpon.timeline;
        long j = state.contentPositionMsSupplier.get();
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        int mediaItemIndexInNewPlaylist = getMediaItemIndexInNewPlaylist(state.playlist, timeline, currentMediaItemIndexInternal, period);
        long j2 = mediaItemIndexInNewPlaylist == -1 ? -9223372036854775807L : j;
        for (int i = currentMediaItemIndexInternal + 1; mediaItemIndexInNewPlaylist == -1 && i < state.playlist.size(); i++) {
            mediaItemIndexInNewPlaylist = getMediaItemIndexInNewPlaylist(state.playlist, timeline, i, period);
        }
        if (state.playbackState != 1 && mediaItemIndexInNewPlaylist == -1) {
            buildUpon.setPlaybackState(4).setIsLoading(false);
        }
        return buildStateForNewPosition(buildUpon, state, j, list, mediaItemIndexInNewPlaylist, j2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static State getStateWithNewPlaylistAndPosition(State state, List<MediaItemData> list, int i, long j) {
        State.Builder buildUpon = state.buildUpon();
        buildUpon.setPlaylist(list);
        if (state.playbackState != 1) {
            if (list.isEmpty()) {
                buildUpon.setPlaybackState(4).setIsLoading(false);
            } else {
                buildUpon.setPlaybackState(2);
            }
        }
        return buildStateForNewPosition(buildUpon, state, state.contentPositionMsSupplier.get(), list, i, j, false);
    }

    private static State buildStateForNewPosition(State.Builder builder, State state, long j, List<MediaItemData> list, int i, long j2, boolean z) {
        long positionOrDefaultInMediaItem = getPositionOrDefaultInMediaItem(j, state);
        boolean z2 = false;
        if (!list.isEmpty() && (i == -1 || i >= list.size())) {
            j2 = -9223372036854775807L;
            i = 0;
        }
        if (!list.isEmpty() && j2 == -9223372036854775807L) {
            j2 = Util.usToMs(list.get(i).defaultPositionUs);
        }
        boolean z3 = state.playlist.isEmpty() || list.isEmpty();
        if (!z3 && !state.playlist.get(getCurrentMediaItemIndexInternal(state)).uid.equals(list.get(i).uid)) {
            z2 = true;
        }
        if (z3 || z2 || j2 < positionOrDefaultInMediaItem) {
            builder.setCurrentMediaItemIndex(i).setCurrentAd(-1, -1).setContentPositionMs(j2).setContentBufferedPositionMs(PositionSupplier.getConstant(j2)).setTotalBufferedDurationMs(PositionSupplier.ZERO);
        } else if (j2 == positionOrDefaultInMediaItem) {
            builder.setCurrentMediaItemIndex(i);
            if (state.currentAdGroupIndex != -1 && z) {
                builder.setTotalBufferedDurationMs(PositionSupplier.getConstant(state.adBufferedPositionMsSupplier.get() - state.adPositionMsSupplier.get()));
            } else {
                builder.setCurrentAd(-1, -1).setTotalBufferedDurationMs(PositionSupplier.getConstant(getContentBufferedPositionMsInternal(state) - positionOrDefaultInMediaItem));
            }
        } else {
            builder.setCurrentMediaItemIndex(i).setCurrentAd(-1, -1).setContentPositionMs(j2).setContentBufferedPositionMs(PositionSupplier.getConstant(Math.max(getContentBufferedPositionMsInternal(state), j2))).setTotalBufferedDurationMs(PositionSupplier.getConstant(Math.max(0L, state.totalBufferedDurationMsSupplier.get() - (j2 - positionOrDefaultInMediaItem))));
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class PlaceholderUid {
        private PlaceholderUid() {
        }
    }
}
