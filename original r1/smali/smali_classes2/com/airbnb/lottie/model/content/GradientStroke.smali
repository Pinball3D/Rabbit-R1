.class public Lcom/airbnb/lottie/model/content/GradientStroke;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

.field private final gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/airbnb/lottie/model/content/GradientType;

.field private final hidden:Z

.field private final joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final miterLimit:F

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

.field private final width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    iput p10, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->miterLimit:F

    iput-object p11, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    iput-object p12, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-boolean p13, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object p0
.end method

.method public getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    return-object p0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    return-object p0
.end method

.method public getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object p0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    return-object p0
.end method

.method public getMiterLimit()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->miterLimit:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    .line 108
    new-instance p2, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientStroke;)V

    return-object p2
.end method
