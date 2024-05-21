.class Lcom/google/android/material/search/SearchBarAnimationHelper;
.super Ljava/lang/Object;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;
    }
.end annotation


# static fields
.field private static final COLLAPSE_DURATION_MS:J = 0xfaL

.field private static final COLLAPSE_FADE_IN_CHILDREN_DURATION_MS:J = 0x64L

.field private static final EXPAND_DURATION_MS:J = 0x12cL

.field private static final EXPAND_FADE_OUT_CHILDREN_DURATION_MS:J = 0x4bL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_IN_START_DELAY_MS:J = 0x1f4L

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_OUT_START_DELAY_MS:J = 0x2eeL

.field private static final ON_LOAD_ANIM_SECONDARY_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_SECONDARY_START_DELAY_MS:J = 0xfaL


# instance fields
.field private final collapseAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private collapsing:Z

.field private defaultCenterViewAnimator:Landroid/animation/Animator;

.field private final expandAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private expanding:Z

.field private final onLoadAnimationCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onLoadAnimationFadeInEnabled:Z

.field private runningExpandOrCollapseAnimator:Landroid/animation/Animator;

.field private secondaryViewAnimator:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$iABKJ6kyZ69puyOjwiq34DXz3r0(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    return p1
.end method

.method private dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    .line 147
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    .line 148
    invoke-interface {p1, v0}, Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;->invoke(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    const-wide/16 v0, 0xfa

    .line 310
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    new-instance p3, Lcom/google/android/material/search/SearchBarAnimationHelper$6;

    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$6;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    .line 311
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getCollapseAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 157
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 158
    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_0

    move-wide v9, v5

    goto :goto_0

    :cond_0
    move-wide v9, v7

    .line 160
    :goto_0
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    if-eqz p0, :cond_1

    const-wide/16 v7, 0x1f4

    .line 162
    :cond_1
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-array p0, v0, [F

    fill-array-data p0, :array_1

    .line 165
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v3, v2, [Landroid/view/View;

    aput-object p1, v3, v4

    .line 166
    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x2ee

    .line 169
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 171
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    .line 172
    aput-object v1, v0, v4

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 400
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 401
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 402
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p0, :cond_0

    .line 403
    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v3, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v3, :cond_2

    .line 405
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    const-wide/16 v0, 0x12c

    .line 244
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p2

    new-instance p3, Lcom/google/android/material/search/SearchBarAnimationHelper$4;

    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    .line 245
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1

    .line 341
    new-instance v0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p1

    .line 342
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setAdditionalUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 344
    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setCollapsedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p1

    .line 345
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addEndAnchoredViews(Ljava/util/Collection;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object p0

    return-object p0
.end method

.method private getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .line 351
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    .line 352
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 353
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 355
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;)V

    return-object p1
.end method

.method private getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/search/SearchBar;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 390
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;
    .locals 2

    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 381
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 382
    invoke-static {p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x64

    .line 383
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 384
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    .line 365
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 366
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 367
    invoke-static {p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    new-instance p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x4b

    .line 374
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    .line 196
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 197
    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 199
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    .line 178
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0xfa

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p2, :cond_0

    .line 182
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-object v0
.end method

.method private getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    .line 188
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 189
    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 191
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$getExpandedViewBackgroundUpdateListener$1(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 356
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 357
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static synthetic lambda$getFadeOutChildrenAnimator$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p1, 0x0

    .line 372
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    .line 332
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    .line 265
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    .line 139
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method isCollapsing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    return p0
.end method

.method isExpanding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    return p0
.end method

.method isOnLoadAnimationFadeInEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    return p0
.end method

.method synthetic lambda$startExpandAnimation$0$com-google-android-material-search-SearchBarAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 2

    .line 217
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 221
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 222
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    .line 229
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    .line 230
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 p1, 0x0

    .line 233
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 235
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-void
.end method

.method removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    .line 336
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    .line 269
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    .line 143
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method setOnLoadAnimationFadeInEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    return-void
.end method

.method startCollapseAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 3

    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    .line 284
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object p2

    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p2, p3, v2

    aput-object p1, p3, v0

    .line 288
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 289
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$5;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    .line 296
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    .line 297
    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-wide/16 p1, 0x0

    .line 300
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 302
    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-void
.end method

.method startExpandAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 7

    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    const/4 v0, 0x4

    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .locals 4

    .line 73
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;

    move-result-object p1

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 80
    new-instance v3, Lcom/google/android/material/search/SearchBarAnimationHelper$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 93
    :cond_0
    instance-of p1, v1, Lcom/google/android/material/animation/AnimatableView;

    if-eqz p1, :cond_1

    .line 94
    check-cast v1, Lcom/google/android/material/animation/AnimatableView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda4;

    invoke-direct {p0, v2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda4;-><init>(Landroid/animation/Animator;)V

    invoke-interface {v1, p0}, Lcom/google/android/material/animation/AnimatableView;->startAnimation(Lcom/google/android/material/animation/AnimatableView$Listener;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    .line 100
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/material/search/SearchBarAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method stopOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object p0

    .line 122
    instance-of p1, p0, Lcom/google/android/material/animation/AnimatableView;

    if-eqz p1, :cond_2

    .line 123
    move-object p1, p0

    check-cast p1, Lcom/google/android/material/animation/AnimatableView;

    invoke-interface {p1}, Lcom/google/android/material/animation/AnimatableView;->stopAnimation()V

    :cond_2
    if-eqz p0, :cond_3

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method
