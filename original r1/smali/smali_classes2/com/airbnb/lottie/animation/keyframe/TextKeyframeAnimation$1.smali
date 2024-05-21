.class Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->setStringValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field final synthetic val$documentData:Lcom/airbnb/lottie/model/DocumentData;

.field final synthetic val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

.field final synthetic val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;Lcom/airbnb/lottie/value/LottieFrameInfo;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->this$0:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iput-object p4, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    .line 30
    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Lcom/airbnb/lottie/model/DocumentData;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;)",
            "Lcom/airbnb/lottie/model/DocumentData;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartFrame()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndFrame()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v4, v4, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v5, v5, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getLinearKeyframeProgress()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v7

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result v8

    .line 33
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/LottieFrameInfo;->set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/airbnb/lottie/value/LottieFrameInfo;

    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 36
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    .line 38
    iget-object v4, v1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iget v5, v1, Lcom/airbnb/lottie/model/DocumentData;->size:F

    iget-object v6, v1, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    iget v7, v1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iget v8, v1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    iget v9, v1, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    iget v10, v1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iget v11, v1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iget v12, v1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    iget-boolean v13, v1, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    iget-object v14, v1, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    iget-object v15, v1, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    invoke-virtual/range {v2 .. v15}, Lcom/airbnb/lottie/model/DocumentData;->set(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p0

    return-object p0
.end method
