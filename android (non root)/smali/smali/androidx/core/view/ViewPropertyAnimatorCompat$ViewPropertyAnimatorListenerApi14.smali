.class Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    const/high16 p0, 0x7e000000

    .line 109
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 111
    instance-of v0, p0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 112
    check-cast p0, Landroidx/core/view/ViewPropertyAnimatorListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 115
    invoke-interface {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 83
    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 84
    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 85
    iput v2, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    :cond_0
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 90
    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 91
    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 92
    iput-object v1, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 93
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2

    .line 98
    move-object v1, v0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    :cond_2
    if-eqz v1, :cond_3

    .line 101
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 62
    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    .line 63
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 65
    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 66
    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    iget-object p0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 67
    iput-object v2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 68
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 p0, 0x7e000000

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 72
    instance-of v0, p0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_2

    .line 73
    move-object v2, p0

    check-cast v2, Landroidx/core/view/ViewPropertyAnimatorListener;

    :cond_2
    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v2, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_3
    return-void
.end method
