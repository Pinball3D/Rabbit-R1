.class Landroidx/recyclerview/widget/DefaultItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    .line 386
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 397
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 398
    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 399
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 389
    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
