.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"

# interfaces
.implements Landroidx/customview/widget/Openable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.slidingpanelayout.widget.SlidingPaneLayout"

.field public static final LOCK_MODE_LOCKED:I = 0x3

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x2

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x1

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"

.field private static sEdgeSizeUsingSystemGestureInsets:Z


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private mDisplayListReflectionLoaded:Z

.field final mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field mFoldingFeature:Landroidx/window/layout/FoldingFeature;

.field private mFoldingFeatureObserver:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

.field private mGetDisplayList:Ljava/lang/reflect/Method;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private mLockMode:I

.field private mOnFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;

.field private mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

.field private final mPanelSlideListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;",
            ">;"
        }
    .end annotation
.end field

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mRecreateDisplayList:Ljava/lang/reflect/Field;

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, p1, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 324
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 181
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListeners:Ljava/util/List;

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$1;

    invoke-direct {v0, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$1;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOnFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 328
    invoke-virtual {p0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 330
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {p2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 331
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 333
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {p2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-static {p0, p3, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float/2addr v0, p3

    .line 334
    invoke-virtual {p2, v0}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 336
    invoke-static {p1}, Landroidx/window/layout/WindowInfoTracker;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object p2

    .line 337
    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 338
    new-instance p3, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

    invoke-direct {p3, p2, p1}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;-><init>(Landroidx/window/layout/WindowInfoTracker;Ljava/util/concurrent/Executor;)V

    .line 340
    invoke-direct {p0, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setFoldingFeatureObserver(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;)V

    return-void
.end method

.method private closePane(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1020
    invoke-virtual {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    const/4 p0, 0x1

    return p0
.end method

.method private static getActivityOrNull(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1905
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 1906
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1907
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 1909
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFoldBoundsInView(Landroidx/window/layout/FoldingFeature;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1885
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1887
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    .line 1888
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    aget v7, v0, v4

    .line 1889
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v7, p1

    invoke-direct {v1, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1890
    new-instance p1, Landroid/graphics/Rect;

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1893
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    .line 1895
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    aget p0, v0, v2

    neg-int p0, p0

    aget v0, v0, v4

    neg-int v0, v0

    .line 1898
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method private static getMinimumWidth(Landroid/view/View;)I
    .locals 1

    .line 796
    instance-of v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    if-eqz v0, :cond_0

    .line 797
    check-cast p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result p0

    return p0

    .line 799
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getSystemGestureInsets()Landroidx/core/graphics/Insets;
    .locals 1

    sget-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1199
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static measureChildHeight(Landroid/view/View;II)I
    .locals 3

    .line 804
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 806
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v1, :cond_0

    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 809
    iget p0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {p1, p2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildMeasureSpec(III)I

    move-result p0

    goto :goto_0

    .line 813
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    .line 812
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private openPane(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1031
    invoke-virtual {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return v1
.end method

.method private parallaxOtherViews(F)V
    .locals 8

    .line 1403
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1404
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1406
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v7, v6

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v5, p1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    if-eqz v0, :cond_1

    neg-int v4, v4

    .line 1414
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setFoldingFeatureObserver(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeatureObserver:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOnFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;

    .line 346
    invoke-virtual {p1, p0}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->setOnFoldingFeatureChangeListener(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;)V

    return-void
.end method

.method private splitViewPositions()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1858
    invoke-interface {v0}, Landroidx/window/layout/FoldingFeature;->isSeparating()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 1863
    invoke-interface {v0}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 1867
    invoke-interface {v0}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 1868
    invoke-static {v0, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getFoldBoundsInView(Landroidx/window/layout/FoldingFeature;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 1872
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v3

    .line 1873
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1874
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1875
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1876
    new-instance v3, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1877
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v5, p0

    invoke-direct {v3, v0, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1878
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 0

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListeners:Ljava/util/List;

    .line 448
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 560
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 562
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;-><init>(Landroid/view/View;)V

    .line 563
    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 566
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1430
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1431
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1432
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1433
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1434
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 1439
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1440
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 1441
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 1442
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 1443
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 1442
    invoke-virtual/range {v6 .. v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 1449
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, p3

    goto :goto_1

    :cond_2
    move v1, p3

    neg-int v1, v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public canSlide()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1474
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public close()V
    .locals 0

    .line 1079
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public closePane()Z
    .locals 1

    const/4 v0, 0x0

    .line 1089
    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(I)Z

    move-result p0

    return p0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    .line 1292
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 1294
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    return-void

    .line 1298
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListeners:Ljava/util/List;

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 477
    invoke-interface {v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    .line 479
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListeners:Ljava/util/List;

    .line 469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 470
    invoke-interface {v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    .line 472
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListeners:Ljava/util/List;

    .line 463
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 464
    invoke-interface {v1, p1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1369
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1370
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1378
    :goto_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    .line 1384
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1385
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1387
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1390
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1391
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p0

    add-int/2addr v4, p0

    goto :goto_2

    .line 1394
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p0

    sub-int v1, p0, v4

    move v4, p0

    move p0, v1

    .line 1398
    :goto_2
    invoke-virtual {v0, p0, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1399
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1152
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1153
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    .line 1155
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 1156
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 1159
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    move-result v2

    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x2

    .line 1163
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 1164
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 1167
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    move-result v2

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    .line 1171
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 1173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_3

    .line 1175
    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1177
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1178
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1179
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1181
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1183
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1186
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 1188
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1462
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1479
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1467
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 1468
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1469
    :cond_0
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public getCoveredFadeColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return p0
.end method

.method public final getLockMode()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLockMode:I

    return p0
.end method

.method public getParallaxDistance()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    return p0
.end method

.method public getSliderFadeColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return p0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .locals 0

    .line 1211
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1456
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_1

    .line 1457
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz p1, :cond_1

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isLayoutRtlSupport()Z
    .locals 1

    .line 1851
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSlideable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 580
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeatureObserver:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getActivityOrNull(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeatureObserver:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

    .line 585
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->registerLayoutStateChangeCallback(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 592
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeatureObserver:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->unregisterLayoutStateChangeCallback()V

    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 597
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 599
    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 601
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 921
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 923
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 926
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 925
    invoke-virtual {v3, v1, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_0
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    if-ne v0, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 958
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v0, v4

    .line 960
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v1, v4

    .line 961
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 962
    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 964
    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v3

    :cond_4
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    .line 950
    invoke-virtual {v4, v5, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 951
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    :goto_1
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 971
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 936
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    return v3

    :cond_9
    :goto_4
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 931
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 932
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 820
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    sub-int v2, p4, p2

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    :goto_0
    if-eqz v1, :cond_1

    .line 823
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    .line 824
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_2
    iput v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    :cond_3
    move v9, v3

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_b

    .line 835
    invoke-virtual {v0, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 837
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4

    move v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_9

    .line 841
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 843
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 846
    iget-boolean v14, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v14, :cond_7

    .line 847
    iget v14, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v15, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    sub-int v15, v2, v4

    .line 848
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v16

    sub-int v16, v16, v9

    sub-int v14, v16, v14

    iput v14, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    if-eqz v1, :cond_5

    .line 850
    iget v7, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    :cond_5
    iget v7, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_4
    add-int v16, v9, v7

    add-int v16, v16, v14

    .line 851
    div-int/lit8 v17, v13, 0x2

    add-int v8, v16, v17

    if-le v8, v15, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    iput-boolean v8, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    int-to-float v8, v14

    iget v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v7, v8

    add-int/2addr v9, v7

    int-to-float v7, v8

    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    move v8, v9

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v7, :cond_8

    iget v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v7, :cond_8

    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    int-to-float v7, v7

    mul-float/2addr v8, v7

    float-to-int v7, v8

    move v8, v3

    goto :goto_6

    :cond_8
    const/high16 v9, 0x3f800000    # 1.0f

    move v8, v3

    const/4 v7, 0x0

    :goto_6
    if-eqz v1, :cond_9

    sub-int v12, v2, v8

    add-int/2addr v12, v7

    sub-int v7, v12, v13

    goto :goto_7

    :cond_9
    sub-int v7, v8, v7

    add-int v12, v7, v13

    .line 873
    :goto_7
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 874
    invoke-virtual {v11, v7, v5, v12, v13}, Landroid/view/View;->layout(IIII)V

    iget-object v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    if-eqz v7, :cond_a

    .line 880
    invoke-interface {v7}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v7

    sget-object v12, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    if-ne v7, v12, :cond_a

    iget-object v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 881
    invoke-interface {v7}, Landroidx/window/layout/FoldingFeature;->isSeparating()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFoldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 882
    invoke-interface {v7}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    .line 884
    :goto_8
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v11, v7

    add-int/2addr v3, v11

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    goto/16 :goto_3

    :cond_b
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_c

    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_c

    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 890
    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_c
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 893
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 606
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 607
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 608
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 609
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-eq v4, v6, :cond_1

    if-eq v4, v7, :cond_0

    move v5, v8

    :goto_0
    move v9, v5

    goto :goto_1

    .line 615
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v5, v9

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v5, v9

    move v9, v5

    move v5, v8

    .line 624
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v10

    sub-int v10, v3, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 626
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_2

    const-string v12, "SlidingPaneLayout"

    const-string v13, "onMeasure: More than two child views are not supported."

    .line 629
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v12, 0x0

    iput-object v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v13, v8

    move v14, v13

    move/from16 v16, v10

    const/4 v15, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v13, v11, :cond_d

    .line 638
    invoke-virtual {v0, v13}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 639
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move/from16 v17, v3

    .line 641
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 642
    iput-boolean v8, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    goto/16 :goto_7

    .line 646
    :cond_3
    iget v3, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 647
    iget v3, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    add-float/2addr v15, v3

    .line 651
    iget v3, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v3, :cond_4

    goto/16 :goto_7

    .line 655
    :cond_4
    iget v3, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v6, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    sub-int v3, v10, v3

    .line 657
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 660
    iget v6, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_6

    if-nez v2, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    const/high16 v6, -0x80000000

    .line 661
    :goto_3
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_4

    .line 663
    :cond_6
    iget v6, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_7

    .line 664
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_4

    .line 666
    :cond_7
    iget v3, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 670
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v6, v8

    iget v8, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    .line 669
    invoke-static {v1, v6, v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 671
    invoke-virtual {v7, v3, v6}, Landroid/view/View;->measure(II)V

    .line 672
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 673
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-le v6, v5, :cond_9

    const/high16 v8, -0x80000000

    if-ne v4, v8, :cond_8

    .line 677
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_5

    :cond_8
    if-nez v4, :cond_9

    move v5, v6

    :cond_9
    :goto_5
    move/from16 v8, v16

    sub-int v16, v8, v3

    if-nez v13, :cond_a

    goto :goto_7

    :cond_a
    if-gez v16, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    .line 688
    :goto_6
    iput-boolean v3, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/2addr v14, v3

    .line 689
    iget-boolean v3, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v3, :cond_c

    iput-object v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    :cond_c
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v17

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_d
    move/from16 v17, v3

    move/from16 v8, v16

    if-nez v14, :cond_e

    const/4 v2, 0x0

    cmpl-float v3, v15, v2

    if-lez v3, :cond_15

    :cond_e
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v11, :cond_15

    .line 699
    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 700
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_f

    const/16 v16, 0x0

    goto/16 :goto_c

    .line 704
    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 705
    iget v12, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v12, :cond_10

    iget v12, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_10

    const/4 v12, 0x0

    goto :goto_9

    .line 706
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    :goto_9
    if-eqz v14, :cond_11

    .line 712
    iget v13, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v7

    sub-int v7, v10, v13

    const/high16 v13, 0x40000000    # 2.0f

    .line 714
    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v6, v16

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto :goto_a

    .line 717
    :cond_11
    iget v13, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/16 v16, 0x0

    cmpl-float v13, v13, v16

    if-lez v13, :cond_12

    const/4 v13, 0x0

    .line 719
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 720
    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v6, v6

    mul-float/2addr v7, v6

    div-float/2addr v7, v15

    float-to-int v6, v7

    add-int v7, v12, v6

    const/high16 v6, 0x40000000    # 2.0f

    .line 722
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v6, v18

    goto :goto_a

    :cond_12
    const/4 v13, 0x0

    move v7, v12

    move v6, v13

    .line 725
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v19

    add-int v13, v18, v19

    .line 724
    invoke-static {v3, v1, v13}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->measureChildHeight(Landroid/view/View;II)I

    move-result v13

    if-eq v12, v7, :cond_14

    .line 727
    invoke-virtual {v3, v6, v13}, Landroid/view/View;->measure(II)V

    .line 728
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v5, :cond_14

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_13

    .line 731
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_b
    move v5, v3

    goto :goto_c

    :cond_13
    if-nez v4, :cond_14

    goto :goto_b

    :cond_14
    :goto_c
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x8

    goto/16 :goto_8

    .line 742
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitViewPositions()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1a

    if-nez v14, :cond_1a

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v11, :cond_1a

    .line 746
    invoke-virtual {v0, v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 748
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    goto :goto_f

    .line 752
    :cond_16
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 753
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 757
    iget v7, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v9, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v9

    .line 758
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 760
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 762
    invoke-virtual {v2, v12, v9}, Landroid/view/View;->measure(II)V

    .line 763
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v12

    const/high16 v15, 0x1000000

    and-int/2addr v12, v15

    const/4 v15, 0x1

    if-eq v12, v15, :cond_18

    .line 764
    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getMinimumWidth(Landroid/view/View;)I

    move-result v12

    if-eqz v12, :cond_17

    .line 765
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getMinimumWidth(Landroid/view/View;)I

    move-result v15

    if-ge v12, v15, :cond_17

    goto :goto_e

    .line 776
    :cond_17
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 778
    invoke-virtual {v2, v3, v9}, Landroid/view/View;->measure(II)V

    goto :goto_f

    :cond_18
    :goto_e
    const/high16 v12, 0x40000000    # 2.0f

    sub-int v3, v10, v7

    .line 766
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 768
    invoke-virtual {v2, v3, v9}, Landroid/view/View;->measure(II)V

    if-nez v8, :cond_19

    :goto_f
    const/4 v3, 0x1

    goto :goto_10

    :cond_19
    const/4 v3, 0x1

    .line 773
    iput-boolean v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    iput-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v14, v3

    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 784
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v1, v17

    .line 786
    invoke-virtual {v0, v1, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    iput-boolean v14, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 789
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-eqz v1, :cond_1b

    if-nez v14, :cond_1b

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 791
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    :cond_1b
    return-void
.end method

.method onPanelDragged(I)V
    .locals 4

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    return-void

    .line 1131
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 1132
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 1134
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int p1, v3, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 1137
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_3

    .line 1138
    iget v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    iget v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_1
    add-int/2addr v2, v0

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v0, :cond_4

    .line 1144
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_4
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 1147
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1495
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 1496
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1500
    :cond_0
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 1501
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1503
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    .line 1504
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_0

    .line 1506
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    .line 1508
    :goto_0
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1510
    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->mLockMode:I

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setLockMode(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1484
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1486
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1487
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_0
    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLockMode:I

    .line 1488
    iput p0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->mLockMode:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 901
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 979
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 982
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 996
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v2, v0, v2

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v3, p1, v3

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 1001
    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-int/2addr v4, v4

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    .line 1003
    invoke-virtual {v2, v3, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1005
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(I)Z

    goto :goto_0

    .line 988
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    :cond_3
    :goto_0
    return v1
.end method

.method public open()V
    .locals 0

    .line 1052
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method public openPane()Z
    .locals 1

    const/4 v0, 0x0

    .line 1062
    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(I)Z

    move-result p0

    return p0
.end method

.method public removePanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListeners:Ljava/util/List;

    .line 459
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 575
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 910
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 911
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_1
    return-void
.end method

.method setAllChildrenVisible()V
    .locals 6

    .line 529
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 530
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 531
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 532
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return-void
.end method

.method public final setLockMode(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLockMode:I

    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->removePanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    :cond_1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 359
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1310
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1344
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1

    .line 1354
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1

    .line 1364
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1043
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 4

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1269
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p2

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 1270
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz p2, :cond_1

    .line 1274
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result p2

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr p2, v1

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 1275
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1276
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float p2, p2

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    mul-float/2addr p1, v3

    add-float/2addr p2, p1

    int-to-float p1, v1

    add-float/2addr p2, p1

    sub-float/2addr v2, p2

    float-to-int p1, v2

    goto :goto_0

    .line 1278
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result p2

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    :goto_0
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 1282
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1283
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1284
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    :goto_0
    if-eqz v1, :cond_1

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 486
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v0, :cond_2

    .line 492
    invoke-static/range {p1 .. p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v8

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 501
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_8

    move-object/from16 v13, p0

    .line 502
    invoke-virtual {v13, v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v0, :cond_3

    goto :goto_8

    .line 507
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-ne v15, v6, :cond_4

    move/from16 v16, v1

    goto :goto_7

    :cond_4
    if-eqz v1, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v2

    .line 512
    :goto_4
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 511
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 513
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v1

    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v3

    .line 515
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    .line 514
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 516
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v6, v7, :cond_7

    if-lt v15, v9, :cond_7

    if-gt v0, v8, :cond_7

    if-gt v1, v10, :cond_7

    const/4 v0, 0x4

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    .line 524
    :goto_6
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_3

    :cond_8
    :goto_8
    return-void
.end method
