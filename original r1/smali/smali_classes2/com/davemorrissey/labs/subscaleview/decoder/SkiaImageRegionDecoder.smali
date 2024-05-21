.class public Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;
.super Ljava/lang/Object;
.source "SkiaImageRegionDecoder.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final RESOURCE_PREFIX:Ljava/lang/String; = "android.resource://"


# instance fields
.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private decoder:Landroid/graphics/BitmapRegionDecoder;

.field private final decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;-><init>(Landroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 54
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-void
.end method

.method private getDecodeLock()Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 159
    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->getDecodeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 120
    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 121
    invoke-virtual {p2, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->getDecodeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 123
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Skia image decoder returned null bitmap - image format may not be supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot decode region after decoder has been recycled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 130
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->getDecodeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource://"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    .line 80
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 81
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "drawable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 83
    invoke-virtual {v1, p2, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    .line 84
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :try_start_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move p2, v3

    .line 91
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_2

    :cond_3
    const-string v1, "file:///android_asset/"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0x16

    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_2

    :cond_4
    const-string v1, "file://"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x7

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 100
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 102
    invoke-static {v0, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 105
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    :catch_1
    :cond_6
    :goto_2
    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_7

    .line 105
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_7
    throw p0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 141
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 143
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 146
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 146
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
