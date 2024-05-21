package androidx.media3.common;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.Player;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Size;
import java.util.List;

/* loaded from: classes2.dex */
public class ForwardingPlayer implements Player {
    private final Player player;

    public Player getWrappedPlayer() {
        return this.player;
    }

    public ForwardingPlayer(Player player) {
        this.player = player;
    }

    @Override // androidx.media3.common.Player
    public Looper getApplicationLooper() {
        return this.player.getApplicationLooper();
    }

    @Override // androidx.media3.common.Player
    public void addListener(Player.Listener listener) {
        this.player.addListener(new ForwardingListener(this, listener));
    }

    @Override // androidx.media3.common.Player
    public void removeListener(Player.Listener listener) {
        this.player.removeListener(new ForwardingListener(this, listener));
    }

    @Override // androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> list) {
        this.player.setMediaItems(list);
    }

    @Override // androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> list, boolean z) {
        this.player.setMediaItems(list, z);
    }

    @Override // androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> list, int i, long j) {
        this.player.setMediaItems(list, i, j);
    }

    @Override // androidx.media3.common.Player
    public void setMediaItem(MediaItem mediaItem) {
        this.player.setMediaItem(mediaItem);
    }

    @Override // androidx.media3.common.Player
    public void setMediaItem(MediaItem mediaItem, long j) {
        this.player.setMediaItem(mediaItem, j);
    }

    @Override // androidx.media3.common.Player
    public void setMediaItem(MediaItem mediaItem, boolean z) {
        this.player.setMediaItem(mediaItem, z);
    }

    @Override // androidx.media3.common.Player
    public void addMediaItem(MediaItem mediaItem) {
        this.player.addMediaItem(mediaItem);
    }

    @Override // androidx.media3.common.Player
    public void addMediaItem(int i, MediaItem mediaItem) {
        this.player.addMediaItem(i, mediaItem);
    }

    @Override // androidx.media3.common.Player
    public void addMediaItems(List<MediaItem> list) {
        this.player.addMediaItems(list);
    }

    @Override // androidx.media3.common.Player
    public void addMediaItems(int i, List<MediaItem> list) {
        this.player.addMediaItems(i, list);
    }

    @Override // androidx.media3.common.Player
    public void moveMediaItem(int i, int i2) {
        this.player.moveMediaItem(i, i2);
    }

    @Override // androidx.media3.common.Player
    public void moveMediaItems(int i, int i2, int i3) {
        this.player.moveMediaItems(i, i2, i3);
    }

    @Override // androidx.media3.common.Player
    public void replaceMediaItem(int i, MediaItem mediaItem) {
        this.player.replaceMediaItem(i, mediaItem);
    }

    @Override // androidx.media3.common.Player
    public void replaceMediaItems(int i, int i2, List<MediaItem> list) {
        this.player.replaceMediaItems(i, i2, list);
    }

    @Override // androidx.media3.common.Player
    public void removeMediaItem(int i) {
        this.player.removeMediaItem(i);
    }

    @Override // androidx.media3.common.Player
    public void removeMediaItems(int i, int i2) {
        this.player.removeMediaItems(i, i2);
    }

    @Override // androidx.media3.common.Player
    public void clearMediaItems() {
        this.player.clearMediaItems();
    }

    @Override // androidx.media3.common.Player
    public boolean isCommandAvailable(int i) {
        return this.player.isCommandAvailable(i);
    }

    @Override // androidx.media3.common.Player
    public boolean canAdvertiseSession() {
        return this.player.canAdvertiseSession();
    }

    @Override // androidx.media3.common.Player
    public Player.Commands getAvailableCommands() {
        return this.player.getAvailableCommands();
    }

    @Override // androidx.media3.common.Player
    public void prepare() {
        this.player.prepare();
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackState() {
        return this.player.getPlaybackState();
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackSuppressionReason() {
        return this.player.getPlaybackSuppressionReason();
    }

    @Override // androidx.media3.common.Player
    public boolean isPlaying() {
        return this.player.isPlaying();
    }

    @Override // androidx.media3.common.Player
    public PlaybackException getPlayerError() {
        return this.player.getPlayerError();
    }

    @Override // androidx.media3.common.Player
    public void play() {
        this.player.play();
    }

    @Override // androidx.media3.common.Player
    public void pause() {
        this.player.pause();
    }

    @Override // androidx.media3.common.Player
    public void setPlayWhenReady(boolean z) {
        this.player.setPlayWhenReady(z);
    }

    @Override // androidx.media3.common.Player
    public boolean getPlayWhenReady() {
        return this.player.getPlayWhenReady();
    }

    @Override // androidx.media3.common.Player
    public void setRepeatMode(int i) {
        this.player.setRepeatMode(i);
    }

    @Override // androidx.media3.common.Player
    public int getRepeatMode() {
        return this.player.getRepeatMode();
    }

    @Override // androidx.media3.common.Player
    public void setShuffleModeEnabled(boolean z) {
        this.player.setShuffleModeEnabled(z);
    }

    @Override // androidx.media3.common.Player
    public boolean getShuffleModeEnabled() {
        return this.player.getShuffleModeEnabled();
    }

    @Override // androidx.media3.common.Player
    public boolean isLoading() {
        return this.player.isLoading();
    }

    @Override // androidx.media3.common.Player
    public void seekToDefaultPosition() {
        this.player.seekToDefaultPosition();
    }

    @Override // androidx.media3.common.Player
    public void seekToDefaultPosition(int i) {
        this.player.seekToDefaultPosition(i);
    }

    @Override // androidx.media3.common.Player
    public void seekTo(long j) {
        this.player.seekTo(j);
    }

    @Override // androidx.media3.common.Player
    public void seekTo(int i, long j) {
        this.player.seekTo(i, j);
    }

    @Override // androidx.media3.common.Player
    public long getSeekBackIncrement() {
        return this.player.getSeekBackIncrement();
    }

    @Override // androidx.media3.common.Player
    public void seekBack() {
        this.player.seekBack();
    }

    @Override // androidx.media3.common.Player
    public long getSeekForwardIncrement() {
        return this.player.getSeekForwardIncrement();
    }

    @Override // androidx.media3.common.Player
    public void seekForward() {
        this.player.seekForward();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public boolean hasPrevious() {
        return this.player.hasPrevious();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public boolean hasPreviousWindow() {
        return this.player.hasPreviousWindow();
    }

    @Override // androidx.media3.common.Player
    public boolean hasPreviousMediaItem() {
        return this.player.hasPreviousMediaItem();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void previous() {
        this.player.previous();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void seekToPreviousWindow() {
        this.player.seekToPreviousWindow();
    }

    @Override // androidx.media3.common.Player
    public void seekToPreviousMediaItem() {
        this.player.seekToPreviousMediaItem();
    }

    @Override // androidx.media3.common.Player
    public void seekToPrevious() {
        this.player.seekToPrevious();
    }

    @Override // androidx.media3.common.Player
    public long getMaxSeekToPreviousPosition() {
        return this.player.getMaxSeekToPreviousPosition();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public boolean hasNext() {
        return this.player.hasNext();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public boolean hasNextWindow() {
        return this.player.hasNextWindow();
    }

    @Override // androidx.media3.common.Player
    public boolean hasNextMediaItem() {
        return this.player.hasNextMediaItem();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void next() {
        this.player.next();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void seekToNextWindow() {
        this.player.seekToNextWindow();
    }

    @Override // androidx.media3.common.Player
    public void seekToNextMediaItem() {
        this.player.seekToNextMediaItem();
    }

    @Override // androidx.media3.common.Player
    public void seekToNext() {
        this.player.seekToNext();
    }

    @Override // androidx.media3.common.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.player.setPlaybackParameters(playbackParameters);
    }

    @Override // androidx.media3.common.Player
    public void setPlaybackSpeed(float f) {
        this.player.setPlaybackSpeed(f);
    }

    @Override // androidx.media3.common.Player
    public PlaybackParameters getPlaybackParameters() {
        return this.player.getPlaybackParameters();
    }

    @Override // androidx.media3.common.Player
    public void stop() {
        this.player.stop();
    }

    @Override // androidx.media3.common.Player
    public void release() {
        this.player.release();
    }

    @Override // androidx.media3.common.Player
    public Tracks getCurrentTracks() {
        return this.player.getCurrentTracks();
    }

    @Override // androidx.media3.common.Player
    public TrackSelectionParameters getTrackSelectionParameters() {
        return this.player.getTrackSelectionParameters();
    }

    @Override // androidx.media3.common.Player
    public void setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        this.player.setTrackSelectionParameters(trackSelectionParameters);
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata getMediaMetadata() {
        return this.player.getMediaMetadata();
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata getPlaylistMetadata() {
        return this.player.getPlaylistMetadata();
    }

    @Override // androidx.media3.common.Player
    public void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        this.player.setPlaylistMetadata(mediaMetadata);
    }

    @Override // androidx.media3.common.Player
    public Object getCurrentManifest() {
        return this.player.getCurrentManifest();
    }

    @Override // androidx.media3.common.Player
    public Timeline getCurrentTimeline() {
        return this.player.getCurrentTimeline();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentPeriodIndex() {
        return this.player.getCurrentPeriodIndex();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public int getCurrentWindowIndex() {
        return this.player.getCurrentWindowIndex();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentMediaItemIndex() {
        return this.player.getCurrentMediaItemIndex();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public int getNextWindowIndex() {
        return this.player.getNextWindowIndex();
    }

    @Override // androidx.media3.common.Player
    public int getNextMediaItemIndex() {
        return this.player.getNextMediaItemIndex();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public int getPreviousWindowIndex() {
        return this.player.getPreviousWindowIndex();
    }

    @Override // androidx.media3.common.Player
    public int getPreviousMediaItemIndex() {
        return this.player.getPreviousMediaItemIndex();
    }

    @Override // androidx.media3.common.Player
    public MediaItem getCurrentMediaItem() {
        return this.player.getCurrentMediaItem();
    }

    @Override // androidx.media3.common.Player
    public int getMediaItemCount() {
        return this.player.getMediaItemCount();
    }

    @Override // androidx.media3.common.Player
    public MediaItem getMediaItemAt(int i) {
        return this.player.getMediaItemAt(i);
    }

    @Override // androidx.media3.common.Player
    public long getDuration() {
        return this.player.getDuration();
    }

    @Override // androidx.media3.common.Player
    public long getCurrentPosition() {
        return this.player.getCurrentPosition();
    }

    @Override // androidx.media3.common.Player
    public long getBufferedPosition() {
        return this.player.getBufferedPosition();
    }

    @Override // androidx.media3.common.Player
    public int getBufferedPercentage() {
        return this.player.getBufferedPercentage();
    }

    @Override // androidx.media3.common.Player
    public long getTotalBufferedDuration() {
        return this.player.getTotalBufferedDuration();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public boolean isCurrentWindowDynamic() {
        return this.player.isCurrentWindowDynamic();
    }

    @Override // androidx.media3.common.Player
    public boolean isCurrentMediaItemDynamic() {
        return this.player.isCurrentMediaItemDynamic();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public boolean isCurrentWindowLive() {
        return this.player.isCurrentWindowLive();
    }

    @Override // androidx.media3.common.Player
    public boolean isCurrentMediaItemLive() {
        return this.player.isCurrentMediaItemLive();
    }

    @Override // androidx.media3.common.Player
    public long getCurrentLiveOffset() {
        return this.player.getCurrentLiveOffset();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public boolean isCurrentWindowSeekable() {
        return this.player.isCurrentWindowSeekable();
    }

    @Override // androidx.media3.common.Player
    public boolean isCurrentMediaItemSeekable() {
        return this.player.isCurrentMediaItemSeekable();
    }

    @Override // androidx.media3.common.Player
    public boolean isPlayingAd() {
        return this.player.isPlayingAd();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdGroupIndex() {
        return this.player.getCurrentAdGroupIndex();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdIndexInAdGroup() {
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override // androidx.media3.common.Player
    public long getContentDuration() {
        return this.player.getContentDuration();
    }

    @Override // androidx.media3.common.Player
    public long getContentPosition() {
        return this.player.getContentPosition();
    }

    @Override // androidx.media3.common.Player
    public long getContentBufferedPosition() {
        return this.player.getContentBufferedPosition();
    }

    @Override // androidx.media3.common.Player
    public AudioAttributes getAudioAttributes() {
        return this.player.getAudioAttributes();
    }

    @Override // androidx.media3.common.Player
    public void setVolume(float f) {
        this.player.setVolume(f);
    }

    @Override // androidx.media3.common.Player
    public float getVolume() {
        return this.player.getVolume();
    }

    @Override // androidx.media3.common.Player
    public VideoSize getVideoSize() {
        return this.player.getVideoSize();
    }

    @Override // androidx.media3.common.Player
    public Size getSurfaceSize() {
        return this.player.getSurfaceSize();
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface() {
        this.player.clearVideoSurface();
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface(Surface surface) {
        this.player.clearVideoSurface(surface);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurface(Surface surface) {
        this.player.setVideoSurface(surface);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        this.player.setVideoSurfaceHolder(surfaceHolder);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        this.player.clearVideoSurfaceHolder(surfaceHolder);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        this.player.setVideoSurfaceView(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        this.player.clearVideoSurfaceView(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void setVideoTextureView(TextureView textureView) {
        this.player.setVideoTextureView(textureView);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoTextureView(TextureView textureView) {
        this.player.clearVideoTextureView(textureView);
    }

    @Override // androidx.media3.common.Player
    public CueGroup getCurrentCues() {
        return this.player.getCurrentCues();
    }

    @Override // androidx.media3.common.Player
    public DeviceInfo getDeviceInfo() {
        return this.player.getDeviceInfo();
    }

    @Override // androidx.media3.common.Player
    public int getDeviceVolume() {
        return this.player.getDeviceVolume();
    }

    @Override // androidx.media3.common.Player
    public boolean isDeviceMuted() {
        return this.player.isDeviceMuted();
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void setDeviceVolume(int i) {
        this.player.setDeviceVolume(i);
    }

    @Override // androidx.media3.common.Player
    public void setDeviceVolume(int i, int i2) {
        this.player.setDeviceVolume(i, i2);
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void increaseDeviceVolume() {
        this.player.increaseDeviceVolume();
    }

    @Override // androidx.media3.common.Player
    public void increaseDeviceVolume(int i) {
        this.player.increaseDeviceVolume(i);
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void decreaseDeviceVolume() {
        this.player.decreaseDeviceVolume();
    }

    @Override // androidx.media3.common.Player
    public void decreaseDeviceVolume(int i) {
        this.player.decreaseDeviceVolume(i);
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void setDeviceMuted(boolean z) {
        this.player.setDeviceMuted(z);
    }

    @Override // androidx.media3.common.Player
    public void setDeviceMuted(boolean z, int i) {
        this.player.setDeviceMuted(z, i);
    }

    /* loaded from: classes2.dex */
    private static final class ForwardingListener implements Player.Listener {
        private final ForwardingPlayer forwardingPlayer;
        private final Player.Listener listener;

        public ForwardingListener(ForwardingPlayer forwardingPlayer, Player.Listener listener) {
            this.forwardingPlayer = forwardingPlayer;
            this.listener = listener;
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            this.listener.onEvents(this.forwardingPlayer, events);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTimelineChanged(Timeline timeline, int i) {
            this.listener.onTimelineChanged(timeline, i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMediaItemTransition(MediaItem mediaItem, int i) {
            this.listener.onMediaItemTransition(mediaItem, i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTracksChanged(Tracks tracks) {
            this.listener.onTracksChanged(tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            this.listener.onMediaMetadataChanged(mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            this.listener.onPlaylistMetadataChanged(mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onIsLoadingChanged(boolean z) {
            this.listener.onIsLoadingChanged(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onLoadingChanged(boolean z) {
            this.listener.onIsLoadingChanged(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onAvailableCommandsChanged(Player.Commands commands) {
            this.listener.onAvailableCommandsChanged(commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            this.listener.onTrackSelectionParametersChanged(trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayerStateChanged(boolean z, int i) {
            this.listener.onPlayerStateChanged(z, i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i) {
            this.listener.onPlaybackStateChanged(i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayWhenReadyChanged(boolean z, int i) {
            this.listener.onPlayWhenReadyChanged(z, i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackSuppressionReasonChanged(int i) {
            this.listener.onPlaybackSuppressionReasonChanged(i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onIsPlayingChanged(boolean z) {
            this.listener.onIsPlayingChanged(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onRepeatModeChanged(int i) {
            this.listener.onRepeatModeChanged(i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onShuffleModeEnabledChanged(boolean z) {
            this.listener.onShuffleModeEnabledChanged(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayerError(PlaybackException playbackException) {
            this.listener.onPlayerError(playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayerErrorChanged(PlaybackException playbackException) {
            this.listener.onPlayerErrorChanged(playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(int i) {
            this.listener.onPositionDiscontinuity(i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            this.listener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            this.listener.onPlaybackParametersChanged(playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSeekBackIncrementChanged(long j) {
            this.listener.onSeekBackIncrementChanged(j);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSeekForwardIncrementChanged(long j) {
            this.listener.onSeekForwardIncrementChanged(j);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMaxSeekToPreviousPositionChanged(long j) {
            this.listener.onMaxSeekToPreviousPositionChanged(j);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            this.listener.onVideoSizeChanged(videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSurfaceSizeChanged(int i, int i2) {
            this.listener.onSurfaceSizeChanged(i, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onRenderedFirstFrame() {
            this.listener.onRenderedFirstFrame();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onAudioSessionIdChanged(int i) {
            this.listener.onAudioSessionIdChanged(i);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            this.listener.onAudioAttributesChanged(audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onVolumeChanged(float f) {
            this.listener.onVolumeChanged(f);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSkipSilenceEnabledChanged(boolean z) {
            this.listener.onSkipSilenceEnabledChanged(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onCues(List<Cue> list) {
            this.listener.onCues(list);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onCues(CueGroup cueGroup) {
            this.listener.onCues(cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMetadata(Metadata metadata) {
            this.listener.onMetadata(metadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            this.listener.onDeviceInfoChanged(deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onDeviceVolumeChanged(int i, boolean z) {
            this.listener.onDeviceVolumeChanged(i, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForwardingListener)) {
                return false;
            }
            ForwardingListener forwardingListener = (ForwardingListener) obj;
            if (this.forwardingPlayer.equals(forwardingListener.forwardingPlayer)) {
                return this.listener.equals(forwardingListener.listener);
            }
            return false;
        }

        public int hashCode() {
            return (this.forwardingPlayer.hashCode() * 31) + this.listener.hashCode();
        }
    }
}
