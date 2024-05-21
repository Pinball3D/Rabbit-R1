.class public Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "ImageLayer.java"


# instance fields
.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final dst:Landroid/graphics/Rect;

.field private imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 25
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->getLottieImageAssetForId(Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->getBitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    if-eqz p0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 94
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->IMAGE:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 107
    :cond_2
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    :cond_3
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    if-nez v1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieDrawable;->getMaintainOriginalImageBounds()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 52
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    if-eqz p2, :cond_0

    .line 64
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result p2

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 65
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method
