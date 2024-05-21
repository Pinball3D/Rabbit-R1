.class public Lcom/airbnb/lottie/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    iput-boolean p6, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    return-object p0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    .line 54
    new-instance p2, Lcom/airbnb/lottie/animation/content/FillContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
