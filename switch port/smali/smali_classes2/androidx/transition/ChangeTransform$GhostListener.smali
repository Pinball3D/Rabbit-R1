.class Landroidx/transition/ChangeTransform$GhostListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mGhostView:Landroidx/transition/GhostView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/transition/GhostView;)V
    .locals 0

    .line 525
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostView;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    .line 532
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    iget-object p1, p0, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 533
    invoke-static {p1}, Landroidx/transition/GhostViewUtils;->removeGhost(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 534
    sget v0, Landroidx/transition/R$id;->transition_transform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 535
    sget p1, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostView;

    const/4 p1, 0x4

    .line 540
    invoke-interface {p0, p1}, Landroidx/transition/GhostView;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostView;

    const/4 p1, 0x0

    .line 545
    invoke-interface {p0, p1}, Landroidx/transition/GhostView;->setVisibility(I)V

    return-void
.end method
