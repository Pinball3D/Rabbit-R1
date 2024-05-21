.class public Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Lcom/airbnb/lottie/model/DocumentData;",
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
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;F)",
            "Lcom/airbnb/lottie/model/DocumentData;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_2

    .line 17
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v2, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    move v3, v0

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    .line 18
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    :goto_1
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    move-object v5, p1

    .line 19
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getProgress()F

    move-result v8

    move v6, p2

    .line 17
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    return-object p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    .line 20
    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    return-object p0

    .line 21
    :cond_4
    :goto_2
    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    return-object p0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p0

    return-object p0
.end method

.method public setStringValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    .line 29
    new-instance v1, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/DocumentData;-><init>()V

    .line 30
    new-instance v2, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;-><init>(Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;Lcom/airbnb/lottie/value/LottieFrameInfo;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/model/DocumentData;)V

    invoke-super {p0, v2}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method
