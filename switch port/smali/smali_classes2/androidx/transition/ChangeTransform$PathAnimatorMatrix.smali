.class Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 1

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 565
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 p2, 0x2

    .line 566
    aget p2, p1, p2

    iput p2, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    const/4 p2, 0x5

    .line 567
    aget p1, p1, p2

    iput p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 568
    invoke-direct {p0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method private setAnimationMatrix()V
    .locals 3

    iget-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    iget v2, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 583
    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 584
    aput v2, v0, v1

    iget-object v1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 585
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object p0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 586
    invoke-static {v0, p0}, Landroidx/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method setTranslation(Landroid/graphics/PointF;)V
    .locals 1

    .line 577
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 578
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 579
    invoke-direct {p0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method setValues([F)V
    .locals 3

    iget-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 572
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    invoke-direct {p0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method
