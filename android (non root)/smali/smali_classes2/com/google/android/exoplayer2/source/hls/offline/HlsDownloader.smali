.class public final Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "HlsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 136
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;)V
    .locals 1

    .line 75
    new-instance v0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7

    .line 90
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method private addMediaPlaylistDataSpecs(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 186
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 187
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addSegment(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    .line 197
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr v0, v2

    .line 198
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 200
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 201
    new-instance p3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    invoke-direct {p3, v0, v1, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 205
    new-instance p0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    iget-wide v6, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJ)V

    .line 206
    new-instance p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    check-cast p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    instance-of v1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    if-eqz v1, :cond_0

    .line 149
    check-cast p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    .line 150
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->addMediaPlaylistDataSpecs(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 153
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p2

    .line 152
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 159
    new-instance v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 172
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 173
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 174
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v7, :cond_2

    if-eq v7, v4, :cond_2

    .line 177
    invoke-direct {p0, v2, v7, v1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->addSegment(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    move-object v4, v7

    .line 179
    :cond_2
    invoke-direct {p0, v2, v6, v1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->addSegment(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    if-eqz p3, :cond_3

    goto :goto_1

    .line 165
    :cond_3
    throw v2

    :cond_4
    return-object p2
.end method
