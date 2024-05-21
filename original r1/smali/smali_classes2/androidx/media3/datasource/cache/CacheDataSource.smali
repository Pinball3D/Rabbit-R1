.class public final Landroidx/media3/datasource/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CacheDataSource$EventListener;,
        Landroidx/media3/datasource/cache/CacheDataSource$CacheIgnoredReason;,
        Landroidx/media3/datasource/cache/CacheDataSource$Flags;,
        Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    }
.end annotation


# static fields
.field public static final CACHE_IGNORED_REASON_ERROR:I = 0x0

.field public static final CACHE_IGNORED_REASON_UNSET_LENGTH:I = 0x1

.field private static final CACHE_NOT_IGNORED:I = -0x1

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field private static final MIN_READ_BEFORE_CHECKING_CACHE:J = 0x19000L


# instance fields
.field private actualUri:Landroid/net/Uri;

.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

.field private final cacheReadDataSource:Landroidx/media3/datasource/DataSource;

.field private final cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

.field private checkCachePosition:J

.field private currentDataSource:Landroidx/media3/datasource/DataSource;

.field private currentDataSourceBytesRead:J

.field private currentDataSpec:Landroidx/media3/datasource/DataSpec;

.field private currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

.field private currentRequestIgnoresCache:Z

.field private final eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private readPosition:J

.field private requestDataSpec:Landroidx/media3/datasource/DataSpec;

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 434
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;I)V
    .locals 7

    .line 448
    new-instance v3, Landroidx/media3/datasource/FileDataSource;

    invoke-direct {v3}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    new-instance v4, Landroidx/media3/datasource/cache/CacheDataSink;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Landroidx/media3/datasource/cache/CacheDataSink;-><init>(Landroidx/media3/datasource/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 479
    invoke-direct/range {v0 .. v7}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move v6, p5

    move-object/from16 v9, p6

    .line 513
    invoke-direct/range {v0 .. v9}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    iput-object p3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    sget-object p5, Landroidx/media3/datasource/cache/CacheKeyFactory;->DEFAULT:Landroidx/media3/datasource/cache/CacheKeyFactory;

    :goto_0
    iput-object p5, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->blockOnCache:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_2

    move p1, p5

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_3

    move p3, p5

    :cond_3
    iput-boolean p3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    if-eqz p7, :cond_4

    .line 544
    new-instance p3, Landroidx/media3/datasource/PriorityDataSource;

    invoke-direct {p3, p2, p7, p8}, Landroidx/media3/datasource/PriorityDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/common/PriorityTaskManager;I)V

    move-object p2, p3

    :cond_4
    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-eqz p4, :cond_5

    .line 551
    new-instance p1, Landroidx/media3/datasource/TeeDataSource;

    invoke-direct {p1, p2, p4}, Landroidx/media3/datasource/TeeDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;)V

    :cond_5
    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_3

    .line 554
    :cond_6
    sget-object p2, Landroidx/media3/datasource/PlaceholderDataSource;->INSTANCE:Landroidx/media3/datasource/PlaceholderDataSource;

    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    :goto_3
    iput-object p9, p0, Landroidx/media3/datasource/cache/CacheDataSource;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheDataSource$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p9}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private closeCurrentSource()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 851
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 856
    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v3, v2}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    .line 859
    :cond_2
    throw v0
.end method

