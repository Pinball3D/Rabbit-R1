.class public abstract Landroidx/media3/exoplayer/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Landroidx/media3/exoplayer/offline/FilterableManifest<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/offline/Downloader;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000

.field public static final DEFAULT_MAX_MERGED_SEGMENT_START_TIME_DIFF_MS:J = 0x4e20L


# instance fields
.field private final activeRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

.field private final cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile isCanceled:Z

.field private final manifestDataSpec:Landroidx/media3/datasource/DataSpec;

.field private final manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final maxMergedSegmentStartTimeDiffUs:J

.field private final priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field private final streamKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
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

    .line 114
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 143
    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 146
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->getCache()Landroidx/media3/datasource/cache/Cache;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/cache/Cache;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 147
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->getCacheKeyFactory()Landroidx/media3/datasource/cache/CacheKeyFactory;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 148
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->getUpstreamPriorityTaskManager()Landroidx/media3/common/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 150
    invoke-static {p5, p6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/offline/SegmentDownloader;)Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method private addActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "TT;*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 425
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 429
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    monitor-exit v0

    return-void

    .line 427
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static canMergeSegments(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSpec;)Z
    .locals 4

    .line 475
    iget-object v0, p0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v2, p0, Landroidx/media3/datasource/DataSpec;->length:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    .line 478
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/datasource/DataSpec;->flags:I

    iget v1, p1, Landroidx/media3/datasource/DataSpec;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget v1, p1, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 481
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;
    .locals 1

    .line 420
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method private static mergeSegments(Ljava/util/List;Landroidx/media3/datasource/cache/CacheKeyFactory;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;",
            "Landroidx/media3/datasource/cache/CacheKeyFactory;",
            "J)V"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 449
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 450
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 451
    iget-object v4, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {p1, v4}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 453
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    :goto_1
    if-eqz v6, :cond_3

    .line 454
    iget-wide v7, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v9, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    add-long/2addr v9, p2

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    iget-object v7, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v8, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 456
    invoke-static {v7, v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->canMergeSegments(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSpec;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    .line 462
    :cond_1
    iget-object v4, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v7, v4, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_2

    goto :goto_2

    .line 464
    :cond_2
    iget-object v4, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v7, v4, Landroidx/media3/datasource/DataSpec;->length:J

    iget-object v3, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v3, Landroidx/media3/datasource/DataSpec;->length:J

    add-long v9, v7, v3

    .line 465
    :goto_2
    iget-object v3, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8, v9, v10}, Landroidx/media3/datasource/DataSpec;->subrange(JJ)Landroidx/media3/datasource/DataSpec;

    move-result-object v3

    .line 467
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    iget-wide v6, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-direct {v5, v6, v7, v3}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    .line 466
    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 457
    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, v2, p1}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    return-void
.end method

.method private removeActiveRunnable(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 440
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 441
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 434
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 435
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 297
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 299
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final download(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 156
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 157
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    const/16 v4, -0x3e8

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->add(I)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 162
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object v0

    iget-object v7, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 164
    invoke-virtual {v1, v0, v7, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-result-object v7

    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 166
    invoke-interface {v7, v8}, Landroidx/media3/exoplayer/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/offline/FilterableManifest;

    .line 168
    :cond_1
    invoke-virtual {v1, v0, v7, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v7, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    iget-wide v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    .line 173
    invoke-static {v0, v7, v8, v9}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->mergeSegments(Ljava/util/List;Landroidx/media3/datasource/cache/CacheKeyFactory;J)V

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    const-wide/16 v8, 0x0

    move/from16 v17, v5

    move-wide v12, v8

    move-wide v15, v12

    :goto_0
    if-ltz v7, :cond_6

    .line 181
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    iget-object v8, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v9, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 182
    invoke-interface {v9, v8}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v9

    .line 183
    iget-wide v10, v8, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v24, -0x1

    cmp-long v18, v10, v24

    if-nez v18, :cond_2

    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 186
    invoke-interface {v5, v9}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide v18

    cmp-long v5, v18, v24

    if-eqz v5, :cond_2

    .line 188
    iget-wide v10, v8, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long v10, v18, v10

    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    move/from16 v26, v7

    .line 191
    iget-wide v6, v8, Landroidx/media3/datasource/DataSpec;->position:J

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    .line 192
    invoke-interface/range {v18 .. v23}, Landroidx/media3/datasource/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v5

    add-long/2addr v15, v5

    cmp-long v7, v10, v24

    if-eqz v7, :cond_4

    cmp-long v5, v10, v5

    if-nez v5, :cond_3

    add-int/lit8 v17, v17, 0x1

    move/from16 v7, v26

    .line 198
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move/from16 v7, v26

    :goto_1
    cmp-long v5, v12, v24

    if-eqz v5, :cond_5

    add-long/2addr v12, v10

    goto :goto_2

    :cond_4
    move/from16 v7, v26

    move-wide/from16 v12, v24

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    .line 212
    new-instance v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;

    move-object v10, v5

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;-><init>(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;JIJI)V

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 219
    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    :goto_4
    iget-boolean v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    if-nez v0, :cond_f

    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_8

    .line 223
    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->proceed(I)V

    .line 229
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 230
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 231
    iget-object v6, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 232
    iget-object v0, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    goto :goto_5

    :cond_9
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 234
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object v6

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    .line 237
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 238
    new-instance v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    invoke-direct {v8, v7, v6, v5, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;[B)V

    .line 241
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->addActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 242
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    move v6, v0

    :goto_6
    if-ltz v6, :cond_e

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 250
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_c

    .line 252
    :cond_a
    :try_start_1
    invoke-virtual {v7}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->get()Ljava/lang/Object;

    .line 253
    invoke-direct {v1, v6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 254
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 256
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 257
    instance-of v9, v0, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    if-eqz v9, :cond_b

    .line 259
    iget-object v0, v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 260
    invoke-direct {v1, v6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 261
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_7

    .line 262
    :cond_b
    instance-of v7, v0, Ljava/io/IOException;

    if-nez v7, :cond_d

    .line 266
    invoke-static {v0}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 263
    :cond_d
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 274
    :cond_e
    invoke-virtual {v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->blockUntilStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :cond_f
    const/4 v5, 0x0

    :goto_8
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_10

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/RunnableFutureTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x1

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_9
    if-ltz v0, :cond_11

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v2}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 287
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_11
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_12

    .line 290
    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    :goto_a
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_13

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/RunnableFutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_13
    const/4 v3, 0x1

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_14

    iget-object v3, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v3}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 287
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_14
    iget-object v1, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v1, :cond_15

    .line 290
    invoke-virtual {v1, v4}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    .line 292
    :cond_15
    throw v0
.end method

.method protected final execute(Landroidx/media3/common/util/RunnableFutureTask;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "TT;*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 360
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->run()V

    .line 362
    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 364
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 365
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 369
    invoke-static {p2}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 366
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz p2, :cond_2

    const/16 v0, -0x3e8

    .line 379
    invoke-virtual {p2, v0}, Landroidx/media3/common/PriorityTaskManager;->proceed(I)V

    .line 381
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->addActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 382
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 384
    :try_start_1
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 398
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 386
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 387
    instance-of v1, v0, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 389
    :cond_3
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    .line 393
    invoke-static {p2}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 398
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    goto :goto_0

    .line 390
    :cond_4
    :try_start_3
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 398
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 399
    throw p2

    .line 375
    :cond_5
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method protected final getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/datasource/DataSpec;",
            "Z)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    invoke-virtual {p0, v0, p3}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->execute(Landroidx/media3/common/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/offline/FilterableManifest;

    return-object p0
.end method

.method protected abstract getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "TM;Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 307
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->createDataSourceForRemovingDownload()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 v2, 0x1

    .line 309
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-result-object v1

    .line 310
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 311
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 312
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {v3, v4}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/Cache;->removeResource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :cond_0
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 320
    invoke-interface {v1, p0}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/media3/datasource/cache/Cache;->removeResource(Ljava/lang/String;)V

    goto :goto_2

    .line 315
    :catch_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 320
    invoke-interface {v2, p0}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Landroidx/media3/datasource/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 321
    throw v0
.end method
