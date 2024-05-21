.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenditionReport"
.end annotation


# instance fields
.field public final lastMediaSequence:J

.field public final lastPartIndex:I

.field public final playlistUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;JI)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    return-void
.end method
