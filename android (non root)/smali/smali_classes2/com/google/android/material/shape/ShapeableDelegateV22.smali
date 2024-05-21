.class Lcom/google/android/material/shape/ShapeableDelegateV22;
.super Lcom/google/android/material/shape/ShapeableDelegate;
.source "ShapeableDelegateV22.java"


# instance fields
.field private canUseViewOutline:Z

.field private cornerRadius:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegate;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->canUseViewOutline:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeableDelegateV22;->initMaskOutlineProvider(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/shape/ShapeableDelegateV22;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    return p0
.end method

.method private getDefaultCornerRadius()F
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private initMaskOutlineProvider(Landroid/view/View;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/google/android/material/shape/ShapeableDelegateV22$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeableDelegateV22$1;-><init>(Lcom/google/android/material/shape/ShapeableDelegateV22;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private isShapeRoundRect()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private offsetZeroCornerEdgeBoundsIfPossible()Z
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->offsetZeroCornerEdgeBoundsEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    .line 99
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 100
    invoke-static {v0}, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeUsesAllRoundedCornerTreatments(Lcom/google/android/material/shape/ShapeAppearanceModel;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-interface {v0, v2}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 107
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-interface {v2, v3}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v2

    .line 108
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-interface {v3, v4}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v3

    .line 109
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    invoke-interface {v4, v5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-nez v6, :cond_1

    cmpl-float v7, v3, v5

    if-nez v7, :cond_1

    cmpl-float v7, v2, v4

    if-nez v7, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iput v2, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    cmpl-float v6, v2, v5

    if-nez v6, :cond_2

    cmpl-float v6, v3, v4

    if-nez v6, :cond_2

    .line 118
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iput v3, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    goto :goto_0

    :cond_2
    cmpl-float v6, v2, v5

    if-nez v6, :cond_3

    cmpl-float v6, v4, v5

    if-nez v6, :cond_3

    cmpl-float v6, v0, v3

    if-nez v6, :cond_3

    .line 123
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iput v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    goto :goto_0

    :cond_3
    cmpl-float v3, v3, v5

    if-nez v3, :cond_4

    cmpl-float v3, v4, v5

    if-nez v3, :cond_4

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    .line 128
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->maskBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iput v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method private static shapeUsesAllRoundedCornerTreatments(Lcom/google/android/material/shape/ShapeAppearanceModel;)Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    return p0
.end method

.method invalidateClippingMethod(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegateV22;->getDefaultCornerRadius()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->cornerRadius:F

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegateV22;->isShapeRoundRect()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegateV22;->offsetZeroCornerEdgeBoundsIfPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->canUseViewOutline:Z

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeableDelegateV22;->shouldUseCompatClipping()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeableDelegateV22;->shouldUseCompatClipping()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    :goto_2
    return-void
.end method

.method shouldUseCompatClipping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->canUseViewOutline:Z

    if-eqz v0, :cond_1

    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/shape/ShapeableDelegateV22;->forceCompatClippingEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
