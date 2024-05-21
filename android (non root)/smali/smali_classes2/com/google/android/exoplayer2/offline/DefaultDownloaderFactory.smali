.class public Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;
.super Ljava/lang/Object;
.source "DefaultDownloaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloaderFactory;


# static fields
.field private static final CONSTRUCTORS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/Downloader;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->createDownloaderConstructors()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->CONSTRUCTORS:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    new-instance v0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 66
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)Lcom/google/android/exoplayer2/offline/Downloader;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->CONSTRUCTORS:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 98
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    .line 99
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x2

    aput-object p0, v1, p1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/offline/Downloader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to instantiate downloader for content type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Module missing for content type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createDownloaderConstructors()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/Downloader;",
            ">;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    const-string v1, "com.google.android.exoplayer2.source.dash.offline.DashDownloader"

    .line 116
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "com.google.android.exoplayer2.source.hls.offline.HlsDownloader"

    .line 125
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v1, "com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader"

    .line 133
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-object v0
.end method

.method private static getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/Downloader;",
            ">;"
        }
    .end annotation

    .line 143
    :try_start_0
    const-class v0, Lcom/google/android/exoplayer2/offline/Downloader;

    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/google/android/exoplayer2/MediaItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloader constructor missing"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/Downloader;
    .locals 3

    .line 72
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 81
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 82
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)Lcom/google/android/exoplayer2/offline/Downloader;

    move-result-object p0

    return-object p0
.end method
