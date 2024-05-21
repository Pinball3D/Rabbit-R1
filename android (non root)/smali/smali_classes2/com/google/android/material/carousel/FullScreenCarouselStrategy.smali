.class public Lcom/google/android/material/carousel/FullScreenCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "FullScreenCarouselStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 12

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 49
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result p1

    int-to-float p1, p1

    .line 51
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result p1

    int-to-float p1, p1

    .line 54
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr v0, p0

    int-to-float p0, v0

    add-float v0, p1, p0

    .line 56
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 57
    new-instance v11, Lcom/google/android/material/carousel/Arrangement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, v11

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/material/carousel/Arrangement;-><init>(IFFFIFIFIF)V

    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 68
    invoke-static {p2, p0, p1, v11}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createLeftAlignedKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method
