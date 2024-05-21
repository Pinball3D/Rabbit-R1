.class public Lcom/google/android/material/motion/MaterialSideContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "MaterialSideContainerBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/motion/MaterialBackAnimationHelper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final maxScaleXDistanceGrow:F

.field private final maxScaleXDistanceShrink:F

.field private final maxScaleYDistance:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 62
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_x_distance_shrink:I

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    .line 64
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_x_distance_grow:I

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    .line 66
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_y_distance:I

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    return-void
.end method

.method private checkAbsoluteGravity(II)Z
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    .line 183
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getEdgeMargin(Z)I
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 189
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 190
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 191
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancelBackProgress()V
    .locals 10

    .line 160
    invoke-super {p0}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onCancelBackProgress()Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 165
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 166
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 167
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 165
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    move v2, v6

    .line 171
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 172
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-array v5, v4, [Landroid/animation/Animator;

    .line 173
    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v4, [F

    aput v7, v9, v6

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget p0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->cancelDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 178
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public finishBackProgress(Landroidx/activity/BackEventCompat;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 7

    .line 134
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getSwipeEdge()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x3

    .line 135
    invoke-direct {p0, p2, v3}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->checkAbsoluteGravity(II)Z

    move-result v3

    .line 136
    iget-object v4, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-direct {p0, v3}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->getEdgeMargin(Z)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 137
    iget-object v5, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz v3, :cond_1

    neg-float v4, v4

    :cond_1
    aput v4, v1, v2

    .line 138
    invoke-static {v5, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz p4, :cond_2

    .line 140
    invoke-virtual {v1, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    :cond_2
    new-instance p4, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p4}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget p4, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->hideDurationMax:I

    iget v2, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->hideDurationMin:I

    .line 144
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result p1

    invoke-static {p4, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p1

    int-to-long v2, p1

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    new-instance p1, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;-><init>(Lcom/google/android/material/motion/MaterialSideContainerBackHelper;ZI)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_3

    .line 154
    invoke-virtual {v1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onStartBackProgress(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public updateBackProgress(FZI)V
    .locals 9

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->interpolateProgress(F)F

    move-result p1

    const/4 v0, 0x3

    .line 86
    invoke-direct {p0, p3, v0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->checkAbsoluteGravity(II)Z

    move-result p3

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v3, v1

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_7

    int-to-float v2, v2

    cmpg-float v5, v2, v4

    if-gtz v5, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v5, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    div-float/2addr v5, v3

    iget v6, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    div-float/2addr v6, v3

    iget v7, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    div-float/2addr v7, v2

    .line 101
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    if-eqz p3, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    neg-float v6, v5

    .line 103
    :goto_1
    invoke-static {v4, v6, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v5, v2, v3

    .line 105
    iget-object v6, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleX(F)V

    .line 106
    invoke-static {v4, v7, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    sub-float p1, v3, p1

    .line 108
    iget-object v6, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setScaleY(F)V

    .line 110
    iget-object v6, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_7

    .line 111
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    check-cast p0, Landroid/view/ViewGroup;

    .line 112
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz p3, :cond_4

    .line 118
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_3

    .line 119
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    neg-int v7, v7

    :goto_3
    int-to-float v7, v7

    .line 116
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 120
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    if-eqz p2, :cond_5

    sub-float v7, v3, v2

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    cmpl-float v8, p1, v4

    if-eqz v8, :cond_6

    div-float v8, v5, p1

    mul-float/2addr v8, v7

    goto :goto_5

    :cond_6
    move v8, v3

    .line 123
    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 124
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;I)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getSwipeEdge()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->updateBackProgress(FZI)V

    return-void
.end method
