.class public interface abstract Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public abstract excludeMediaPlaylist(Landroid/net/Uri;J)Z
.end method

.method public abstract getInitialStartTimeUs()J
.end method

.method public abstract getMultivariantPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
.end method

.method public abstract getPlaylistSnapshot(Landroid/net/Uri;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end method

.method public abstract isLive()Z
.end method

.method public abstract isSnapshotValid(Landroid/net/Uri;)Z
.end method

.method public abstract maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract maybeThrowPrimaryPlaylistRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract refreshPlaylist(Landroid/net/Uri;)V
.end method

.method public abstract removeListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public abstract start(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V
.end method

.method public abstract stop()V
.end method
