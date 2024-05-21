.class public Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainerCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$Api21Impl;,
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;,
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainerCompat"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    .line 496
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 498
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    .line 499
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 501
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 503
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 505
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 506
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 508
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 509
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 512
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 513
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 514
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 515
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 516
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 521
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 525
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v1, v2, v3, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    .line 529
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 530
    throw v0
.end method

.method private needsMirroring()Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0xa0

    :cond_1
    return p1
.end method


# virtual methods
.method animate(Z)V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    .line 535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    iget-wide v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    iget v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    .line 540
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long/2addr v9, v4

    long-to-int v3, v9

    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 543
    iget v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v3, v9

    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v3, v3, 0xff

    iget v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    mul-int/2addr v3, v10

    .line 545
    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v0

    goto :goto_1

    :cond_1
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    :cond_2
    :goto_0
    move v3, v8

    :goto_1
    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    iget-wide v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    .line 555
    invoke-virtual {v9, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long/2addr v10, v4

    long-to-int v3, v10

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 559
    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    mul-int/2addr v3, v5

    .line 561
    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_4
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    .line 569
    invoke-virtual {p0, p1, v1, v2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 593
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 599
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method clearMutated()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 633
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 604
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 605
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mChangingConfigurations:I

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getCurrentIndex()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    return p0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 340
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 341
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 332
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 333
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 335
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 356
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 357
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantMinimumHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 359
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 348
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 349
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantMinimumWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 351
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 405
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getOpacity()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 126
    invoke-static {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$Api21Impl;->getOutline(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 102
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 111
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 114
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->needsMirroring()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 115
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 116
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 117
    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->invalidateCache()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 370
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 243
    iget-boolean p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    return p0
.end method

.method public isStateful()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 227
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isStateful()Z

    move-result p0

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    .line 257
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 269
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    if-nez v0, :cond_0

    .line 613
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 614
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mutate()V

    .line 616
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 221
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 327
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCurrentIndex()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->setLayoutDirection(II)Z

    move-result p0

    return p0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 318
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 307
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method selectDrawable(I)Z
    .locals 9

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 430
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 436
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 442
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_0

    :cond_2
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iput-wide v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 450
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 451
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    if-eqz v0, :cond_7

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 455
    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    if-lez p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 456
    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    .line 458
    :cond_5
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    :cond_7
    :goto_1
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long p1, v0, v5

    const/4 v0, 0x1

    if-nez p1, :cond_8

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_a

    :cond_8
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_9

    .line 466
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;)V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 474
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 477
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    .line 479
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->invalidateSelf()V

    return v0
.end method

.method public setAlpha(I)V
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 137
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 232
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 233
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 235
    iget-boolean p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasColorFilter:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 164
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 165
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 1158
    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1160
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setCurrentIndex(I)V
    .locals 0

    .line 410
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->selectDrawable(I)Z

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 153
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 154
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 156
    iget-boolean p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 202
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 212
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    return-void
.end method

.method public setHotspot(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 276
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 288
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 174
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintList:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 180
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 181
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    .line 188
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintMode:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 189
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 190
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 391
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 396
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 587
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    return-void
.end method
