package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.dash.DefaultDashChunkSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.util.Util;
import io.flutter.plugin.common.EventChannel;
import io.flutter.view.TextureRegistry;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes3.dex */
final class VideoPlayer {
    private static final String FORMAT_DASH = "dash";
    private static final String FORMAT_HLS = "hls";
    private static final String FORMAT_OTHER = "other";
    private static final String FORMAT_SS = "ss";
    private static final String USER_AGENT = "User-Agent";
    private final EventChannel eventChannel;
    private QueuingEventSink eventSink;
    private ExoPlayer exoPlayer;
    private DefaultHttpDataSource.Factory httpDataSourceFactory;
    boolean isInitialized;
    private final VideoPlayerOptions options;
    private Surface surface;
    private final TextureRegistry.SurfaceTextureEntry textureEntry;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoPlayer(Context context, EventChannel eventChannel, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry, String str, String str2, Map<String, String> map, VideoPlayerOptions videoPlayerOptions) {
        this.isInitialized = false;
        this.httpDataSourceFactory = new DefaultHttpDataSource.Factory();
        this.eventChannel = eventChannel;
        this.textureEntry = surfaceTextureEntry;
        this.options = videoPlayerOptions;
        ExoPlayer build = new ExoPlayer.Builder(context).build();
        Uri parse = Uri.parse(str);
        buildHttpDataSourceFactory(map);
        build.setMediaSource(buildMediaSource(parse, new DefaultDataSource.Factory(context, this.httpDataSourceFactory), str2));
        build.prepare();
        setUpVideoPlayer(build, new QueuingEventSink());
    }

    VideoPlayer(ExoPlayer exoPlayer, EventChannel eventChannel, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry, VideoPlayerOptions videoPlayerOptions, QueuingEventSink queuingEventSink, DefaultHttpDataSource.Factory factory) {
        this.isInitialized = false;
        new DefaultHttpDataSource.Factory();
        this.eventChannel = eventChannel;
        this.textureEntry = surfaceTextureEntry;
        this.options = videoPlayerOptions;
        this.httpDataSourceFactory = factory;
        setUpVideoPlayer(exoPlayer, queuingEventSink);
    }

