.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;,
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;,
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/google/android/exoplayer2/offline/FilterableManifest<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/offline/Downloader;"
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
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

.field private final cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile isCanceled:Z

.field private final manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final maxMergedSegmentStartTimeDiffUs:J

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final streamKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "TM;>;",
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

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "TM;>;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 140
    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 143
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 144
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 145
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getUpstreamPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 147
    invoke-static {p5, p6}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/SegmentDownloader;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method private addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "TT;*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 422
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 426
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    monitor-exit v0

    return-void

    .line 424
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 427
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static canMergeSegments(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;)Z
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 475
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 478
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

.method protected static getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 1

    .line 417
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method private static mergeSegments(Ljava/util/List;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;",
            "J)V"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 446
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 447
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 448
    iget-object v4, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 450
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    :goto_1
    if-eqz v6, :cond_3

    .line 451
    iget-wide v7, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v9, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    add-long/2addr v9, p2

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    iget-object v7, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v8, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 453
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->canMergeSegments(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    .line 459
    :cond_1
    iget-object v4, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_2

    goto :goto_2

    .line 461
    :cond_2
    iget-object v4, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long v9, v7, v3

    .line 462
    :goto_2
    iget-object v3, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v3

    .line 464
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-direct {v5, v6, v7, v3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 463
    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 454
    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    return-void
.end method

.method private removeActiveRunnable(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 437
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 438
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 431
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
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

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 294
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 296
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 297
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
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

.method public final download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 153
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 154
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v4, -0x3e8

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 159
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 161
    invoke-virtual {v1, v0, v7, v5}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 163
    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    .line 165
    :cond_1
    invoke-virtual {v1, v0, v7, v5}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v7, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    .line 170
    invoke-static {v0, v7, v8, v9}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->mergeSegments(Ljava/util/List;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;J)V

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    const-wide/16 v8, 0x0

    move/from16 v17, v5

    move-wide v12, v8

    move-wide v15, v12

    :goto_0
    if-ltz v7, :cond_6

    .line 178
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v8, v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v9, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 179
    invoke-interface {v9, v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v9

    .line 180
    iget-wide v10, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v24, -0x1

    cmp-long v18, v10, v24

    if-nez v18, :cond_2

    iget-object v5, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 183
    invoke-interface {v5, v9}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v18

    cmp-long v5, v18, v24

    if-eqz v5, :cond_2

    .line 185
    iget-wide v10, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long v10, v18, v10

    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move/from16 v26, v7

    .line 188
    iget-wide v6, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    .line 189
    invoke-interface/range {v18 .. v23}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v5

    add-long/2addr v15, v5

    cmp-long v7, v10, v24

    if-eqz v7, :cond_4

    cmp-long v5, v10, v5

    if-nez v5, :cond_3

    add-int/lit8 v17, v17, 0x1

    move/from16 v7, v26

    .line 195
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

    .line 209
    new-instance v5, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;

    move-object v10, v5

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;-><init>(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;JIJI)V

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 216
    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    :goto_4
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez v0, :cond_f

    .line 217
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_8

    .line 220
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 226
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 227
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 228
    iget-object v6, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 229
    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    goto :goto_5

    :cond_9
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v6

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    .line 234
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 235
    new-instance v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    invoke-direct {v8, v7, v6, v5, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;-><init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;[B)V

    .line 238
    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 239
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    move v6, v0

    :goto_6
    if-ltz v6, :cond_e

    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 247
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_c

    .line 249
    :cond_a
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->get()Ljava/lang/Object;

    .line 250
    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 251
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 253
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 254
    instance-of v9, v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v9, :cond_b

    .line 256
    iget-object v0, v7, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 257
    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 258
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_7

    .line 259
    :cond_b
    instance-of v7, v0, Ljava/io/IOException;

    if-nez v7, :cond_d

    .line 263
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 260
    :cond_d
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 271
    :cond_e
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->blockUntilStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :cond_f
    const/4 v5, 0x0

    :goto_8
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_10

    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x1

    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_9
    if-ltz v0, :cond_11

    iget-object v2, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 284
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_11
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_12

    .line 287
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    :goto_a
    iget-object v2, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_13

    iget-object v2, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_13
    const/4 v3, 0x1

    iget-object v2, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_14

    iget-object v3, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 284
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_14
    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_15

    .line 287
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 289
    :cond_15
    throw v0
.end method

.method protected final execute(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
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

    .line 357
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->run()V

    .line 359
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 361
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 362
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 366
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 363
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p2, :cond_2

    const/16 v0, -0x3e8

    .line 376
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 378
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 379
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 381
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 383
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 384
    instance-of v1, v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 386
    :cond_3
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    .line 390
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    goto :goto_0

    .line 387
    :cond_4
    :try_start_3
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 396
    throw p2

    .line 372
    :cond_5
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method protected final getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Z)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;-><init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->execute(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    return-object p0
.end method

.method protected abstract getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "TM;Z)",
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
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 304
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForRemovingDownload()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v2, 0x1

    .line 306
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v1

    .line 307
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 308
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 317
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V

    goto :goto_2

    .line 312
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
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 317
    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 318
    throw v0
.end method
