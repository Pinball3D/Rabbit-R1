.class public Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;
.super Ljava/lang/Object;
.source "SkiaPooledImageRegionDecoder.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;
    }
.end annotation


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final RESOURCE_PREFIX:Ljava/lang/String; = "android.resource://"

.field private static final TAG:Ljava/lang/String; = "SkiaPooledImageRegionDecoder"

.field private static debug:Z = false


# instance fields
.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private context:Landroid/content/Context;

.field private final decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

.field private fileLength:J

.field private final imageDimensions:Landroid/graphics/Point;

.field private final lazyInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;-><init>(Landroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;-><init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    .line 77
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 94
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    return-object p0
.end method

.method static synthetic access$300(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->initialiseDecoder()V

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->TAG:Ljava/lang/String;

    .line 470
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getNumCoresOldPhones()I
    .locals 2

    .line 449
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    new-instance v1, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;

    invoke-direct {v1, p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;-><init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 451
    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private getNumberOfCores()I
    .locals 0

    .line 430
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    return p0
.end method

.method private initialiseDecoder()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    .line 159
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource://"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    .line 164
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 165
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 166
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 168
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    .line 173
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 174
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 175
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v2, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    .line 178
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    :try_start_0
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move v0, v3

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 185
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    const-string v1, "file:///android_asset/"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x16

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 194
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v1, "file://"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 203
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 215
    invoke-static {v0, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    const-string v6, "r"

    .line 217
    invoke-virtual {v1, v3, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_4
    :cond_7
    if-eqz v0, :cond_8

    .line 226
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_8
    move-object v0, v2

    :goto_2
    iput-wide v4, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    .line 232
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 233
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v1, :cond_9

    .line 236
    invoke-static {v1, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$600(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 239
    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_a

    .line 226
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_a
    throw p0
.end method

.method private isLowMemory()Z
    .locals 1

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    const-string v0, "activity"

    .line 458
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    .line 460
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 461
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 462
    iget-boolean p0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private lazyInit()V
    .locals 4

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Starting lazy init of additional decoders"

    .line 128
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;

    invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;-><init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug:Z

    return-void
.end method


# virtual methods
.method protected allowAdditionalDecoder(IJ)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const-string p1, "No additional decoders allowed, reached hard limit (4)"

    .line 324
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    :cond_0
    int-to-long v2, p1

    mul-long/2addr v2, p2

    const-wide/32 p2, 0x1400000

    cmp-long p2, v2, p2

    if-lez p2, :cond_1

    const-string p1, "No additional encoders allowed, reached hard memory limit (20Mb)"

    .line 327
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->getNumberOfCores()I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No additional encoders allowed, limited by CPU cores ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->getNumberOfCores()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    .line 332
    :cond_2
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->isLowMemory()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "No additional encoders allowed, memory is low"

    .line 333
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    .line 336
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Additional decoder allowed, current count is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", estimated native memory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/32 p2, 0x100000

    div-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Mb"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decode region "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_1

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInit()V

    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 257
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v0, :cond_6

    .line 260
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$700(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_5

    .line 263
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 264
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 265
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 266
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 267
    invoke-virtual {v0, p1, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    :try_start_2
    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    .line 275
    invoke-static {p2, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$800(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 281
    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 269
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Skia image decoder returned null bitmap - image format may not be supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    :try_start_4
    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    .line 275
    invoke-static {p2, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$800(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V

    :cond_4
    throw p1

    :cond_5
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    invoke-static {p1, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$800(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V

    .line 279
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot decode region after decoder has been recycled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 281
    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    .line 118
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->initialiseDecoder()V

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    return-object p0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v0, :cond_0

    .line 291
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$900(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)Z

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
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 300
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v0, :cond_0

    .line 303
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$1000(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 309
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 309
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
