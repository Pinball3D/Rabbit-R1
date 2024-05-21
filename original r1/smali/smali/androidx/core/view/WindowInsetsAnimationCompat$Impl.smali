.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# instance fields
.field private mAlpha:F

.field private final mDurationMillis:J

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mTypeMask:I


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mTypeMask:I

    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mDurationMillis:J

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mAlpha:F

    return p0
.end method

.method public getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mDurationMillis:J

    return-wide v0
.end method

.method public getFraction()F
    .locals 0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    return p0
.end method

.method public getInterpolatedFraction()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    .line 558
    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    return p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getTypeMask()I
    .locals 0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mTypeMask:I

    return p0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mAlpha:F

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    return-void
.end method
