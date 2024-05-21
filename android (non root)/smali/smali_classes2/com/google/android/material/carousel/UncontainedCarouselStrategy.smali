.class public final Lcom/google/android/material/carousel/UncontainedCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "UncontainedCarouselStrategy.java"


# static fields
.field private static final MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD:F = 0.85f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    return-void
.end method

.method private calculateMediumChildSize(FFF)F
    .locals 1

    const/high16 p0, 0x3fc00000    # 1.5f

    mul-float/2addr p0, p3

    .line 132
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const p1, 0x3f59999a    # 0.85f

    mul-float/2addr p1, p2

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    const p0, 0x3f99999a    # 1.2f

    mul-float/2addr p3, p0

    .line 143
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 147
    :cond_0
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private createCenterAlignedKeylineState(FFFIFFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 15

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v6, p5

    move/from16 v1, p6

    .line 159
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 161
    invoke-static {v7, v3, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v8

    .line 162
    invoke-static {v6, v3, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v9

    const/4 v2, 0x0

    const/4 v0, 0x0

    add-float v0, p7, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v6, v1

    sub-float/2addr v0, v10

    add-float v4, v0, v10

    sub-float v5, v0, v10

    div-float v11, v7, v1

    sub-float/2addr v5, v11

    div-float v1, v3, v1

    add-float/2addr v1, v4

    move/from16 v12, p4

    int-to-float v13, v12

    mul-float/2addr v13, v3

    add-float/2addr v13, v4

    .line 174
    new-instance v4, Lcom/google/android/material/carousel/KeylineState$Builder;

    move/from16 v14, p1

    invoke-direct {v4, v3, v14}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    .line 176
    invoke-virtual {v4, v5, v8, v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v4

    const/4 v14, 0x0

    .line 177
    invoke-virtual {v4, v0, v9, v6, v14}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v0

    const/4 v5, 0x1

    move/from16 v4, p4

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v0

    add-float/2addr v10, v13

    add-float/2addr v13, v6

    .line 182
    invoke-virtual {v0, v10, v9, v6, v14}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    add-float/2addr v13, v11

    .line 186
    invoke-virtual {v0, v13, v8, v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 187
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method private createLeftAlignedKeylineState(Landroid/content/Context;FFFIFIF)Lcom/google/android/material/carousel/KeylineState;
    .locals 15

    move/from16 v0, p2

    move/from16 v3, p4

    move/from16 v6, p6

    move/from16 v1, p8

    .line 199
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v6

    .line 203
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 204
    invoke-static {v1, v3, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v2

    .line 206
    invoke-static {v7, v3, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v8

    .line 208
    invoke-static {v6, v3, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v9

    const/4 v4, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v1, v10

    const/4 v5, 0x0

    sub-float v0, v5, v0

    div-float v11, v3, v10

    move/from16 v12, p5

    int-to-float v13, v12

    mul-float/2addr v13, v3

    add-float/2addr v13, v5

    .line 219
    new-instance v5, Lcom/google/android/material/carousel/KeylineState$Builder;

    move/from16 v14, p3

    invoke-direct {v5, v3, v14}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    .line 221
    invoke-virtual {v5, v0, v2, v1}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v0

    const/4 v5, 0x1

    move v1, v11

    move v2, v4

    move/from16 v4, p5

    .line 222
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v0

    if-lez p7, :cond_0

    div-float v1, v6, v10

    add-float/2addr v1, v13

    add-float/2addr v13, v6

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v0, v1, v9, v6, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 235
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v1

    div-float/2addr v1, v10

    add-float/2addr v13, v1

    .line 236
    invoke-virtual {v0, v13, v8, v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method isContained()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 10

    .line 59
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    move v4, v0

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 62
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 65
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 67
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v2, v1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-float v5, v2, v3

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v0

    add-float/2addr v0, v3

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v1

    add-float v9, v1, v3

    div-float v1, v4, v5

    float-to-double v1, v1

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v1, v6

    mul-float/2addr v1, v5

    sub-float v1, v4, v1

    .line 77
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    div-float v8, v1, p1

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result p1

    add-float/2addr p1, v3

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p2, v8

    .line 85
    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 88
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    move-object v1, p0

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, p1

    move v7, v9

    .line 92
    invoke-direct/range {v1 .. v8}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->createCenterAlignedKeylineState(FFFIFFF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    move v8, p1

    .line 109
    :goto_2
    invoke-direct {p0, v0, v5, v1}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->calculateMediumChildSize(FFF)F

    move-result v7

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    .line 111
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->createLeftAlignedKeylineState(Landroid/content/Context;FFFIFIF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method
