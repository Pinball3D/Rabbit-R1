.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerControl"
.end annotation


# instance fields
.field public final canBlockReload:Z

.field public final canSkipDateRanges:Z

.field public final holdBackUs:J

.field public final partHoldBackUs:J

.field public final skipUntilUs:J


# direct methods
.method public constructor <init>(JZJJZ)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->skipUntilUs:J

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->canSkipDateRanges:Z

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    return-void
.end method
