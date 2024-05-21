.class public Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byteRangeLength:J

.field public final byteRangeOffset:J

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final durationUs:J

.field public final encryptionIV:Ljava/lang/String;

.field public final fullSegmentEncryptionKeyUri:Ljava/lang/String;

.field public final hasGapTag:Z

.field public final initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

.field public final relativeDiscontinuitySequence:I

.field public final relativeStartTimeUs:J

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    iput p5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    iput-wide p13, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    iput-boolean p15, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->hasGapTag:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$1;)V
    .locals 0

    .line 277
    invoke-direct/range {p0 .. p15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 348
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 350
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 276
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
