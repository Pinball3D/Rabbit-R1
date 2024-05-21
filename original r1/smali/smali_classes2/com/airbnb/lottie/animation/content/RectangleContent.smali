.class public Lcom/airbnb/lottie/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;


# instance fields
.field private final cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RectangleShape;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 40
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 43
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object p1

    invoke-interface {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 44
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getCornerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p3

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p3

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 47
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 49
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 51
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 68
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->RECTANGLE_SIZE:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 173
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 174
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 175
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->CORNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 177
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 15

    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 99
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 100
    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 101
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    .line 103
    :cond_2
    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v4

    :goto_0
    cmpl-float v6, v4, v5

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v6, :cond_3

    .line 105
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 107
    :cond_3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_4

    move v4, v6

    :cond_4
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 113
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 115
    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 117
    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v0

    sub-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v7, v4, v5

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    if-lez v7, :cond_5

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 120
    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v2

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    sub-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v2

    iget v14, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v0

    invoke-virtual {v10, v11, v13, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 124
    invoke-virtual {v10, v11, v5, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_5
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 127
    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    add-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_6

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 130
    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v2

    add-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v0

    invoke-virtual {v5, v10, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 134
    invoke-virtual {v5, v10, v9, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 137
    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_7

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 140
    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    iget v12, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v2

    mul-float v13, v4, v3

    add-float/2addr v12, v13

    iget v14, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v0

    add-float/2addr v14, v13

    invoke-virtual {v5, v10, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v11, 0x43340000    # 180.0f

    .line 144
    invoke-virtual {v5, v10, v11, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_7
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 147
    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    sub-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_8

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 150
    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v2

    mul-float/2addr v4, v3

    sub-float/2addr v7, v4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    iget v2, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v4

    invoke-virtual {v5, v7, v3, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    .line 154
    invoke-virtual {v0, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 158
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/RectangleContent;->invalidate()V

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 73
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 74
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 75
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 76
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 78
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 79
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    .line 80
    :cond_0
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    if-eqz v1, :cond_1

    .line 81
    check-cast v0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->getRoundedCorners()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->roundedCornersAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
