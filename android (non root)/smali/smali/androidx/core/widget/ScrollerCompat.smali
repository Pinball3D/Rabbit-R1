.class public final Landroidx/core/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mScroller:Landroid/widget/OverScroller;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 58
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/core/widget/ScrollerCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Landroidx/core/widget/ScrollerCompat;

    invoke-direct {v0, p0, p1}, Landroidx/core/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 273
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 142
    invoke-virtual {p0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result p0

    return p0
.end method

.method public fling(IIIIIIII)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 210
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 242
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public getCurrVelocity()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 130
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p0

    return p0
.end method

.method public getCurrX()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 82
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result p0

    return p0
.end method

.method public getCurrY()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 94
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result p0

    return p0
.end method

.method public getFinalX()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 104
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result p0

    return p0
.end method

.method public getFinalY()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 114
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p0

    return p0
.end method

.method public isFinished()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 70
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p0

    return p0
.end method

.method public isOverScrolled()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 334
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result p0

    return p0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 294
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 314
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 262
    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p0

    return p0
.end method

.method public startScroll(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    .line 163
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 183
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method
