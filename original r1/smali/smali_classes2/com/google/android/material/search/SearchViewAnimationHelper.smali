.class Lcom/google/android/material/search/SearchViewAnimationHelper;
.super Ljava/lang/Object;
.source "SearchViewAnimationHelper.java"


# static fields
.field private static final CONTENT_FROM_SCALE:F = 0.95f

.field private static final HIDE_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x2aL

.field private static final HIDE_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_ALPHA_DURATION_MS:J = 0x53L

.field private static final HIDE_CONTENT_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_SCALE_DURATION_MS:J = 0xfaL

.field private static final HIDE_DURATION_MS:J = 0xfaL

.field private static final HIDE_TRANSLATE_DURATION_MS:J = 0x12cL

.field private static final SHOW_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x32L

.field private static final SHOW_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0xfaL

.field private static final SHOW_CONTENT_ALPHA_DURATION_MS:J = 0x96L

.field private static final SHOW_CONTENT_ALPHA_START_DELAY_MS:J = 0x4bL

.field private static final SHOW_CONTENT_SCALE_DURATION_MS:J = 0x12cL

.field private static final SHOW_DURATION_MS:J = 0x12cL

.field private static final SHOW_TRANSLATE_DURATION_MS:J = 0x15eL

.field private static final SHOW_TRANSLATE_KEYBOARD_START_DELAY_MS:J = 0x96L


# instance fields
.field private final backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

.field private backProgressAnimatorSet:Landroid/animation/AnimatorSet;

.field private final clearButton:Landroid/widget/ImageButton;

.field private final contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private final divider:Landroid/view/View;

.field private final dummyToolbar:Landroidx/appcompat/widget/Toolbar;

.field private final editText:Landroid/widget/EditText;

.field private final headerContainer:Landroid/widget/FrameLayout;

.field private final rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field private final scrim:Landroid/view/View;

.field private searchBar:Lcom/google/android/material/search/SearchBar;

.field private final searchPrefix:Landroid/widget/TextView;

.field private final searchView:Lcom/google/android/material/search/SearchView;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;

