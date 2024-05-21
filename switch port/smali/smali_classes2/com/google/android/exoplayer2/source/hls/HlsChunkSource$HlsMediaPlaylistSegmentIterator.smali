.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HlsMediaPlaylistSegmentIterator"
.end annotation


# instance fields
.field private final playlistBaseUri:Ljava/lang/String;

.field private final segmentBases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;"
        }
    .end annotation
.end field

.field private final startOfPlaylistInPeriodUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;)V"
        }
    .end annotation

    .line 980
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlistBaseUri:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->segmentBases:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .locals 5

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->checkInBounds()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->segmentBases:Ljava/util/List;

    .line 1004
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->getCurrentIndex()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    .line 1005
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr v1, v3

    .line 1006
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getChunkStartTimeUs()J
    .locals 5

    .line 996
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->checkInBounds()V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->segmentBases:Ljava/util/List;

    .line 998
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->getCurrentIndex()J

    move-result-wide v3

    long-to-int p0, v3

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 8

    .line 988
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->checkInBounds()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->segmentBases:Ljava/util/List;

    .line 989
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->getCurrentIndex()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlistBaseUri:Ljava/lang/String;

    .line 990
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 991
    new-instance p0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJ)V

    return-object p0
.end method
