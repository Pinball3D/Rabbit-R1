.class public Lcom/airbnb/lottie/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final imagesFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 38
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 39
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    return-void

    .line 44
    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    .line 145
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 146
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    if-eqz v2, :cond_3

    .line 82
    invoke-interface {v2, v0}, Lcom/airbnb/lottie/ImageAssetDelegate;->fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-nez v2, :cond_4

    return-object v1

    .line 95
    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 97
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v6, 0xa0

    .line 98
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v6, "data:"

    .line 100
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "base64,"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    const/16 v0, 0x2c

    .line 104
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    array-length v1, v0

    invoke-static {v0, v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "data URL did not have correct base64 format."

    .line 106
    invoke-static {p1, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 126
    :try_start_2
    invoke-static {v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v2, :cond_6

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Decoded image `"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "` is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 135
    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to decode image `"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "`."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 116
    :cond_7
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    const-string p1, "Unable to open asset."

    .line 121
    invoke-static {p1, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getImageAssetById(Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 67
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieImageAsset;

    return-object p0
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 140
    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 56
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v0
.end method
