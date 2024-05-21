.class public Lcom/airbnb/lottie/animation/content/RoundedCornersContent;
.super Ljava/lang/Object;
.source "RoundedCornersContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/ShapeModifierContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final ROUNDED_CORNER_MAGIC_NUMBER:F = 0.5519f


# instance fields
.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private shapeData:Lcom/airbnb/lottie/model/content/ShapeData;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RoundedCorners;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 32
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RoundedCorners;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RoundedCorners;->getCornerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object p1

    invoke-interface {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 34
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 35
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private static floorDiv(II)I
    .locals 2

    .line 218
    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int/2addr p1, v0

    if-eq p1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private static floorMod(II)I
    .locals 1

    .line 211
    invoke-static {p0, p1}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method private getShapeData(Lcom/airbnb/lottie/model/content/ShapeData;)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 10

    .line 179
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v1

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ltz v2, :cond_5

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v7, v2, -0x1

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v8

    :goto_1
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    move-object v7, v8

    goto :goto_2

    .line 186
    :cond_1
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v7

    .line 187
    :goto_2
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v6

    .line 189
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    if-ne v2, v9, :cond_3

    :cond_2
    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v4

    .line 190
    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v9, :cond_4

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    if-eqz p1, :cond_6

    .line 196
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v5, :cond_8

    .line 197
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v4

    :goto_5
    if-ge v0, v5, :cond_7

    .line 199
    new-instance v2, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v2}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 201
    :cond_7
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v2, v4, p1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    :cond_8
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 203
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/model/content/ShapeData;->setClosed(Z)V

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRoundedCorners()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    return-object p0
.end method

.method public modifyShape(Lcom/airbnb/lottie/model/content/ShapeData;)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 17

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    return-object p1

    :cond_0
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 79
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    return-object p1

    .line 84
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->getShapeData(Lcom/airbnb/lottie/model/content/ShapeData;)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object v1

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 86
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v3

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 105
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v9, v6, -0x1

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v10, v6, -0x2

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v10

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v11

    :goto_1
    if-nez v6, :cond_3

    if-nez v4, :cond_3

    move-object v12, v11

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v12

    .line 110
    :goto_2
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v13

    .line 111
    invoke-virtual {v10}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v10

    .line 112
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v14

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    if-ne v6, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 116
    :cond_5
    :goto_3
    invoke-virtual {v12, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v13, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v15, :cond_7

    .line 118
    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v8, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v8

    .line 119
    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    .line 120
    iget v9, v14, Landroid/graphics/PointF;->x:F

    iget v12, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v12

    .line 121
    iget v12, v14, Landroid/graphics/PointF;->y:F

    iget v13, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    move v13, v4

    float-to-double v4, v5

    move-object v15, v0

    move-object/from16 v16, v1

    float-to-double v0, v8

    .line 123
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v4, v9

    float-to-double v8, v12

    .line 124
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    div-float v0, v2, v0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 126
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v1, v2, v1

    .line 127
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 130
    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v10, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    .line 131
    iget v5, v11, Landroid/graphics/PointF;->y:F

    iget v8, v10, Landroid/graphics/PointF;->y:F

    iget v9, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v0

    add-float/2addr v5, v8

    .line 132
    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v8, v14, Landroid/graphics/PointF;->x:F

    iget v9, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float/2addr v0, v8

    .line 133
    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v14, Landroid/graphics/PointF;->y:F

    iget v10, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    .line 136
    iget v1, v11, Landroid/graphics/PointF;->x:F

    sub-float v1, v4, v1

    const v9, 0x3f0d4952    # 0.5519f

    mul-float/2addr v1, v9

    sub-float v1, v4, v1

    .line 137
    iget v10, v11, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v10

    mul-float/2addr v10, v9

    sub-float v10, v5, v10

    .line 138
    iget v12, v11, Landroid/graphics/PointF;->x:F

    sub-float v12, v0, v12

    mul-float/2addr v12, v9

    sub-float v12, v0, v12

    .line 139
    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v8, v11

    mul-float/2addr v11, v9

    sub-float v9, v8, v11

    add-int/lit8 v11, v7, -0x1

    .line 143
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v11, v14}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v11

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 144
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 145
    invoke-virtual {v11, v4, v5}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 146
    invoke-virtual {v11, v4, v5}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    move-object/from16 v11, v16

    if-nez v6, :cond_6

    .line 148
    invoke-virtual {v11, v4, v5}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 150
    :cond_6
    invoke-virtual {v14, v1, v10}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    add-int/lit8 v1, v7, 0x1

    .line 154
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 155
    invoke-virtual {v14, v12, v9}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 156
    invoke-virtual {v14, v0, v8}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 157
    invoke-virtual {v1, v0, v8}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_4

    :cond_7
    move-object v15, v0

    move-object v11, v1

    move v13, v4

    add-int/lit8 v0, v7, -0x1

    .line 162
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 163
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 164
    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 165
    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 166
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v4}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object v1, v11

    move v4, v13

    move-object v0, v15

    goto/16 :goto_0

    :cond_8
    move-object v11, v1

    return-object v11
.end method

.method public onValueChanged()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method
