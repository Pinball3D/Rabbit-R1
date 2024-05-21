.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;
.super Ljava/lang/Object;
.source "CacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private bytesCached:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private endPosition:J

.field private volatile isCanceled:Z

.field private nextPosition:J

.field private final progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

.field private final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;[BLcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez p3, :cond_0

    const/high16 p3, 0x20000

    new-array p3, p3, [B

    :cond_0
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 81
    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    return-void
.end method

.method private getLength()J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 226
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long v2, v0, v2

    :goto_0
    return-wide v2
.end method

.method private onNewBytesCached(J)V
    .locals 9

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v2, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_0
    return-void
.end method

.method private onRequestEndPosition(J)V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_1
    return-void
.end method

.method private readBlockToCache(JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p1, p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    cmp-long v0, p3, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    cmp-long v5, p3, v3

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 156
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p3

    :try_start_0
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 158
    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 161
    invoke-static {p3}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    :cond_2
    move v1, v2

    move-wide p3, v3

    :goto_2
    if-nez v1, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 170
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p3

    :try_start_1
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 172
    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 174
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 175
    throw p1

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    cmp-long v1, p3, v3

    if-eqz v1, :cond_4

    add-long/2addr p3, p1

    .line 182
    :try_start_2
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_6

    :cond_4
    :goto_4
    move p3, v2

    move p4, p3

    :cond_5
    :goto_5
    const/4 v1, -0x1

    if-eq p3, v1, :cond_6

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    .line 187
    array-length v4, v3

    invoke-virtual {p3, v3, v2, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_5

    int-to-long v3, p3

    .line 189
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onNewBytesCached(J)V

    add-int/2addr p4, p3

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_7

    int-to-long v0, p4

    add-long/2addr p1, v0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 197
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 198
    throw p1

    :cond_7
    :goto_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 204
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->close()V

    int-to-long p0, p4

    return-wide p0
.end method

.method private throwIfCanceled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    if-nez p0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public cache()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 112
    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 113
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 114
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 116
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    :cond_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v4, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v9, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 124
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v4, v0, v2

    const-wide v5, 0x7fffffffffffffffL

    if-nez v4, :cond_5

    move-wide v11, v5

    goto :goto_3

    :cond_5
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    sub-long/2addr v0, v7

    move-wide v11, v0

    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    .line 127
    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v4, v0, v7

    if-lez v4, :cond_6

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    goto :goto_1

    :cond_6
    neg-long v0, v0

    cmp-long v4, v0, v5

    if-nez v4, :cond_7

    move-wide v0, v2

    :cond_7
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    .line 134
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->readBlockToCache(JJ)J

    move-result-wide v0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    return-void
.end method
