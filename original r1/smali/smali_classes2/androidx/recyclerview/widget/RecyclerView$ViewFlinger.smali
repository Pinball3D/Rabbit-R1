.class Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field mOverScroller:Landroid/widget/OverScroller;

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5767
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5776
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private computeScrollDuration(II)I
    .locals 1

    .line 6017
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 6018
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 6020
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    const/high16 p0, 0x43960000    # 300.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0x7d0

    .line 6025
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private internalPostOnAnimation()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5944
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5945
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 12

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    .line 5949
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5954
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_0

    .line 5955
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5956
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    move v6, p1

    move v7, p2

    .line 5958
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5960
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 5939
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->internalPostOnAnimation()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5781
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 5782
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5789
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 5802
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5803
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    .line 5804
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v4, v6

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5810
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInHorizontalStretch(I)I

    move-result v4

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5811
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInVerticalStretch(I)I

    move-result v5

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5817
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v6, v1

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5818
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v6, v2

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5819
    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v9, v4

    move v10, v5

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5821
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v6, v6, v1

    sub-int/2addr v4, v6

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5822
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v6, v6, v2

    sub-int/2addr v5, v6

    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5827
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5828
    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_2
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5832
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_5

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5833
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v6, v1

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5834
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v6, v2

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5835
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    invoke-virtual {v6, v4, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5836
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v6, v6, v1

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5837
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v8, v2

    sub-int/2addr v4, v6

    sub-int/2addr v5, v8

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5843
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v9, :cond_6

    .line 5844
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v10

    if-nez v10, :cond_6

    .line 5845
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5846
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-nez v10, :cond_3

    .line 5848
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 5849
    :cond_3
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v11

    if-lt v11, v10, :cond_4

    sub-int/2addr v10, v2

    .line 5850
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5851
    invoke-virtual {v9, v6, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    .line 5853
    :cond_4
    invoke-virtual {v9, v6, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    :cond_5
    move v6, v1

    move v8, v6

    :cond_6
    :goto_0
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5858
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5859
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_7
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5863
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v9, v1

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5864
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v9, v2

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 5865
    iget-object v9, v11, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    move v12, v6

    move v13, v8

    move v14, v4

    move v15, v5

    move-object/from16 v18, v9

    invoke-virtual/range {v11 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5867
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v9, v9, v1

    sub-int/2addr v4, v9

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5868
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v9, v9, v2

    sub-int/2addr v5, v9

    if-nez v6, :cond_8

    if-eqz v8, :cond_9

    :cond_8
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5871
    invoke-virtual {v9, v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_9
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5874
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5875
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5883
    :cond_a
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v9

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v10

    if-ne v9, v10, :cond_b

    move v9, v2

    goto :goto_1

    :cond_b
    move v9, v1

    .line 5884
    :goto_1
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v11

    if-ne v10, v11, :cond_c

    move v10, v2

    goto :goto_2

    :cond_c
    move v10, v1

    .line 5885
    :goto_2
    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_f

    if-nez v9, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    if-nez v10, :cond_f

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    move v9, v1

    goto :goto_4

    :cond_f
    :goto_3
    move v9, v2

    :goto_4
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5892
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v10, :cond_10

    .line 5894
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_7

    :cond_10
    if-eqz v9, :cond_16

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5900
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v6

    if-eq v6, v7, :cond_15

    .line 5901
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    if-gez v4, :cond_11

    neg-int v4, v3

    goto :goto_5

    :cond_11
    if-lez v4, :cond_12

    move v4, v3

    goto :goto_5

    :cond_12
    move v4, v1

    :goto_5
    if-gez v5, :cond_13

    neg-int v3, v3

    goto :goto_6

    :cond_13
    if-lez v5, :cond_14

    goto :goto_6

    :cond_14
    move v3, v1

    :goto_6
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5904
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5907
    :cond_15
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5908
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    goto :goto_8

    .line 5913
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5914
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5915
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4, v6, v8}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_17
    :goto_8
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5920
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_18

    .line 5922
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5923
    invoke-virtual {v3, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    :cond_18
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v3, :cond_19

    .line 5928
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_9

    :cond_19
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5930
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5931
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :goto_9
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 5980
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(II)I

    move-result p3

    :cond_0
    move v5, p3

    if-nez p4, :cond_1

    .line 5983
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_2

    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5990
    new-instance p3, Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    :cond_2
    const/4 p3, 0x0

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p4, 0x2

    .line 5997
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    .line 5998
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 6007
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6029
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 6030
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method
