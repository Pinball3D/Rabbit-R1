.class public Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "MaterialMainContainerBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/motion/MaterialBackAnimationHelper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.9f


# instance fields
.field private expandedCornerSize:Ljava/lang/Integer;

.field private initialHideFromClipBounds:Landroid/graphics/Rect;

.field private initialHideToClipBounds:Landroid/graphics/Rect;

.field private initialTouchY:F

.field private final maxTranslationY:F

.field private final minEdgeGap:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 70
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_main_container_min_edge_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    .line 71
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_main_container_max_translation_y:I

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    return-void
.end method

.method private createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadius()F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerSize()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x1

    aput p0, v0, v1

    .line 201
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 203
    new-instance v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method private createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 8

    .line 179
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 180
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 181
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 182
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v4, [F

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 183
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v7, v4, v6

    .line 184
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 180
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 185
    new-instance v1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;-><init>(Lcom/google/android/material/motion/MaterialMainContainerBackHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getMaxDeviceCornerRadius()I
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v1

    const/4 v2, 0x1

    .line 229
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v2

    .line 227
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x3

    .line 231
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v2

    const/4 v3, 0x2

    .line 232
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result p0

    .line 230
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 226
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private getRoundedCornerRadius(Landroid/view/WindowInsets;I)I
    .locals 0

    .line 240
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAtTopOfScreen()Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 218
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    aget v0, v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createCornerAnimator$0(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 205
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadius(F)V

    return-void
.end method

.method private resetInitialValues()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public cancelBackProgress(Landroid/view/View;)V
    .locals 3

    .line 157
    invoke-super {p0}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onCancelBackProgress()Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/Animator;

    .line 163
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-direct {p0, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 165
    :cond_1
    iget v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->cancelDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 166
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 168
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    return-void
.end method

.method public finishBackProgress(JLandroid/view/View;)V
    .locals 0

    .line 149
    invoke-direct {p0, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p3

    .line 150
    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 151
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 153
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    return-void
.end method

.method public getExpandedCornerSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerSize:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->isAtTopOfScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getMaxDeviceCornerRadius()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerSize:Ljava/lang/Integer;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerSize:Ljava/lang/Integer;

    .line 213
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getInitialHideFromClipBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getInitialHideToClipBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public startBackProgress(FLandroid/view/View;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    :cond_0
    iput p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onStartBackProgress(Landroidx/activity/BackEventCompat;)V

    .line 88
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->startBackProgress(FLandroid/view/View;)V

    return-void
.end method

.method public updateBackProgress(FZFF)V
    .locals 6

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->interpolateProgress(F)F

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 121
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_2

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    .line 126
    invoke-static {v3, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    mul-float/2addr v4, v0

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget v5, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr v0, v5

    .line 128
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 129
    invoke-static {v2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    int-to-float p2, p2

    mul-float/2addr v0, p2

    mul-float p2, v3, v1

    sub-float p2, v1, p2

    div-float/2addr p2, v4

    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr p2, v4

    .line 131
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    .line 132
    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    sub-float/2addr p3, v4

    .line 134
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v1

    .line 135
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    .line 136
    invoke-static {v2, p2, v4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p2

    mul-float/2addr p2, p3

    .line 138
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleX(F)V

    .line 139
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleY(F)V

    .line 140
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 141
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 142
    iget-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    instance-of p2, p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz p2, :cond_2

    .line 143
    iget-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    check-cast p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerSize()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0, p4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadius(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;F)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getSwipeEdge()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 112
    :goto_0
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v0

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p1

    .line 111
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->updateBackProgress(FZFF)V

    return-void
.end method