.field private final toolbarContainer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 109
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->scrim:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    .line 110
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 111
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    .line 112
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->toolbarContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    .line 113
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 114
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 115
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    .line 116
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    .line 117
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    .line 118
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    .line 119
    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 121
    new-instance p1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-direct {p1, v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setContentViewsAlpha(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    return-object p0
.end method

.method private addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 458
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 464
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v6, v3, [Landroid/view/View;

    .line 465
    aput-object v0, v6, v4

    .line 466
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    .line 465
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v1, [F

    .line 468
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result p0

    int-to-float p0, p0

    aput p0, v6, v4

    aput v5, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v5, v3, [Landroid/view/View;

    .line 469
    aput-object v0, v5, v4

    .line 470
    invoke-static {v5}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    .line 469
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v1, [Landroid/animation/Animator;

    .line 472
    aput-object v2, v0, v4

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 414
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 420
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 398
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 404
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXStart(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v6, v3, [Landroid/view/View;

    .line 405
    aput-object v0, v6, v4

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v1, [F

    .line 407
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result p0

    int-to-float p0, p0

    aput p0, v6, v4

    aput v5, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v5, v3, [Landroid/view/View;

    .line 408
    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v1, [Landroid/animation/Animator;

    .line 410
    aput-object v2, v0, v4

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 429
    instance-of p0, p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    if-eqz p0, :cond_0

    .line 430
    check-cast p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    .line 431
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 432
    new-instance v0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v0, 0x0

    .line 434
    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 439
    instance-of p0, p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz p0, :cond_0

    .line 440
    check-cast p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    .line 441
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 442
    new-instance v0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/internal/FadeThroughDrawable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v0, 0x0

    .line 444
    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 484
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 485
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 486
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 487
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 486
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 489
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 490
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 491
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    .line 492
    new-instance v1, Lcom/google/android/material/internal/FadeThroughUpdateListener;

    invoke-direct {v1, p1, p0}, Lcom/google/android/material/internal/FadeThroughUpdateListener;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 379
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 380
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 381
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 382
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 383
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 382
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 388
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 389
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 391
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 392
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 393
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 392
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getClearButtonAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 367
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2a

    .line 368
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xfa

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 370
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 372
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 373
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 372
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    .line 374
    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getContentAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 515
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x53

    .line 516
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x4b

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 518
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 520
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 521
    invoke-static {p1, v2}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 520
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v0, [Landroid/view/View;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 522
    aput-object p0, p1, v0

    .line 523
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    .line 522
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getContentAnimator(Z)Landroid/animation/Animator;
    .locals 4

    .line 508
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 510
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getDividerAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentScaleAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    aput-object p0, v1, v2

    .line 509
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getContentScaleAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 541
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 542
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 544
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 545
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 544
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 546
    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->scaleListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDividerAnimator(Z)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 529
    invoke-virtual {v0}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 531
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v4, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xfa

    .line 532
    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 534
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 535
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 534
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v3, [Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    aput-object p0, p1, v2

    .line 536
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getDummyToolbarAnimator(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 476
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getEditTextAnimator(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    .line 504
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 6

    .line 275
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [Landroid/animation/Animator;

    .line 279
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v1, v3

    .line 278
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/animation/Animator;

    .line 282
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getScrimAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v1, v4

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getRootViewAnimator(Z)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v1, v3

    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getClearButtonAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getHeaderContainerAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 287
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getDummyToolbarAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getEditTextAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getSearchPrefixAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 281
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getFromTranslationXEnd(Landroid/view/View;)I
    .locals 1

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 578
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 579
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLeft()I

    move-result p0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 580
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getRight()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    add-int p0, v0, p1

    :goto_0
    return p0
.end method

.method private getFromTranslationXStart(Landroid/view/View;)I
    .locals 2

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 569
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 570
    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 571
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getRight()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 572
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getLeft()I

    move-result p0

    sub-int/2addr p0, p1

    add-int v1, p0, v0

    :goto_0
    return v1
.end method

.method private getFromTranslationY()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    .line 584
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 585
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getTop()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getBottom()I

    move-result p0

    add-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method private getHeaderContainerAnimator(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    .line 480
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getRootViewAnimator(Z)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    .line 337
    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getInitialHideToClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    .line 338
    invoke-virtual {v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getInitialHideFromClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 342
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 346
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 347
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 349
    invoke-virtual {v3}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 350
    invoke-virtual {v4}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadius()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-virtual {v5}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 352
    new-instance v5, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v5, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 353
    invoke-static {v5, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;FFLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0xfa

    .line 360
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 361
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 362
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 361
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getScrimAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4

    if-eqz p1, :cond_0

    .line 327
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 329
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0xfa

    .line 330
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    invoke-static {p1, v0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    aput-object p0, p1, v0

    .line 332
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSearchPrefixAnimator(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    .line 500
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 4

    .line 259
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 260
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationYAnimator()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 262
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 263
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 262
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x12c

    .line 264
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private getTranslationAnimator(ZZLandroid/view/View;)Landroid/animation/Animator;
    .locals 5

    if-eqz p2, :cond_0

    .line 551
    invoke-direct {p0, p3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXStart(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result p2

    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    int-to-float p2, p2

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    const/4 v3, 0x0

    aput v3, v1, p2

    .line 552
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v4, p2, [Landroid/view/View;

    aput-object p3, v4, v2

    .line 553
    invoke-static {v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v0, [F

    .line 555
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result p0

    int-to-float p0, p0

    aput p0, v4, v2

    aput v3, v4, p2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v3, p2, [Landroid/view/View;

    aput-object p3, v3, v2

    .line 556
    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 558
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    .line 559
    aput-object v1, v0, v2

    aput-object p0, v0, p2

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xfa

    .line 560
    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 561
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 562
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 561
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3
.end method

.method private getTranslationYAnimator()Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 269
    invoke-virtual {v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-array v1, v3, [Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 270
    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method static synthetic lambda$addDrawerArrowDrawableAnimatorIfNeeded$3(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 433
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    return-void
.end method

.method static synthetic lambda$addFadeThroughDrawableAnimatorIfNeeded$4(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 443
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    return-void
.end method

.method private setActionMenuViewAlphaIfNeeded(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 317
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 318
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private setContentViewsAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    .line 310
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    .line 311
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 312
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->setAlpha(F)V

    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setActionMenuViewAlphaIfNeeded(F)V

    return-void
.end method

.method private setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 449
    instance-of p0, p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    .line 450
    move-object p0, p1

    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 452
    :cond_0
    instance-of p0, p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz p0, :cond_1

    .line 453
    check-cast p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    :cond_1
    return-void
.end method

.method private setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    .line 604
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    move v0, p1

    .line 606
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 607
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 608
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 609
    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 610
    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpDummyToolbarIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 590
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 594
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 595
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 596
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0x8

    .line 599
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private startHideAnimationCollapse()Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 179
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method private startHideAnimationTranslate()Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 234
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 235
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method private startShowAnimationExpand()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 146
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 149
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    .line 150
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setUpDummyToolbarIfNeeded()V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 151
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    .line 152
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 154
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startShowAnimationTranslate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 205
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/search/SearchView;)V

    const-wide/16 v2, 0x96

    .line 204
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/search/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 209
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancelBackProgress()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 670
    invoke-virtual {v0, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->cancelBackProgress(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public finishBackProgress()V
    .locals 4

    .line 655
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->hide()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 658
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->finishBackProgress(JLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 661
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    .line 662
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method getBackHelper()Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-object p0
.end method

.method hide()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationCollapse()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationTranslate()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$getRootViewAnimator$2$com-google-android-material-search-SearchViewAnimationHelper(FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 357
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-static {p1, p2, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 358
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(Landroid/graphics/Rect;F)V

    return-void
.end method

.method synthetic lambda$startShowAnimationExpand$0$com-google-android-material-search-SearchViewAnimationHelper()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    .line 156
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method synthetic lambda$startShowAnimationTranslate$1$com-google-android-material-search-SearchViewAnimationHelper()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setTranslationY(F)V

    const/4 v0, 0x1

    .line 212
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onHandleBackInvoked()Landroidx/activity/BackEventCompat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    .line 650
    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->onHandleBackInvoked()Landroidx/activity/BackEventCompat;

    move-result-object p0

    return-object p0
.end method

.method setSearchBar(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    return-void
.end method

.method show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationExpand()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationTranslate()V

    :goto_0
    return-void
.end method

.method startBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 616
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->startBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;)V

    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 3

    .line 621
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 625
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->updateBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 628
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 629
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 633
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    .line 640
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    .line 641
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    goto :goto_0

    .line 644
    :cond_3
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    long-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-long p0, p1

    .line 643
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :goto_0
    return-void
.end method
