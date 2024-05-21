.class public final Landroidx/media3/datasource/cache/CacheWriter;
.super Ljava/lang/Object;
.source "CacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private bytesCached:J

.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

.field private final dataSpec:Landroidx/media3/datasource/DataSpec;

.field private endPosition:J

.field private volatile isCanceled:Z

.field private nextPosition:J

.field private final progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

.field private final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/datasource/DataSpec;[BLandroidx/media3/datasource/cache/CacheWriter$ProgressListener;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 77
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CacheDataSource;->getCache()Landroidx/media3/datasource/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-nez p3, :cond_0

    const/high16 p3, 0x20000

    new-array p3, p3, [B

    :cond_0
    iput-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->temporaryBuffer:[B

    iput-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    .line 82
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CacheDataSource;->getCacheKeyFactory()Landroidx/media3/datasource/cache/CacheKeyFactory;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 83
    iget-wide p1, p2, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    return-void
.end method

.method private getLength()J
    .locals 5

    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 228
    iget-wide v2, p0, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long v2, v0, v2

    :goto_0
    return-wide v2
.end method

.method private onNewBytesCached(J)V
    .locals 9

    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v2, :cond_0

    .line 223
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_0
    return-void
.end method

.method private onRequestEndPosition(J)V
    .locals 8

    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v1, :cond_1

    .line 216
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

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

    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

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

    iget-object v5, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 158
    invoke-virtual {v5}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p3

    :try_start_0
    iget-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 160
    invoke-virtual {p4, p3}, Landroidx/media3/datasource/cache/CacheDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 163
    invoke-static {p3}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    :cond_2
    move v1, v2

    move-wide p3, v3

    :goto_2
    if-nez v1, :cond_3

    .line 170
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    iget-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 172
    invoke-virtual {p3}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, v3, v4}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p3

    :try_start_1
    iget-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 174
    invoke-virtual {p4, p3}, Landroidx/media3/datasource/cache/CacheDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 176
    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 177
    throw p1

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    cmp-long v1, p3, v3

    if-eqz v1, :cond_4

    add-long/2addr p3, p1

    .line 184
    :try_start_2
    invoke-direct {p0, p3, p4}, Landroidx/media3/datasource/cache/CacheWriter;->onRequestEndPosition(J)V

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

    .line 188
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    iget-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheWriter;->temporaryBuffer:[B

    .line 189
    array-length v4, v3

    invoke-virtual {p3, v3, v2, v4}, Landroidx/media3/datasource/cache/CacheDataSource;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_5

    int-to-long v3, p3

    .line 191
    invoke-direct {p0, v3, v4}, Landroidx/media3/datasource/cache/CacheWriter;->onNewBytesCached(J)V

    add-int/2addr p4, p3

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_7

    int-to-long v0, p4

    add-long/2addr p1, v0

    .line 196
    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/cache/CacheWriter;->onRequestEndPosition(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_6
    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 199
    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 200
    throw p1

    :cond_7
    :goto_7
    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 206
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->close()V

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

    iget-boolean p0, p0, Landroidx/media3/datasource/cache/CacheWriter;->isCanceled:Z

    if-nez p0, :cond_0

    return-void

    .line 233
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

    .line 112
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 114
    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v4, v4, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-interface/range {v0 .. v5}, Landroidx/media3/datasource/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 115
    iget-wide v0, v0, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 116
    iget-wide v0, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v4, v4, Landroidx/media3/datasource/DataSpec;->length:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 118
    invoke-interface {v0, v1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    :cond_1
    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    :goto_0
    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v4, :cond_2

    .line 122
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    const-wide/16 v9, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_2
    :goto_1
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 126
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v4, v0, v2

    const-wide v5, 0x7fffffffffffffffL

    if-nez v4, :cond_5

    move-wide v11, v5

    goto :goto_3

    :cond_5
    iget-wide v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    sub-long/2addr v0, v7

    move-wide v11, v0

    :goto_3
    iget-object v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v8, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-wide v9, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    .line 129
    invoke-interface/range {v7 .. v12}, Landroidx/media3/datasource/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v4, v0, v7

    if-lez v4, :cond_6

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    goto :goto_1

    :cond_6
    neg-long v0, v0

    cmp-long v4, v0, v5

    if-nez v4, :cond_7

    move-wide v0, v2

    :cond_7
    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    .line 136
    invoke-direct {p0, v4, v5, v0, v1}, Landroidx/media3/datasource/cache/CacheWriter;->readBlockToCache(JJ)J

    move-result-wide v0

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->isCanceled:Z

    return-void
.end method
