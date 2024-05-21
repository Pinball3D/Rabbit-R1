.class public Lcom/google/android/material/carousel/HeroCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "HeroCarouselStrategy.java"


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

    sput-object v1, Lcom/google/android/material/carousel/HeroCarouselStrategy;->SMALL_COUNTS:[I

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    return-void
.end method


# virtual methods
.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 20

    .line 60
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    .line 65
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 66
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 70
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    .line 75
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v1

    add-float/2addr v1, v2

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v4

    add-float v13, v4, v2

    add-float v4, v3, v2

    int-to-float v0, v0

    .line 78
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v4

    add-float/2addr v4, v2

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v5

    add-float/2addr v5, v2

    .line 83
    invoke-static {v3, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    add-float v4, v14, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v15, v4, v5

    sget-object v4, Lcom/google/android/material/carousel/HeroCarouselStrategy;->SMALL_COUNTS:[I

    mul-float/2addr v5, v1

    cmpg-float v5, v0, v5

    const/16 v16, 0x0

    if-gez v5, :cond_2

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_0

    :cond_2
    move-object/from16 v17, v4

    .line 96
    :goto_0
    invoke-static {v4}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    sub-float v4, v0, v4

    div-float/2addr v4, v14

    float-to-double v4, v4

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    div-float v5, v0, v14

    float-to-double v5, v5

    .line 98
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int/2addr v5, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 99
    new-array v12, v5, [I

    move/from16 v7, v16

    :goto_1
    if-ge v7, v5, :cond_3

    add-int v8, v4, v7

    .line 101
    aput v8, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v4

    if-ne v4, v6, :cond_4

    move/from16 v18, v6

    goto :goto_2

    :cond_4
    move/from16 v18, v16

    :goto_2
    if-eqz v18, :cond_5

    .line 112
    invoke-static/range {v17 .. v17}, Lcom/google/android/material/carousel/HeroCarouselStrategy;->doubleCounts([I)[I

    move-result-object v4

    move-object v8, v4

    goto :goto_3

    :cond_5
    move-object/from16 v8, v17

    :goto_3
    if-eqz v18, :cond_6

    sget-object v4, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 116
    invoke-static {v4}, Lcom/google/android/material/carousel/HeroCarouselStrategy;->doubleCounts([I)[I

    move-result-object v4

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    :goto_4
    move-object v10, v4

    move v4, v0

    move v5, v3

    move v6, v1

    move v7, v13

    move v9, v15

    move v11, v14

    move-object/from16 v19, v12

    .line 106
    invoke-static/range {v4 .. v12}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v5

    move-object/from16 v6, p0

    iput v5, v6, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    .line 124
    invoke-virtual {v4}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v6

    if-le v5, v6, :cond_7

    sget-object v10, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    move v4, v0

    move v5, v3

    move v6, v1

    move v7, v13

    move-object/from16 v8, v17

    move v9, v15

    move v11, v14

    move-object/from16 v12, v19

    .line 127
    invoke-static/range {v4 .. v12}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v4

    move/from16 v1, v16

    goto :goto_5

    :cond_7
    move/from16 v1, v18

    .line 140
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 139
    invoke-static {v3, v2, v0, v4, v1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 3

    .line 151
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-ge p2, v0, :cond_0

    .line 152
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-ge v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-lt p2, v0, :cond_1

    .line 153
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result p1

    iget p0, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
