.class public Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->ensureInterpolatableKeyframes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static ensureInterpolatableKeyframe(Lcom/airbnb/lottie/value/Keyframe;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 27
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/GradientColor;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->mergePositions([F[F)[F

    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/model/content/GradientColor;->copyWithPositions([F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/model/content/GradientColor;->copyWithPositions([F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/value/Keyframe;->copyWith(Ljava/lang/Object;Ljava/lang/Object;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static ensureInterpolatableKeyframes(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->ensureInterpolatableKeyframe(Lcom/airbnb/lottie/value/Keyframe;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static mergePositions([F[F)[F
    .locals 6

    .line 37
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v1, v0, [F

    .line 38
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->sort([F)V

    const/high16 p0, 0x7fc00000    # Float.NaN

    move p1, v3

    move v2, p1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 44
    aget v4, v1, p1

    cmpl-float v5, v4, p0

    if-eqz v5, :cond_0

    .line 45
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 47
    aget p0, v1, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isStatic()Z
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
