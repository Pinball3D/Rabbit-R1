.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private final mDefaultEdgeSize:I

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 334
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroidx/customview/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .locals 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 342
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ViewDragHelper$2;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 396
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 401
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 402
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 403
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 404
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    return-void

    .line 390
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent view may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 3

    .line 1305
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1306
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 1308
    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1314
    invoke-virtual {p2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 1315
    aget p1, p0, p3

    or-int/2addr p1, p4

    aput p1, p0, p3

    return v1

    :cond_1
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 1318
    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1335
    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1336
    invoke-virtual {v3, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p0, p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    .line 1341
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_5

    move v0, v2

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 1343
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    move v0, v2

    :cond_7
    return v0
.end method

.method private clampMag(FFF)F
    .locals 1

    .line 716
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p2, p0, p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    cmpl-float p0, p0, p3

    if-lez p0, :cond_2

    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 0

    .line 699
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 822
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 823
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 824
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 825
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    .line 826
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 827
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 828
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    .line 836
    aput v1, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 837
    aput v1, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 838
    aput v1, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 839
    aput v1, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    .line 840
    aput v1, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 841
    aput v1, v0, p1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 842
    aput v1, v0, p1

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    :cond_1
    :goto_0
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 671
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 672
    div-int/lit8 v1, v0, 0x2

    .line 673
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 675
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, v1

    add-float/2addr v1, p0

    .line 678
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_1

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 680
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_0

    .line 682
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p3

    div-float/2addr p0, p1

    add-float/2addr p0, v0

    const/high16 p1, 0x43800000    # 256.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_0
    const/16 p1, 0x258

    .line 685
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 6

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    .line 646
    invoke-direct {p0, p4, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result p4

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    .line 647
    invoke-direct {p0, p5, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 648
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 649
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 650
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 651
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 660
    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result p2

    iget-object p4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 661
    invoke-virtual {p4, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result p0

    int-to-float p1, p2

    mul-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 1

    .line 371
    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p0

    .line 372
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 2

    .line 357
    new-instance v0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 809
    invoke-virtual {v1, v2, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p2, v0, :cond_0

    .line 814
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 725
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private dragTo(IIII)V
    .locals 10

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1455
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1456
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_0

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1458
    invoke-virtual {v2, v3, p1, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v3, p1, v0

    .line 1459
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1462
    invoke-virtual {p1, v2, p2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v2, p2, v1

    .line 1463
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_1
    move v7, p2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1469
    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 9

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    .line 847
    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 848
    new-array v1, p1, [F

    .line 849
    new-array v2, p1, [F

    .line 850
    new-array v3, p1, [F

    .line 851
    new-array v4, p1, [F

    .line 852
    new-array v5, p1, [I

    .line 853
    new-array v6, p1, [I

    .line 854
    new-array p1, p1, [I

    if-eqz v0, :cond_1

    .line 857
    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 858
    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 859
    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 860
    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 861
    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 862
    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 863
    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    iput-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    iput-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    iput-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 10

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 626
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 627
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 633
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 634
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return p1

    :cond_0
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 638
    invoke-direct/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v6

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    .line 639
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 641
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private getEdgesTouched(II)I
    .locals 3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 1530
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 1531
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 1532
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 1533
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr p1, p0

    if-le p2, p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 1

    .line 1539
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1540
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring pointerId="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewDragHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1442
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1444
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1443
    invoke-direct {p0, v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1447
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1446
    invoke-direct {p0, v1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1449
    invoke-direct {p0, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1285
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v0

    const/4 v1, 0x4

    .line 1288
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    .line 1291
    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    .line 1294
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 1299
    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1300
    invoke-virtual {p0, v0, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_3
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2

    .line 877
    invoke-direct {p0, p3}, Landroidx/customview/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 878
    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 879
    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 880
    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result p1

    aput p1, v0, p3

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6

    .line 885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 887
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 889
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 892
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 893
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 894
    aput v3, v5, v2

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 895
    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 9

    .line 554
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 556
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 557
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 558
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 559
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 560
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    .line 561
    invoke-virtual/range {v3 .. v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13

    move-object v0, p1

    .line 962
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 963
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 964
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 965
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 966
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 971
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p5, v3

    .line 972
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p6, v4

    .line 973
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 974
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v11, v6, v10

    .line 975
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v12, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    move/from16 v10, p4

    .line 974
    invoke-virtual/range {v6 .. v12}, Landroidx/customview/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    .line 981
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_3

    move/from16 v1, p4

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 541
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory()V

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 507
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 508
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void

    .line 501
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 1363
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1365
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 1388
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 1395
    aget v3, v3, p2

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 1396
    aget v4, v4, p2

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p0, p0

    int-to-float p0, p0

    cmpl-float p0, v3, p0

    if-lez p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    .line 1401
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 1403
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 11

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 765
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 766
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 767
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 768
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 769
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_0

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 772
    invoke-static {v4, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_0
    if-eqz v9, :cond_1

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 775
    invoke-static {v4, v9}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    .line 779
    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 782
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_4

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 785
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_6

    :goto_0
    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 793
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    :cond_6
    :goto_1
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p0, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 1516
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1518
    invoke-virtual {v2, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1519
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1520
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public flingCapturedView(IIII)V
    .locals 10

    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 744
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 745
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 746
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    .line 744
    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    const/4 p1, 0x2

    .line 749
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void

    .line 740
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActivePointerId()I
    .locals 0

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    return p0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object p0
.end method

.method public getDefaultEdgeSize()I
    .locals 0

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    return p0
.end method

.method public getEdgeSize()I
    .locals 0

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    return p0
.end method

.method public getMinVelocity()F
    .locals 0

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    return p0
.end method

.method public getTouchSlop()I
    .locals 0

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    return p0
.end method

.method public getViewDragState()I
    .locals 0

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    return p0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1484
    invoke-virtual {p0, v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public isEdgeTouched(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 1418
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1420
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1

    .line 1438
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p0, p0, p2

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPointerDown(I)Z
    .locals 1

    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1500
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1501
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 1503
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    .line 1132
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    :cond_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1136
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1138
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v3, 0x1

    if-eq v0, v3, :cond_12

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_6

    .line 1235
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_6

    .line 1239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_5

    .line 1241
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 1247
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1248
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v4

    float-to-int v5, v5

    .line 1249
    invoke-virtual {p0, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v4, v5, :cond_4

    .line 1250
    invoke-virtual {p0, v5, v3}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1258
    :cond_5
    :goto_2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1261
    :cond_6
    invoke-direct {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_6

    .line 1162
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1163
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1164
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1166
    invoke-direct {p0, v2, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    .line 1172
    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 1173
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 1175
    aget p1, p1, v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v2, p1, v1

    if-eqz v2, :cond_15

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    .line 1177
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_6

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    .line 1179
    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1184
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_6

    :cond_9
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_a

    const/4 p1, 0x0

    .line 1275
    invoke-direct {p0, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1277
    :cond_a
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_6

    :cond_b
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_d

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1192
    invoke-direct {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_6

    :cond_c
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1194
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1196
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1197
    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 1198
    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 1200
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1202
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1205
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_11

    .line 1207
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1210
    invoke-direct {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_4

    .line 1212
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1213
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 1214
    aget v6, v6, v1

    sub-float v6, v4, v6

    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 1215
    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1217
    invoke-direct {p0, v6, v7, v1}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    iget v8, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v8, v3, :cond_f

    goto :goto_5

    :cond_f
    float-to-int v4, v4

    float-to-int v5, v5

    .line 1223
    invoke-virtual {p0, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1224
    invoke-direct {p0, v4, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1225
    invoke-virtual {p0, v4, v1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1229
    :cond_11
    :goto_5
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_6

    :cond_12
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_13

    .line 1267
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1269
    :cond_13
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto :goto_6

    .line 1142
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1144
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 1145
    invoke-virtual {p0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1147
    invoke-direct {p0, v0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1152
    invoke-virtual {p0, v2, p1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 1154
    aget v0, v0, p1

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v2, v0, v1

    if-eqz v2, :cond_15

    iget-object p0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    .line 1156
    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_15
    :goto_6
    return-void
.end method

.method setDragState(I)V
    .locals 2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 917
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 920
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 612
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 613
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 611
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p0

    return p0

    .line 607
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 992
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    .line 998
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1002
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1004
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_10

    if-eq v2, v6, :cond_f

    if-eq v2, v4, :cond_6

    const/4 v7, 0x3

    if-eq v2, v7, :cond_f

    const/4 v7, 0x5

    if-eq v2, v7, :cond_4

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    :cond_2
    :goto_0
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1104
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1105
    invoke-direct {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto :goto_0

    .line 1028
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1029
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1030
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1032
    invoke-direct {v0, v7, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v3, :cond_5

    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 1036
    aget v1, v1, v2

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v4, v1, v3

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v1, v3

    .line 1038
    invoke-virtual {v4, v1, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    :cond_5
    if-ne v3, v4, :cond_2

    float-to-int v3, v7

    float-to-int v1, v1

    .line 1042
    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v1, v3, :cond_2

    .line 1044
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    :cond_6
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    if-nez v2, :cond_7

    goto :goto_0

    .line 1054
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_e

    .line 1056
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1059
    invoke-direct {v0, v4}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_3

    .line 1061
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1062
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 1063
    aget v9, v9, v4

    sub-float v9, v7, v9

    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 1064
    aget v10, v10, v4

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    .line 1066
    invoke-virtual {v0, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1067
    invoke-direct {v0, v7, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_b

    .line 1074
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int v13, v11, v12

    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1076
    invoke-virtual {v14, v7, v13, v12}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v12

    .line 1078
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int v15, v13, v14

    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1080
    invoke-virtual {v5, v7, v15, v14}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v5

    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1082
    invoke-virtual {v14, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 1083
    invoke-virtual {v15, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v15

    if-eqz v14, :cond_a

    if-lez v14, :cond_b

    if-ne v12, v11, :cond_b

    :cond_a
    if-eqz v15, :cond_e

    if-lez v15, :cond_b

    if-ne v5, v13, :cond_b

    goto :goto_4

    .line 1089
    :cond_b
    invoke-direct {v0, v9, v10, v4}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    iget v5, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v5, v6, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    .line 1095
    invoke-virtual {v0, v7, v4}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1099
    :cond_e
    :goto_4
    invoke-direct/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1111
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1008
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1009
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v5, 0x0

    .line 1010
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1011
    invoke-direct {v0, v2, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 1013
    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v2, v3, :cond_11

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v3, v4, :cond_11

    .line 1017
    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    :cond_11
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 1020
    aget v2, v2, v1

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v4, v2, v3

    if-eqz v4, :cond_12

    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v2, v3

    .line 1022
    invoke-virtual {v4, v2, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_12
    :goto_5
    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v6, :cond_13

    move v5, v6

    :cond_13
    return v5
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0

    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    const/4 p1, 0x0

    .line 584
    invoke-direct {p0, p2, p3, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return p1
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 941
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 943
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
