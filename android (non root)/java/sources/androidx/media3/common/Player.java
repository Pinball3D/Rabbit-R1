package androidx.media3.common;

import android.os.Bundle;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.Bundleable;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.Util;
import com.google.common.base.Objects;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public interface Player {

    @Deprecated
    public static final int COMMAND_ADJUST_DEVICE_VOLUME = 26;
    public static final int COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS = 34;
    public static final int COMMAND_CHANGE_MEDIA_ITEMS = 20;
    public static final int COMMAND_GET_AUDIO_ATTRIBUTES = 21;
    public static final int COMMAND_GET_CURRENT_MEDIA_ITEM = 16;
    public static final int COMMAND_GET_DEVICE_VOLUME = 23;

    @Deprecated
    public static final int COMMAND_GET_MEDIA_ITEMS_METADATA = 18;
    public static final int COMMAND_GET_METADATA = 18;
    public static final int COMMAND_GET_TEXT = 28;
    public static final int COMMAND_GET_TIMELINE = 17;
    public static final int COMMAND_GET_TRACKS = 30;
    public static final int COMMAND_GET_VOLUME = 22;
    public static final int COMMAND_INVALID = -1;
    public static final int COMMAND_PLAY_PAUSE = 1;
    public static final int COMMAND_PREPARE = 2;
    public static final int COMMAND_RELEASE = 32;
    public static final int COMMAND_SEEK_BACK = 11;
    public static final int COMMAND_SEEK_FORWARD = 12;
    public static final int COMMAND_SEEK_IN_CURRENT_MEDIA_ITEM = 5;

    @Deprecated
    public static final int COMMAND_SEEK_IN_CURRENT_WINDOW = 5;
    public static final int COMMAND_SEEK_TO_DEFAULT_POSITION = 4;
    public static final int COMMAND_SEEK_TO_MEDIA_ITEM = 10;
    public static final int COMMAND_SEEK_TO_NEXT = 9;
    public static final int COMMAND_SEEK_TO_NEXT_MEDIA_ITEM = 8;

    @Deprecated
    public static final int COMMAND_SEEK_TO_NEXT_WINDOW = 8;
    public static final int COMMAND_SEEK_TO_PREVIOUS = 7;
    public static final int COMMAND_SEEK_TO_PREVIOUS_MEDIA_ITEM = 6;

    @Deprecated
    public static final int COMMAND_SEEK_TO_PREVIOUS_WINDOW = 6;

    @Deprecated
    public static final int COMMAND_SEEK_TO_WINDOW = 10;

    @Deprecated
    public static final int COMMAND_SET_DEVICE_VOLUME = 25;
    public static final int COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS = 33;
    public static final int COMMAND_SET_MEDIA_ITEM = 31;

    @Deprecated
    public static final int COMMAND_SET_MEDIA_ITEMS_METADATA = 19;
    public static final int COMMAND_SET_PLAYLIST_METADATA = 19;
    public static final int COMMAND_SET_REPEAT_MODE = 15;
    public static final int COMMAND_SET_SHUFFLE_MODE = 14;
    public static final int COMMAND_SET_SPEED_AND_PITCH = 13;
    public static final int COMMAND_SET_TRACK_SELECTION_PARAMETERS = 29;
    public static final int COMMAND_SET_VIDEO_SURFACE = 27;
    public static final int COMMAND_SET_VOLUME = 24;
    public static final int COMMAND_STOP = 3;
    public static final int DISCONTINUITY_REASON_AUTO_TRANSITION = 0;
    public static final int DISCONTINUITY_REASON_INTERNAL = 5;
    public static final int DISCONTINUITY_REASON_REMOVE = 4;
    public static final int DISCONTINUITY_REASON_SEEK = 1;
    public static final int DISCONTINUITY_REASON_SEEK_ADJUSTMENT = 2;
    public static final int DISCONTINUITY_REASON_SKIP = 3;
    public static final int EVENT_AUDIO_ATTRIBUTES_CHANGED = 20;
    public static final int EVENT_AUDIO_SESSION_ID = 21;
    public static final int EVENT_AVAILABLE_COMMANDS_CHANGED = 13;
    public static final int EVENT_CUES = 27;
    public static final int EVENT_DEVICE_INFO_CHANGED = 29;
    public static final int EVENT_DEVICE_VOLUME_CHANGED = 30;
    public static final int EVENT_IS_LOADING_CHANGED = 3;
    public static final int EVENT_IS_PLAYING_CHANGED = 7;
    public static final int EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED = 18;
    public static final int EVENT_MEDIA_ITEM_TRANSITION = 1;
    public static final int EVENT_MEDIA_METADATA_CHANGED = 14;
    public static final int EVENT_METADATA = 28;
    public static final int EVENT_PLAYBACK_PARAMETERS_CHANGED = 12;
    public static final int EVENT_PLAYBACK_STATE_CHANGED = 4;
    public static final int EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED = 6;
    public static final int EVENT_PLAYER_ERROR = 10;
    public static final int EVENT_PLAYLIST_METADATA_CHANGED = 15;
    public static final int EVENT_PLAY_WHEN_READY_CHANGED = 5;
    public static final int EVENT_POSITION_DISCONTINUITY = 11;
    public static final int EVENT_RENDERED_FIRST_FRAME = 26;
    public static final int EVENT_REPEAT_MODE_CHANGED = 8;
    public static final int EVENT_SEEK_BACK_INCREMENT_CHANGED = 16;
    public static final int EVENT_SEEK_FORWARD_INCREMENT_CHANGED = 17;
    public static final int EVENT_SHUFFLE_MODE_ENABLED_CHANGED = 9;
    public static final int EVENT_SKIP_SILENCE_ENABLED_CHANGED = 23;
    public static final int EVENT_SURFACE_SIZE_CHANGED = 24;
    public static final int EVENT_TIMELINE_CHANGED = 0;
    public static final int EVENT_TRACKS_CHANGED = 2;
    public static final int EVENT_TRACK_SELECTION_PARAMETERS_CHANGED = 19;
    public static final int EVENT_VIDEO_SIZE_CHANGED = 25;
    public static final int EVENT_VOLUME_CHANGED = 22;
    public static final int MEDIA_ITEM_TRANSITION_REASON_AUTO = 1;
    public static final int MEDIA_ITEM_TRANSITION_REASON_PLAYLIST_CHANGED = 3;
    public static final int MEDIA_ITEM_TRANSITION_REASON_REPEAT = 0;
    public static final int MEDIA_ITEM_TRANSITION_REASON_SEEK = 2;
    public static final int PLAYBACK_SUPPRESSION_REASON_NONE = 0;
    public static final int PLAYBACK_SUPPRESSION_REASON_TRANSIENT_AUDIO_FOCUS_LOSS = 1;
    public static final int PLAYBACK_SUPPRESSION_REASON_UNSUITABLE_AUDIO_ROUTE = 2;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_AUDIO_BECOMING_NOISY = 3;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_AUDIO_FOCUS_LOSS = 2;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_END_OF_MEDIA_ITEM = 5;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_REMOTE = 4;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_SUPPRESSED_TOO_LONG = 6;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_USER_REQUEST = 1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_OFF = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int STATE_BUFFERING = 2;
    public static final int STATE_ENDED = 4;
    public static final int STATE_IDLE = 1;
    public static final int STATE_READY = 3;
    public static final int TIMELINE_CHANGE_REASON_PLAYLIST_CHANGED = 0;
    public static final int TIMELINE_CHANGE_REASON_SOURCE_UPDATE = 1;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Command {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface DiscontinuityReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Event {
    }

    /* loaded from: classes2.dex */
    public interface Listener {
        default void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        }

        default void onAudioSessionIdChanged(int i) {
        }

        default void onAvailableCommandsChanged(Commands commands) {
        }

        default void onCues(CueGroup cueGroup) {
        }

        @Deprecated
        default void onCues(List<Cue> list) {
        }

        default void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        }

        default void onDeviceVolumeChanged(int i, boolean z) {
        }

        default void onEvents(Player player, Events events) {
        }

        default void onIsLoadingChanged(boolean z) {
        }

        default void onIsPlayingChanged(boolean z) {
        }

        @Deprecated
        default void onLoadingChanged(boolean z) {
        }

        default void onMaxSeekToPreviousPositionChanged(long j) {
        }

        default void onMediaItemTransition(MediaItem mediaItem, int i) {
        }

        default void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        }

        default void onMetadata(Metadata metadata) {
        }

        default void onPlayWhenReadyChanged(boolean z, int i) {
        }

        default void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        }

        default void onPlaybackStateChanged(int i) {
        }

        default void onPlaybackSuppressionReasonChanged(int i) {
        }

        default void onPlayerError(PlaybackException playbackException) {
        }

        default void onPlayerErrorChanged(PlaybackException playbackException) {
        }

        @Deprecated
        default void onPlayerStateChanged(boolean z, int i) {
        }

        default void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
        }

        @Deprecated
        default void onPositionDiscontinuity(int i) {
        }

        default void onPositionDiscontinuity(PositionInfo positionInfo, PositionInfo positionInfo2, int i) {
        }

        default void onRenderedFirstFrame() {
        }

        default void onRepeatModeChanged(int i) {
        }

        default void onSeekBackIncrementChanged(long j) {
        }

        default void onSeekForwardIncrementChanged(long j) {
        }

        default void onShuffleModeEnabledChanged(boolean z) {
        }

        default void onSkipSilenceEnabledChanged(boolean z) {
        }

        default void onSurfaceSizeChanged(int i, int i2) {
        }

        default void onTimelineChanged(Timeline timeline, int i) {
        }

        default void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        }

        default void onTracksChanged(Tracks tracks) {
        }

        default void onVideoSizeChanged(VideoSize videoSize) {
        }

        default void onVolumeChanged(float f) {
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface MediaItemTransitionReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface PlayWhenReadyChangeReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface PlaybackSuppressionReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface RepeatMode {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface State {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface TimelineChangeReason {
    }

    void addListener(Listener listener);

    void addMediaItem(int i, MediaItem mediaItem);

    void addMediaItem(MediaItem mediaItem);

    void addMediaItems(int i, List<MediaItem> list);

    void addMediaItems(List<MediaItem> list);

    boolean canAdvertiseSession();

    void clearMediaItems();

    void clearVideoSurface();

    void clearVideoSurface(Surface surface);

    void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder);

    void clearVideoSurfaceView(SurfaceView surfaceView);

    void clearVideoTextureView(TextureView textureView);

    @Deprecated
    void decreaseDeviceVolume();

    void decreaseDeviceVolume(int i);

    Looper getApplicationLooper();

    AudioAttributes getAudioAttributes();

    Commands getAvailableCommands();

    int getBufferedPercentage();

    long getBufferedPosition();

    long getContentBufferedPosition();

    long getContentDuration();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    CueGroup getCurrentCues();

    long getCurrentLiveOffset();

    Object getCurrentManifest();

    MediaItem getCurrentMediaItem();

    int getCurrentMediaItemIndex();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    Timeline getCurrentTimeline();

    Tracks getCurrentTracks();

    @Deprecated
    int getCurrentWindowIndex();

    DeviceInfo getDeviceInfo();

    int getDeviceVolume();

    long getDuration();

    long getMaxSeekToPreviousPosition();

    MediaItem getMediaItemAt(int i);

    int getMediaItemCount();

    MediaMetadata getMediaMetadata();

    int getNextMediaItemIndex();

    @Deprecated
    int getNextWindowIndex();

    boolean getPlayWhenReady();

    PlaybackParameters getPlaybackParameters();

    int getPlaybackState();

    int getPlaybackSuppressionReason();

    PlaybackException getPlayerError();

    MediaMetadata getPlaylistMetadata();

    int getPreviousMediaItemIndex();

    @Deprecated
    int getPreviousWindowIndex();

    int getRepeatMode();

    long getSeekBackIncrement();

    long getSeekForwardIncrement();

    boolean getShuffleModeEnabled();

    Size getSurfaceSize();

    long getTotalBufferedDuration();

    TrackSelectionParameters getTrackSelectionParameters();

    VideoSize getVideoSize();

    float getVolume();

    @Deprecated
    boolean hasNext();

    boolean hasNextMediaItem();

    @Deprecated
    boolean hasNextWindow();

    @Deprecated
    boolean hasPrevious();

    boolean hasPreviousMediaItem();

    @Deprecated
    boolean hasPreviousWindow();

    @Deprecated
    void increaseDeviceVolume();

    void increaseDeviceVolume(int i);

    boolean isCommandAvailable(int i);

    boolean isCurrentMediaItemDynamic();

    boolean isCurrentMediaItemLive();

    boolean isCurrentMediaItemSeekable();

    @Deprecated
    boolean isCurrentWindowDynamic();

    @Deprecated
    boolean isCurrentWindowLive();

    @Deprecated
    boolean isCurrentWindowSeekable();

    boolean isDeviceMuted();

    boolean isLoading();

    boolean isPlaying();

    boolean isPlayingAd();

    void moveMediaItem(int i, int i2);

    void moveMediaItems(int i, int i2, int i3);

    @Deprecated
    void next();

    void pause();

    void play();

    void prepare();

    @Deprecated
    void previous();

    void release();

    void removeListener(Listener listener);

    void removeMediaItem(int i);

    void removeMediaItems(int i, int i2);

    void replaceMediaItem(int i, MediaItem mediaItem);

    void replaceMediaItems(int i, int i2, List<MediaItem> list);

    void seekBack();

    void seekForward();

    void seekTo(int i, long j);

    void seekTo(long j);

    void seekToDefaultPosition();

    void seekToDefaultPosition(int i);

    void seekToNext();

    void seekToNextMediaItem();

    @Deprecated
    void seekToNextWindow();

    void seekToPrevious();

    void seekToPreviousMediaItem();

    @Deprecated
    void seekToPreviousWindow();

    @Deprecated
    void setDeviceMuted(boolean z);

    void setDeviceMuted(boolean z, int i);

    @Deprecated
    void setDeviceVolume(int i);

    void setDeviceVolume(int i, int i2);

    void setMediaItem(MediaItem mediaItem);

    void setMediaItem(MediaItem mediaItem, long j);

    void setMediaItem(MediaItem mediaItem, boolean z);

    void setMediaItems(List<MediaItem> list);

    void setMediaItems(List<MediaItem> list, int i, long j);

    void setMediaItems(List<MediaItem> list, boolean z);

    void setPlayWhenReady(boolean z);

    void setPlaybackParameters(PlaybackParameters playbackParameters);

    void setPlaybackSpeed(float f);

    void setPlaylistMetadata(MediaMetadata mediaMetadata);

    void setRepeatMode(int i);

    void setShuffleModeEnabled(boolean z);

    void setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters);

    void setVideoSurface(Surface surface);

    void setVideoSurfaceHolder(SurfaceHolder surfaceHolder);

    void setVideoSurfaceView(SurfaceView surfaceView);

    void setVideoTextureView(TextureView textureView);

    void setVolume(float f);

    void stop();

    /* loaded from: classes2.dex */
    public static final class Events {
        private final FlagSet flags;

        public Events(FlagSet flagSet) {
            this.flags = flagSet;
        }

        public boolean contains(int i) {
            return this.flags.contains(i);
        }

        public boolean containsAny(int... iArr) {
            return this.flags.containsAny(iArr);
        }

        public int size() {
            return this.flags.size();
        }

        public int get(int i) {
            return this.flags.get(i);
        }

        public int hashCode() {
            return this.flags.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Events) {
                return this.flags.equals(((Events) obj).flags);
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PositionInfo implements Bundleable {
        public final int adGroupIndex;
        public final int adIndexInAdGroup;
        public final long contentPositionMs;
        public final MediaItem mediaItem;
        public final int mediaItemIndex;
        public final int periodIndex;
        public final Object periodUid;
        public final long positionMs;

        @Deprecated
        public final int windowIndex;
        public final Object windowUid;
        private static final String FIELD_MEDIA_ITEM_INDEX = Util.intToStringMaxRadix(0);
        private static final String FIELD_MEDIA_ITEM = Util.intToStringMaxRadix(1);
        private static final String FIELD_PERIOD_INDEX = Util.intToStringMaxRadix(2);
        private static final String FIELD_POSITION_MS = Util.intToStringMaxRadix(3);
        private static final String FIELD_CONTENT_POSITION_MS = Util.intToStringMaxRadix(4);
        private static final String FIELD_AD_GROUP_INDEX = Util.intToStringMaxRadix(5);
        private static final String FIELD_AD_INDEX_IN_AD_GROUP = Util.intToStringMaxRadix(6);
        public static final Bundleable.Creator<PositionInfo> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.Player$PositionInfo$$ExternalSyntheticLambda0
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                Player.PositionInfo fromBundle;
                fromBundle = Player.PositionInfo.fromBundle(bundle);
                return fromBundle;
            }
        };

        @Deprecated
        public PositionInfo(Object obj, int i, Object obj2, int i2, long j, long j2, int i3, int i4) {
            this(obj, i, MediaItem.EMPTY, obj2, i2, j, j2, i3, i4);
        }

        public PositionInfo(Object obj, int i, MediaItem mediaItem, Object obj2, int i2, long j, long j2, int i3, int i4) {
            this.windowUid = obj;
            this.windowIndex = i;
            this.mediaItemIndex = i;
            this.mediaItem = mediaItem;
            this.periodUid = obj2;
            this.periodIndex = i2;
            this.positionMs = j;
            this.contentPositionMs = j2;
            this.adGroupIndex = i3;
            this.adIndexInAdGroup = i4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            PositionInfo positionInfo = (PositionInfo) obj;
            return this.mediaItemIndex == positionInfo.mediaItemIndex && this.periodIndex == positionInfo.periodIndex && this.positionMs == positionInfo.positionMs && this.contentPositionMs == positionInfo.contentPositionMs && this.adGroupIndex == positionInfo.adGroupIndex && this.adIndexInAdGroup == positionInfo.adIndexInAdGroup && Objects.equal(this.windowUid, positionInfo.windowUid) && Objects.equal(this.periodUid, positionInfo.periodUid) && Objects.equal(this.mediaItem, positionInfo.mediaItem);
        }

        public int hashCode() {
            return Objects.hashCode(this.windowUid, Integer.valueOf(this.mediaItemIndex), this.mediaItem, this.periodUid, Integer.valueOf(this.periodIndex), Long.valueOf(this.positionMs), Long.valueOf(this.contentPositionMs), Integer.valueOf(this.adGroupIndex), Integer.valueOf(this.adIndexInAdGroup));
        }

        @Override // androidx.media3.common.Bundleable
        public Bundle toBundle() {
            return toBundle(true, true);
        }

        public Bundle toBundle(boolean z, boolean z2) {
            Bundle bundle = new Bundle();
            bundle.putInt(FIELD_MEDIA_ITEM_INDEX, z2 ? this.mediaItemIndex : 0);
            MediaItem mediaItem = this.mediaItem;
            if (mediaItem != null && z) {
                bundle.putBundle(FIELD_MEDIA_ITEM, mediaItem.toBundle());
            }
            bundle.putInt(FIELD_PERIOD_INDEX, z2 ? this.periodIndex : 0);
            bundle.putLong(FIELD_POSITION_MS, z ? this.positionMs : 0L);
            bundle.putLong(FIELD_CONTENT_POSITION_MS, z ? this.contentPositionMs : 0L);
            bundle.putInt(FIELD_AD_GROUP_INDEX, z ? this.adGroupIndex : -1);
            bundle.putInt(FIELD_AD_INDEX_IN_AD_GROUP, z ? this.adIndexInAdGroup : -1);
            return bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static PositionInfo fromBundle(Bundle bundle) {
            int i = bundle.getInt(FIELD_MEDIA_ITEM_INDEX, 0);
            Bundle bundle2 = bundle.getBundle(FIELD_MEDIA_ITEM);
            return new PositionInfo(null, i, bundle2 == null ? null : MediaItem.CREATOR.fromBundle(bundle2), null, bundle.getInt(FIELD_PERIOD_INDEX, 0), bundle.getLong(FIELD_POSITION_MS, 0L), bundle.getLong(FIELD_CONTENT_POSITION_MS, 0L), bundle.getInt(FIELD_AD_GROUP_INDEX, -1), bundle.getInt(FIELD_AD_INDEX_IN_AD_GROUP, -1));
        }
    }

    /* loaded from: classes2.dex */
    public static final class Commands implements Bundleable {
        private final FlagSet flags;
        public static final Commands EMPTY = new Builder().build();
        private static final String FIELD_COMMANDS = Util.intToStringMaxRadix(0);
        public static final Bundleable.Creator<Commands> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.Player$Commands$$ExternalSyntheticLambda0
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                Player.Commands fromBundle;
                fromBundle = Player.Commands.fromBundle(bundle);
                return fromBundle;
            }
        };

        /* loaded from: classes2.dex */
        public static final class Builder {
            private static final int[] SUPPORTED_COMMANDS = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 33, 26, 34, 27, 28, 29, 30, 32};
            private final FlagSet.Builder flagsBuilder;

            public Builder() {
                this.flagsBuilder = new FlagSet.Builder();
            }

            private Builder(Commands commands) {
                FlagSet.Builder builder = new FlagSet.Builder();
                this.flagsBuilder = builder;
                builder.addAll(commands.flags);
            }

            public Builder add(int i) {
                this.flagsBuilder.add(i);
                return this;
            }

            public Builder addIf(int i, boolean z) {
                this.flagsBuilder.addIf(i, z);
                return this;
            }

            public Builder addAll(int... iArr) {
                this.flagsBuilder.addAll(iArr);
                return this;
            }

            public Builder addAll(Commands commands) {
                this.flagsBuilder.addAll(commands.flags);
                return this;
            }

            public Builder addAllCommands() {
                this.flagsBuilder.addAll(SUPPORTED_COMMANDS);
                return this;
            }

            public Builder remove(int i) {
                this.flagsBuilder.remove(i);
                return this;
            }

            public Builder removeIf(int i, boolean z) {
                this.flagsBuilder.removeIf(i, z);
                return this;
            }

            public Builder removeAll(int... iArr) {
                this.flagsBuilder.removeAll(iArr);
                return this;
            }

            public Commands build() {
                return new Commands(this.flagsBuilder.build());
            }
        }

        private Commands(FlagSet flagSet) {
            this.flags = flagSet;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean contains(int i) {
            return this.flags.contains(i);
        }

        public boolean containsAny(int... iArr) {
            return this.flags.containsAny(iArr);
        }

        public int size() {
            return this.flags.size();
        }

        public int get(int i) {
            return this.flags.get(i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Commands) {
                return this.flags.equals(((Commands) obj).flags);
            }
            return false;
        }

        public int hashCode() {
            return this.flags.hashCode();
        }

        @Override // androidx.media3.common.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i = 0; i < this.flags.size(); i++) {
                arrayList.add(Integer.valueOf(this.flags.get(i)));
            }
            bundle.putIntegerArrayList(FIELD_COMMANDS, arrayList);
            return bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Commands fromBundle(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(FIELD_COMMANDS);
            if (integerArrayList == null) {
                return EMPTY;
            }
            Builder builder = new Builder();
            for (int i = 0; i < integerArrayList.size(); i++) {
                builder.add(integerArrayList.get(i).intValue());
            }
            return builder.build();
        }
    }
}
