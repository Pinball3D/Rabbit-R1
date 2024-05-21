.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "MultiBrowseCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final SMALL_COUNTS:[I


# instance fields
.field private keylineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    return-void
.end method


# virtual methods
.method ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z
    .locals 2

    .line 162
    invoke-virtual {p1}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result p0

    sub-int/2addr p0, p2

    const/4 p2, 0x1

    if-lez p0, :cond_1

    .line 163
    iget v0, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v0, p2, :cond_1

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_4

    .line 167
    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v1, :cond_2

    .line 168
    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    sub-int/2addr v1, p2

    iput v1, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    goto :goto_1

    .line 169
    :cond_2
    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v1, p2, :cond_3

    .line 171
    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    sub-int/2addr v1, p2

    iput v1, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 17

    move-object/from16 v0, p0

    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v1

    int-to-float v1, v1

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    .line 68
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 69
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    .line 72
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    :cond_1
    move v11, v3

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v2

    add-float v12, v2, v11

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v2

    add-float v13, v2, v11

    add-float v2, v4, v11

    .line 80
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v4, v2

    add-float/2addr v4, v11

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v11

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v3

    add-float/2addr v3, v11

    .line 86
    invoke-static {v4, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v15

    add-float v2, v14, v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v2, v3

    sget-object v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    mul-float/2addr v3, v12

    cmpg-float v3, v1, v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    filled-new-array {v4}, [I

    move-result-object v2

    :cond_2
    sget-object v3, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 106
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 107
    invoke-static {v2}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v2

    .line 108
    invoke-static {v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v3

    :cond_3
    move-object v7, v2

    move-object v8, v3

    .line 115
    invoke-static {v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    .line 116
    invoke-static {v7}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    sub-float/2addr v2, v3

    div-float/2addr v2, v14

    float-to-double v2, v2

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    div-float v3, v1, v14

    float-to-double v9, v3

    .line 118
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    sub-int v2, v3, v2

    add-int/2addr v2, v6

    .line 119
    new-array v10, v2, [I

    :goto_0
    if-ge v4, v2, :cond_4

    sub-int v5, v3, v4

    .line 121
    aput v5, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    move v3, v15

    move v4, v12

    move v5, v13

    move-object v6, v7

    move/from16 v7, v16

    move v9, v14

    .line 124
    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iget v0, v2, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    filled-new-array {v0}, [I

    move-result-object v6

    iget v0, v2, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    filled-new-array {v0}, [I

    move-result-object v8

    iget v0, v2, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    filled-new-array {v0}, [I

    move-result-object v10

    move v2, v1

    move v3, v15

    move v4, v12

    move v5, v13

    move/from16 v7, v16

    move v9, v14

    .line 141
    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v2

    .line 154
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v3

    .line 153
    invoke-static {v0, v11, v1, v2, v3}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p2, v0, :cond_0

    .line 183
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-lt p2, v0, :cond_2

    .line 184
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result p1

    iget p0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
