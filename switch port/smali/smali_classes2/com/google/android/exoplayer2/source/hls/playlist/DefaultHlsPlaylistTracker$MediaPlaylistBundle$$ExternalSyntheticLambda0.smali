.class public final synthetic Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lambda$loadPlaylistInternal$0$com-google-android-exoplayer2-source-hls-playlist-DefaultHlsPlaylistTracker$MediaPlaylistBundle(Landroid/net/Uri;)V

    return-void
.end method
