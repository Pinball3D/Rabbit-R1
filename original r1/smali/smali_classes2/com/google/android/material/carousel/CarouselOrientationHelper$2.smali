.class Lcom/google/android/material/carousel/CarouselOrientationHelper$2;
.super Lcom/google/android/material/carousel/CarouselOrientationHelper;
.source "CarouselOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/CarouselOrientationHelper;->createHorizontalHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/CarouselOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method constructor <init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p2, 0x0

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;-><init>(ILcom/google/android/material/carousel/CarouselOrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public containMaskWithinBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    .line 302
    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    .line 303
    iget p0, p3, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v0

    .line 304
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 305
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 308
    :cond_0
    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    .line 309
    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, p3

    .line 310
    iget p3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p3, p0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 311
    iget p1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p0

    iget p0, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    :cond_1
    return-void
.end method

.method public getMaskMargins(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F
    .locals 0

    .line 291
    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public getMaskRect(FFFF)Landroid/graphics/RectF;
    .locals 0

    .line 297
    new-instance p0, Landroid/graphics/RectF;

    const/4 p3, 0x0

    sub-float/2addr p2, p4

    invoke-direct {p0, p4, p3, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method getParentBottom()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 276
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method getParentEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 266
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentRight()I

    move-result p0

    :goto_0
    return p0
.end method

.method getParentLeft()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getParentRight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 261
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getWidth()I

    move-result p0

    return p0
.end method

.method getParentStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 256
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentRight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentLeft()I

    move-result p0

    :goto_0
    return p0
.end method

.method getParentTop()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 271
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;II)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 284
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentTop()I

    move-result v3

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentBottom()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public moveMaskOnEdgeOutsideBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    .line 318
    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p0, :cond_0

    .line 319
    iget p0, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    .line 322
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    .line 324
    :cond_0
    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_1

    .line 325
    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-double p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p0, p2

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    .line 328
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    :cond_1
    return-void
.end method

.method public offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 0

    .line 334
    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, p3

    sub-float/2addr p4, p0

    float-to-int p0, p4

    .line 335
    invoke-virtual {p1, p0}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method
