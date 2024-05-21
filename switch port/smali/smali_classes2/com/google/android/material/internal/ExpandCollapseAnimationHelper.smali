.class public Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
.super Ljava/lang/Object;
.source "ExpandCollapseAnimationHelper.java"


# instance fields
.field private additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final collapsedView:Landroid/view/View;

.field private collapsedViewOffsetY:I

.field private duration:J

.field private final endAnchoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final expandedView:Landroid/view/View;

.field private expandedViewOffsetY:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    return-object p0
.end method

.method private addListeners(Landroid/animation/Animator;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/List<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    .line 205
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 4

    .line 152
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandCollapseAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandedViewChildrenAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getEndAnchoredViewsTranslateAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    aput-object p0, v1, v2

    .line 153
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getEndAnchoredViewsTranslateAnimator(Z)Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v0, v0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 194
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    .line 195
    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 198
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 197
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getExpandCollapseAnimator(Z)Landroid/animation/Animator;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedViewOffsetY:I

    .line 161
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    iget v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedViewOffsetY:I

    .line 162
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 163
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 165
    new-instance v3, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v3, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 166
    invoke-static {v3, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-wide v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 173
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 172
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getExpandedViewChildrenAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    .line 179
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 180
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 181
    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 184
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 183
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addEndAnchoredViews(Ljava/util/Collection;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    .line 125
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addEndAnchoredViews([Landroid/view/View;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    .line 118
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    .line 111
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCollapseAnimator()Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListeners(Landroid/animation/Animator;Ljava/util/List;)V

    return-object v0
.end method

.method public getExpandAnimator()Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$1;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListeners(Landroid/animation/Animator;Ljava/util/List;)V

    return-object v0
.end method

.method synthetic lambda$getExpandCollapseAnimator$0$com-google-android-material-internal-ExpandCollapseAnimationHelper(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    .line 167
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->setBoundsFromRect(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAdditionalUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public setCollapsedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedViewOffsetY:I

    return-object p0
.end method

.method public setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    return-object p0
.end method

.method public setExpandedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedViewOffsetY:I

    return-object p0
.end method
