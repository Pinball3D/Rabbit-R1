.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;
.super Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;
.source "PivotSelectionSmoothScroller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001 B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0014J \u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "position",
        "",
        "subPosition",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "alignment",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;",
        "listener",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;",
        "(Landroidx/recyclerview/widget/RecyclerView;IILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;)V",
        "calculateSpeedPerPixel",
        "",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "computeScrollVectorForPosition",
        "Landroid/graphics/PointF;",
        "targetPosition",
        "isGoingTowardsStart",
        "",
        "onStop",
        "",
        "onTargetFound",
        "targetView",
        "Landroid/view/View;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "action",
        "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;",
        "Listener",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final alignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

.field private final listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;

.field private final position:I

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final subPosition:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;IILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->position:I

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->subPosition:I

    iput-object p5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->alignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iput-object p6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;

    .line 40
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->setTargetPosition(I)V

    return-void
.end method

.method private final isGoingTowardsStart(I)Z
    .locals 3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    :goto_0
    move v1, v2

    :cond_1
    return v1

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getConfiguration()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSmoothScrollSpeedFactor()F

    move-result v0

    .line 45
    invoke-super {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->isGoingTowardsStart(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isHorizontal()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 72
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    .line 74
    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    return-object p0
.end method

.method protected onStop()V
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->onStop()V

    .line 90
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;

    .line 93
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getTargetPosition()I

    move-result v2

    iget v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->subPosition:I

    invoke-interface {v1, v0, v2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;->onPivotFound(Landroid/view/View;II)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getTargetPosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;

    .line 95
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;->onPivotNotFound(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->listener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;

    .line 98
    invoke-interface {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;->onSmoothScrollerStopped()V

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->alignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->subPosition:I

    .line 49
    invoke-virtual {p2, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->calculateScrollOffset(Landroid/view/View;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isHorizontal()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    move v0, p1

    move p1, v3

    :goto_0
    mul-int p2, p1, p1

    mul-int v1, v0, v0

    add-int/2addr p2, v1

    int-to-double v1, p2

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int p2, v1

    .line 62
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p2

    .line 63
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    check-cast p0, Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p1, v0, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
