.class public Lcom/airbnb/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final isReversed:Z

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "ZZ)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    iput-boolean p11, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    return-void
.end method


# virtual methods
.method public getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    return p0
.end method

.method public isReversed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    return p0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    .line 109
    new-instance p2, Lcom/airbnb/lottie/animation/content/PolystarContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V

    return-object p2
.end method