    public void buildHttpDataSourceFactory(Map<String, String> map) {
        boolean z = !map.isEmpty();
        this.httpDataSourceFactory.setUserAgent((z && map.containsKey("User-Agent")) ? map.get("User-Agent") : "ExoPlayer").setAllowCrossProtocolRedirects(true);
        if (z) {
            this.httpDataSourceFactory.setDefaultRequestProperties(map);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private MediaSource buildMediaSource(Uri uri, DataSource.Factory factory, String str) {
        char c;
        int i;
        if (str == null) {
            i = Util.inferContentType(uri);
        } else {
            str.hashCode();
            switch (str.hashCode()) {
                case 3680:
                    if (str.equals(FORMAT_SS)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 103407:
                    if (str.equals(FORMAT_HLS)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 3075986:
                    if (str.equals(FORMAT_DASH)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 106069776:
                    if (str.equals("other")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    i = 1;
                    break;
                case 1:
                    i = 2;
                    break;
                case 2:
                    i = 0;
                    break;
                case 3:
                    i = 4;
                    break;
                default:
                    i = -1;
                    break;
            }
        }
        if (i == 0) {
            return new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(factory), factory).createMediaSource(MediaItem.fromUri(uri));
        }
        if (i == 1) {
            return new SsMediaSource.Factory(new DefaultSsChunkSource.Factory(factory), factory).createMediaSource(MediaItem.fromUri(uri));
        }
        if (i == 2) {
            return new HlsMediaSource.Factory(factory).createMediaSource(MediaItem.fromUri(uri));
        }
        if (i == 4) {
            return new ProgressiveMediaSource.Factory(factory).createMediaSource(MediaItem.fromUri(uri));
        }
        throw new IllegalStateException("Unsupported type: " + i);
    }

    private void setUpVideoPlayer(final ExoPlayer exoPlayer, final QueuingEventSink queuingEventSink) {
        this.exoPlayer = exoPlayer;
        this.eventSink = queuingEventSink;
        this.eventChannel.setStreamHandler(new EventChannel.StreamHandler() { // from class: io.flutter.plugins.videoplayer.VideoPlayer.1
            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onListen(Object obj, EventChannel.EventSink eventSink) {
                queuingEventSink.setDelegate(eventSink);
            }

            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onCancel(Object obj) {
                queuingEventSink.setDelegate(null);
            }
        });
        Surface surface = new Surface(this.textureEntry.surfaceTexture());
        this.surface = surface;
        exoPlayer.setVideoSurface(surface);
        setAudioAttributes(exoPlayer, this.options.mixWithOthers);
        exoPlayer.addListener(new Player.Listener() { // from class: io.flutter.plugins.videoplayer.VideoPlayer.2
            private boolean isBuffering = false;

            public void setBuffering(boolean z) {
                if (this.isBuffering != z) {
                    this.isBuffering = z;
                    HashMap hashMap = new HashMap();
                    hashMap.put(NotificationCompat.CATEGORY_EVENT, this.isBuffering ? "bufferingStart" : "bufferingEnd");
                    queuingEventSink.success(hashMap);
                }
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public void onPlaybackStateChanged(int i) {
                if (i == 2) {
                    setBuffering(true);
                    VideoPlayer.this.sendBufferingUpdate();
                } else if (i == 3) {
                    if (!VideoPlayer.this.isInitialized) {
                        VideoPlayer.this.isInitialized = true;
                        VideoPlayer.this.sendInitialized();
                    }
                } else if (i == 4) {
                    HashMap hashMap = new HashMap();
                    hashMap.put(NotificationCompat.CATEGORY_EVENT, "completed");
                    queuingEventSink.success(hashMap);
                }
                if (i != 2) {
                    setBuffering(false);
                }
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public void onPlayerError(PlaybackException playbackException) {
                setBuffering(false);
                if (playbackException.errorCode == 1002) {
                    exoPlayer.seekToDefaultPosition();
                    exoPlayer.prepare();
                } else {
                    QueuingEventSink queuingEventSink2 = queuingEventSink;
                    if (queuingEventSink2 != null) {
                        queuingEventSink2.error("VideoError", "Video player had error " + playbackException, null);
                    }
                }
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public void onIsPlayingChanged(boolean z) {
                if (queuingEventSink != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put(NotificationCompat.CATEGORY_EVENT, "isPlayingStateUpdate");
                    hashMap.put("isPlaying", Boolean.valueOf(z));
                    queuingEventSink.success(hashMap);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendBufferingUpdate() {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "bufferingUpdate");
        hashMap.put("values", Collections.singletonList(Arrays.asList(0, Long.valueOf(this.exoPlayer.getBufferedPosition()))));
        this.eventSink.success(hashMap);
    }

    private static void setAudioAttributes(ExoPlayer exoPlayer, boolean z) {
        exoPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(3).build(), !z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void play() {
        this.exoPlayer.setPlayWhenReady(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pause() {
        this.exoPlayer.setPlayWhenReady(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLooping(boolean z) {
        this.exoPlayer.setRepeatMode(z ? 2 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVolume(double d) {
        this.exoPlayer.setVolume((float) Math.max(BuildConfig.SENTRY_SAMPLE_RATE, Math.min(1.0d, d)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlaybackSpeed(double d) {
        this.exoPlayer.setPlaybackParameters(new PlaybackParameters((float) d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void seekTo(int i) {
        this.exoPlayer.seekTo(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getPosition() {
        return this.exoPlayer.getCurrentPosition();
    }

    void sendInitialized() {
        if (this.isInitialized) {
            HashMap hashMap = new HashMap();
            hashMap.put(NotificationCompat.CATEGORY_EVENT, "initialized");
            hashMap.put("duration", Long.valueOf(this.exoPlayer.getDuration()));
            if (this.exoPlayer.getVideoFormat() != null) {
                Format videoFormat = this.exoPlayer.getVideoFormat();
                int i = videoFormat.width;
                int i2 = videoFormat.height;
                int i3 = videoFormat.rotationDegrees;
                if (i3 == 90 || i3 == 270) {
                    i = this.exoPlayer.getVideoFormat().height;
                    i2 = this.exoPlayer.getVideoFormat().width;
                }
                hashMap.put(ViewHierarchyNode.JsonKeys.WIDTH, Integer.valueOf(i));
                hashMap.put(ViewHierarchyNode.JsonKeys.HEIGHT, Integer.valueOf(i2));
                if (i3 == 180) {
                    hashMap.put("rotationCorrection", Integer.valueOf(i3));
                }
            }
            this.eventSink.success(hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispose() {
        if (this.isInitialized) {
            this.exoPlayer.stop();
        }
        this.textureEntry.release();
        this.eventChannel.setStreamHandler(null);
        Surface surface = this.surface;
        if (surface != null) {
            surface.release();
        }
        ExoPlayer exoPlayer = this.exoPlayer;
        if (exoPlayer != null) {
            exoPlayer.release();
        }
    }
}