.method private static getRedirectedUriOrDefault(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 826
    invoke-interface {p0, p1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/datasource/cache/ContentMetadata;->getRedirectedUri(Landroidx/media3/datasource/cache/ContentMetadata;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method

.method private handleBeforeThrow(Ljava/lang/Throwable;)V
    .locals 1

    .line 863
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Landroidx/media3/datasource/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->seenCacheError:Z

    :cond_1
    return-void
.end method

.method private isBypassingCache()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReadingFromCache()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReadingFromUpstream()Z
    .locals 0

    .line 831
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromCache()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isWritingToCache()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyBytesRead()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 886
    invoke-interface {v1}, Landroidx/media3/datasource/cache/Cache;->getCacheSpace()J

    move-result-wide v1

    iget-wide v5, p0, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v1, v2, v5, v6}, Landroidx/media3/datasource/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    iput-wide v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_0
    return-void
.end method

.method private notifyCacheIgnored(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    if-eqz p0, :cond_0

    .line 880
    invoke-interface {p0, p1}, Landroidx/media3/datasource/cache/CacheDataSource$EventListener;->onCacheIgnored(I)V

    :cond_0
    return-void
.end method

.method private openNextSource(Landroidx/media3/datasource/DataSpec;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 708
    iget-object v2, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move-object v3, v9

    goto :goto_0

    :cond_0
    iget-boolean v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-wide v5, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v2

    .line 713
    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->startReadWrite(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/CacheSpan;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 715
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 716
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_1
    iget-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-wide v5, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v2

    .line 719
    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/CacheSpan;

    move-result-object v3

    :goto_0
    const-wide/16 v4, -0x1

    if-nez v3, :cond_2

    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v7, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    invoke-virtual {v7, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    goto/16 :goto_2

    .line 730
    :cond_2
    iget-boolean v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->isCached:Z

    if-eqz v6, :cond_4

    .line 732
    iget-object v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v6}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 733
    iget-wide v7, v3, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    sub-long/2addr v10, v7

    .line 735
    iget-wide v12, v3, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    sub-long/2addr v12, v10

    iget-wide v14, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v16, v14, v4

    if-eqz v16, :cond_3

    .line 737
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 741
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v14

    .line 742
    invoke-virtual {v14, v6}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 743
    invoke-virtual {v6, v7, v8}, Landroidx/media3/datasource/DataSpec$Builder;->setUriPositionOffset(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 744
    invoke-virtual {v6, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 745
    invoke-virtual {v6, v12, v13}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 746
    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    .line 751
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/datasource/cache/CacheSpan;->isOpenEnded()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_1

    .line 754
    :cond_5
    iget-wide v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v8, v10, v4

    if-eqz v8, :cond_6

    .line 756
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 760
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v8, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 765
    invoke-interface {v8, v3}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    move-object v3, v9

    :goto_2
    iget-boolean v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v8, :cond_8

    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v6, v8, :cond_8

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_3

    :cond_8
    const-wide v10, 0x7fffffffffffffffL

    :goto_3
    iput-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->checkCachePosition:J

    if-eqz p2, :cond_b

    .line 775
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isBypassingCache()Z

    move-result v8

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v6, v8, :cond_9

    return-void

    .line 782
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 784
    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/CacheSpan;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheSpan;->isHoleSpan()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 786
    invoke-interface {v0, v3}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    .line 788
    :cond_a
    throw v2

    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    .line 792
    invoke-virtual {v3}, Landroidx/media3/datasource/cache/CacheSpan;->isHoleSpan()Z

    move-result v8

    if-eqz v8, :cond_c

    iput-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    :cond_c
    iput-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iput-object v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    .line 798
    invoke-interface {v6, v7}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v10

    .line 801
    new-instance v3, Landroidx/media3/datasource/cache/ContentMetadataMutations;

    invoke-direct {v3}, Landroidx/media3/datasource/cache/ContentMetadataMutations;-><init>()V

    .line 802
    iget-wide v7, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_d

    cmp-long v4, v10, v4

    if-eqz v4, :cond_d

    iput-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    add-long/2addr v4, v10

    .line 804
    invoke-static {v3, v4, v5}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->setContentLength(Landroidx/media3/datasource/cache/ContentMetadataMutations;J)Landroidx/media3/datasource/cache/ContentMetadataMutations;

    .line 806
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 807
    invoke-interface {v6}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 808
    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    iget-object v9, v1, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 809
    :cond_e
    invoke-static {v3, v9}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->setRedirectedUri(Landroidx/media3/datasource/cache/ContentMetadataMutations;Landroid/net/Uri;)Landroidx/media3/datasource/cache/ContentMetadataMutations;

    .line 811
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 812
    invoke-interface {v0, v2, v3}, Landroidx/media3/datasource/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V

    :cond_10
    return-void
.end method

.method private setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    .line 818
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    new-instance v0, Landroidx/media3/datasource/cache/ContentMetadataMutations;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/ContentMetadataMutations;-><init>()V

    iget-wide v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    .line 820
    invoke-static {v0, v1, v2}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->setContentLength(Landroidx/media3/datasource/cache/ContentMetadataMutations;J)Landroidx/media3/datasource/cache/ContentMetadataMutations;

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 821
    invoke-interface {p0, p1, v0}, Landroidx/media3/datasource/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V

    :cond_0
    return-void
.end method

.method private shouldIgnoreCacheForRequest(Landroidx/media3/datasource/DataSpec;)I
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->seenCacheError:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz p0, :cond_1

    .line 871
    iget-wide p0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    .line 572
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    .line 573
    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 574
    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->requestDataSpec:Landroidx/media3/datasource/DataSpec;

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    .line 682
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->notifyBytesRead()V

    .line 684
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 686
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 687
    throw v0
.end method

.method public getCache()Landroidx/media3/datasource/cache/Cache;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    return-object p0
.end method

.method public getCacheKeyFactory()Landroidx/media3/datasource/cache/CacheKeyFactory;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    return-object p0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 672
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 673
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 674
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 580
    invoke-interface {v0, p1}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setKey(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->requestDataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 583
    iget-object v3, v1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v2, v0, v3}, Landroidx/media3/datasource/cache/CacheDataSource;->getRedirectedUriOrDefault(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 584
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    .line 586
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/CacheDataSource;->shouldIgnoreCacheForRequest(Landroidx/media3/datasource/DataSpec;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v3, :cond_1

    .line 589
    invoke-direct {p0, v2}, Landroidx/media3/datasource/cache/CacheDataSource;->notifyCacheIgnored(I)V

    :cond_1
    iget-boolean v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-eqz v2, :cond_2

    iput-wide v7, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 595
    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_4

    .line 597
    iget-wide v9, p1, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v2, v9

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    goto :goto_1

    .line 599
    :cond_3
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p1

    .line 604
    :cond_4
    :goto_1
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_6

    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v7

    if-nez v0, :cond_5

    .line 607
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_2

    .line 608
    :cond_5
    iget-wide v9, p1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    :cond_6
    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v5

    if-gtz v0, :cond_7

    cmp-long v0, v2, v7

    if-nez v0, :cond_8

    .line 611
    :cond_7
    invoke-direct {p0, v1, v4}, Landroidx/media3/datasource/cache/CacheDataSource;->openNextSource(Landroidx/media3/datasource/DataSpec;Z)V

    .line 613
    :cond_8
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_9

    iget-wide p0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_3

    :cond_9
    iget-wide p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return-wide p0

    :catchall_0
    move-exception p1

    .line 615
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 616
    throw p1
.end method

.method public read([BII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, -0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    iget-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->requestDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 628
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/DataSpec;

    iget-object v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 629
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/datasource/DataSpec;

    :try_start_0
    iget-wide v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->checkCachePosition:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    .line 632
    invoke-direct {p0, v3, v8}, Landroidx/media3/datasource/cache/CacheDataSource;->openNextSource(Landroidx/media3/datasource/DataSpec;Z)V

    :cond_2
    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 634
    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/datasource/DataSource;

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-interface {v8, v9, v10, v0}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v8

    const-wide/16 v11, -0x1

    if-eq v8, v4, :cond_4

    .line 636
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_3
    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v11

    if-eqz v0, :cond_7

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_0

    .line 644
    :cond_4
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-wide v13, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v13, v11

    if-eqz v4, :cond_5

    iget-wide v13, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    iget-wide v11, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v13, v11

    if-gez v4, :cond_6

    .line 650
    :cond_5
    iget-object v0, v3, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CacheDataSource;->setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-wide v11, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v4, v11, v5

    if-gtz v4, :cond_8

    const-wide/16 v4, -0x1

    cmp-long v4, v11, v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    return v8

    .line 652
    :cond_8
    :goto_1
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->closeCurrentSource()V

    .line 653
    invoke-direct {p0, v3, v2}, Landroidx/media3/datasource/cache/CacheDataSource;->openNextSource(Landroidx/media3/datasource/DataSpec;Z)V

    .line 654
    invoke-virtual/range {p0 .. p3}, Landroidx/media3/datasource/cache/CacheDataSource;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 658
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 659
    throw v0
.end method
