.class public Lcom/airbnb/lottie/model/layer/SolidLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SolidLayer.java"


# instance fields
.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final points:[F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 23
    new-instance p1, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {p1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    const/4 p0, 0x0

    .line 34
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
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

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 104
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 106
    :cond_2
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    :cond_3
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 40
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 49
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    if-nez v1, :cond_3

    const/16 v1, 0x64

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p3, v0

    mul-float/2addr p3, v2

    float-to-int p3, p3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_4
    if-lez p3, :cond_5

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    aput v1, p3, v0

    const/4 v2, 0x1

    .line 61
    aput v1, p3, v2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 62
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    aput v3, p3, v4

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v3, 0x3

    .line 63
    aput v1, p3, v3

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 64
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x4

    aput v5, p3, v6

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 65
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x5

    aput v5, p3, v7

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    const/4 v5, 0x6

    .line 66
    aput v1, p3, v5

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 67
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v8, 0x7

    aput v1, p3, v8

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 71
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 73
    aget v1, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 74
    aget v1, p3, v4

    aget p3, p3, v3

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 75
    aget v1, p3, v6

    aget p3, p3, v7

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 76
    aget v1, p3, v5

    aget p3, p3, v8

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 77
    aget v0, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 85
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 87
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
