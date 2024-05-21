.class public Lcom/google/android/material/carousel/CarouselSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "CarouselSnapHelper.java"


# static fields
.field private static final HORIZONTAL_SNAP_SPEED:F = 100.0f

.field private static final VERTICAL_SNAP_SPEED:F = 50.0f


# instance fields
.field private final disableFling:Z

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselSnapHelper;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/material/carousel/CarouselSnapHelper;->disableFling:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/carousel/CarouselSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselSnapHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/carousel/CarouselSnapHelper;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Z)[I
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselSnapHelper;->calculateDistanceToSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Z)[I

    move-result-object p0

    return-object p0
.end method

.method private calculateDistanceToSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Z)[I
    .locals 2

    .line 69
    instance-of v0, p1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    filled-new-array {v1, v1}, [I

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 74
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/material/carousel/CarouselSnapHelper;->distanceToFirstFocalKeyline(Landroid/view/View;Lcom/google/android/material/carousel/CarouselLayoutManager;Z)I

    move-result p0

    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_1

    filled-new-array {p0, v1}, [I

    move-result-object p0

    return-object p0

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_2

    filled-new-array {v1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_2
    filled-new-array {v1, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method private distanceToFirstFocalKeyline(Landroid/view/View;Lcom/google/android/material/carousel/CarouselLayoutManager;Z)I
    .locals 0

    .line 88
    invoke-virtual {p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    .line 87
    invoke-virtual {p2, p0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPositionForSnap(IZ)I

    move-result p0

    return p0
.end method

.method private findViewNearestFirstKeyline(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 7

    .line 106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 107
    instance-of v1, p1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    if-nez v1, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move v4, v2

    :goto_0
    if-ge v4, p0, :cond_2

    .line 115
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 116
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 118
    invoke-virtual {v1, v6, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPositionForSnap(IZ)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_1

    move-object v0, v5

    move v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 1

    .line 197
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :cond_1
    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method private isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 3

    .line 208
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    .line 209
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 210
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 212
    invoke-interface {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 214
    iget p1, p0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselSnapHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselSnapHelper;->calculateDistanceToSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Z)[I

    move-result-object p0

    return-object p0
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 2

    .line 231
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/google/android/material/carousel/CarouselSnapHelper$1;

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselSnapHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/material/carousel/CarouselSnapHelper$1;-><init>(Lcom/google/android/material/carousel/CarouselSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselSnapHelper;->findViewNearestFirstKeyline(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/material/carousel/CarouselSnapHelper;->disableFling:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v8, v3

    move v7, v6

    move v6, v5

    move-object v5, v4

    :goto_0
    if-ge v8, v2, :cond_5

    .line 150
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    move-object v10, p1

    check-cast v10, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 155
    invoke-direct {p0, v9, v10, v3}, Lcom/google/android/material/carousel/CarouselSnapHelper;->distanceToFirstFocalKeyline(Landroid/view/View;Lcom/google/android/material/carousel/CarouselLayoutManager;Z)I

    move-result v10

    if-gtz v10, :cond_3

    if-le v10, v6, :cond_3

    move-object v5, v9

    move v6, v10

    :cond_3
    if-ltz v10, :cond_4

    if-ge v10, v7, :cond_4

    move-object v4, v9

    move v7, v10

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 171
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselSnapHelper;->isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v4, :cond_6

    .line 173
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_6
    if-nez p2, :cond_7

    if-eqz v5, :cond_7

    .line 175
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_7
    if-eqz p2, :cond_8

    move-object v4, v5

    :cond_8
    if-nez v4, :cond_9

    return v1

    .line 185
    :cond_9
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselSnapHelper;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    if-ne p0, p2, :cond_a

    move p0, v1

    goto :goto_2

    :cond_a
    const/4 p0, 0x1

    :goto_2
    add-int/2addr p3, p0

    if-ltz p3, :cond_c

    if-lt p3, v0, :cond_b

    goto :goto_3

    :cond_b
    return p3

    :cond_c
    :goto_3
    return v1
.end method
