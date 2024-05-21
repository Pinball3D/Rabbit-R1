package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.hls.HlsDataSourceFactory;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface HlsPlaylistTracker {

    /* loaded from: classes2.dex */
    public interface Factory {
        HlsPlaylistTracker createTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory);
    }

    /* loaded from: classes2.dex */
    public interface PlaylistEventListener {
        void onPlaylistChanged();

        boolean onPlaylistError(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z);
    }

    /* loaded from: classes2.dex */
    public interface PrimaryPlaylistListener {
        void onPrimaryPlaylistRefreshed(HlsMediaPlaylist hlsMediaPlaylist);
    }

    void addListener(PlaylistEventListener playlistEventListener);

    boolean excludeMediaPlaylist(Uri uri, long j);

    long getInitialStartTimeUs();

    HlsMultivariantPlaylist getMultivariantPlaylist();

    HlsMediaPlaylist getPlaylistSnapshot(Uri uri, boolean z);

    boolean isLive();

    boolean isSnapshotValid(Uri uri);

    void maybeThrowPlaylistRefreshError(Uri uri) throws IOException;

    void maybeThrowPrimaryPlaylistRefreshError() throws IOException;

    void refreshPlaylist(Uri uri);

    void removeListener(PlaylistEventListener playlistEventListener);

    void start(Uri uri, MediaSourceEventListener.EventDispatcher eventDispatcher, PrimaryPlaylistListener primaryPlaylistListener);

    void stop();

    /* loaded from: classes2.dex */
    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }
}
