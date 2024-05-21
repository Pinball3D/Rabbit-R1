.class final Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;
.super Landroidx/fragment/app/SpecialEffectsController$Operation;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentStateManagerOperation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;",
        "Landroidx/fragment/app/SpecialEffectsController$Operation;",
        "finalState",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$State;",
        "lifecycleImpact",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;",
        "fragmentStateManager",
        "Landroidx/fragment/app/FragmentStateManager;",
        "cancellationSignal",
        "Landroidx/core/os/CancellationSignal;",
        "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V",
        "complete",
        "",
        "onStart",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fragmentStateManager:Landroidx/fragment/app/FragmentStateManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .locals 2

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleImpact"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancellationSignal"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "fragmentStateManager.fragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .line 663
    invoke-super {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete()V

    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const-string v2, " for Fragment "

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    const-string v5, "fragmentStateManager.fragment"

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 624
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 627
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 628
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestFocus: Saved focused view "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "this.fragment.requireView()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 640
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->addViewToContainer()V

    .line 641
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 645
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpg-float p0, p0, v3

    if-nez p0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x4

    .line 646
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 648
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 649
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroidx/fragment/app/FragmentStateManager;

    .line 650
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const-string v1, "fragment.requireView()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Clearing focus "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " on view "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 653
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_5
    :goto_0
    return-void
.end method
