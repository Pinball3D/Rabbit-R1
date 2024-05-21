.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SegmentBaseHolder"
.end annotation


# instance fields
.field public final isPreload:Z

.field public final mediaSequence:J

.field public final partIndex:I

.field public final segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V
    .locals 0

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->mediaSequence:J

    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    .line 869
    instance-of p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    return-void
.end method
