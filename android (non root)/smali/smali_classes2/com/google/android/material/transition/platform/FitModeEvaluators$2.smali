.class Lcom/google/android/material/transition/platform/FitModeEvaluators$2;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V
    .locals 1

    .line 120
    iget p0, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    iget p3, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    sub-float/2addr p0, p3

    .line 121
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 122
    iget p3, p1, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    mul-float/2addr p0, p2

    add-float/2addr p3, p0

    iput p3, p1, Landroid/graphics/RectF;->left:F

    .line 123
    iget p2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;
    .locals 6

    const/4 v5, 0x1

    move v0, p5

    move v1, p7

    move v2, p2

    move v3, p3

    move v4, p1

    .line 93
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v0

    div-float p1, v0, p5

    div-float p2, v0, p7

    mul-float p3, p4, p1

    mul-float p5, p6, p2

    .line 104
    new-instance p7, Lcom/google/android/material/transition/platform/FitModeResult;

    move-object p0, p7

    move p4, v0

    move p6, v0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/material/transition/platform/FitModeResult;-><init>(FFFFFF)V

    return-object p7
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z
    .locals 0

    .line 115
    iget p0, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    iget p1, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
