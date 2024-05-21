.class Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 1

    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iput p5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iput p6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iput p7, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    .line 2424
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2425
    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2432
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2433
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    .line 2434
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2447
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2486
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2479
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2438
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    .line 2442
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2443
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public update()V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2460
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2465
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    :goto_1
    return-void
.end method
