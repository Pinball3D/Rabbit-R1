.class final Lcom/google/android/material/progressindicator/LinearDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "LinearDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/DrawingDelegate<",
        "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private displayedCornerRadius:F

.field private displayedTrackPath:Landroid/graphics/Path;

.field private displayedTrackThickness:F

.field private trackLength:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    return-void
.end method


# virtual methods
.method public adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 6

    .line 68
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 69
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v0, v0

    .line 72
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v4, v4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    sub-int/2addr p2, v4

    int-to-float p2, p2

    div-float/2addr p2, v3

    const/4 v4, 0x0

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr v2, p2

    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->showAnimationBehavior:I

    const/4 v5, 0x1

    if-eq p2, v5, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 82
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hideAnimationBehavior:I

    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    .line 84
    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 87
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 88
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float p2, p2

    sub-float v1, p3, v2

    mul-float/2addr p2, v1

    div-float/2addr p2, v3

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    iget p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v1, p2

    div-float/2addr v1, v3

    neg-float v2, v0

    div-float/2addr v2, v3

    div-float/2addr p2, v3

    div-float/2addr v0, v3

    .line 93
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 96
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 97
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackCornerRadius:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    return-void
.end method

.method public fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 4

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    iget v3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    mul-float/2addr v3, v2

    sub-float/2addr p3, v3

    mul-float/2addr p4, v0

    add-float/2addr v1, p4

    .line 131
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p4, 0x1

    .line 132
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackPath:Landroid/graphics/Path;

    .line 137
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 138
    new-instance p4, Landroid/graphics/RectF;

    iget p5, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    neg-float v0, p5

    div-float/2addr v0, v2

    div-float/2addr p5, v2

    invoke-direct {p4, p3, v0, v1, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 144
    invoke-virtual {p1, p4, p0, p0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 159
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackPath:Landroid/graphics/Path;

    .line 164
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    neg-float v6, v5

    div-float/2addr v6, v4

    div-float/2addr v2, v4

    div-float/2addr v5, v4

    invoke-direct {v1, v3, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackPath:Landroid/graphics/Path;

    .line 174
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPreferredHeight()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    return p0
.end method

.method public getPreferredWidth()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
