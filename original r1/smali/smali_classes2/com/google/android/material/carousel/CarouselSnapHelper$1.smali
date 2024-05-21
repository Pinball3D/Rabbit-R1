.class Lcom/google/android/material/carousel/CarouselSnapHelper$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarouselSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/CarouselSnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/carousel/CarouselSnapHelper;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcom/google/android/material/carousel/CarouselSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselSnapHelper$1;->this$0:Lcom/google/android/material/carousel/CarouselSnapHelper;

    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselSnapHelper$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 232
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselSnapHelper$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 253
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 254
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42480000    # 50.0f

    :goto_0
    div-float/2addr p1, p0

    return p1

    .line 256
    :cond_0
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselSnapHelper$1;->this$0:Lcom/google/android/material/carousel/CarouselSnapHelper;

    .line 238
    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselSnapHelper;->access$000(Lcom/google/android/material/carousel/CarouselSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselSnapHelper$1;->this$0:Lcom/google/android/material/carousel/CarouselSnapHelper;

    .line 240
    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselSnapHelper;->access$000(Lcom/google/android/material/carousel/CarouselSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, p1, v1}, Lcom/google/android/material/carousel/CarouselSnapHelper;->access$100(Lcom/google/android/material/carousel/CarouselSnapHelper;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Z)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 241
    aget p2, p1, p2

    .line 242
    aget p1, p1, v1

    .line 243
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselSnapHelper$1;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method
