.class public final Lcom/google/android/exoplayer2/source/hls/HlsManifest;
.super Ljava/lang/Object;
.source "HlsManifest.java"


# instance fields
.field public final masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final mediaPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field public final multivariantPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 13

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsManifest;->multivariantPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsManifest;->mediaPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 45
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->tags:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->videos:Ljava/util/List;

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->closedCaptions:Ljava/util/List;

    iget-object v8, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v9, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    iget-boolean v10, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->hasIndependentSegments:Z

    iget-object v11, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    iget-object v12, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    move-object v0, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsManifest;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-void
.end method
