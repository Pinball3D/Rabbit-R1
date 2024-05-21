package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.upstream.ParsingLoadable;

/* loaded from: classes2.dex */
public final class DefaultHlsPlaylistParserFactory implements HlsPlaylistParserFactory {
    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory
    public ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser() {
        return new HlsPlaylistParser();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory
    public ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        return new HlsPlaylistParser(hlsMultivariantPlaylist, hlsMediaPlaylist);
    }
}
