.class public Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/model/content/GradientColor;

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Lcom/airbnb/lottie/model/content/GradientColor;

    new-array v0, v1, [F

    new-array v1, v1, [I

    invoke-direct {p1, v0, v1}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    return-void
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;F)",
            "Lcom/airbnb/lottie/model/content/GradientColor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    .line 29
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-virtual {v0, v1, p1, p2}, Lcom/airbnb/lottie/model/content/GradientColor;->lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    return-object p0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p0

    return-object p0
.end method
