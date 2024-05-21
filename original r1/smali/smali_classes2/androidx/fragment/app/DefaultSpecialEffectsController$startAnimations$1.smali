.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "anim",
        "Landroid/animation/Animator;",
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
.field final synthetic $animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

.field final synthetic $isHideOperation:Z

.field final synthetic $operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field final synthetic $viewToAnimate:Landroid/view/View;

.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$viewToAnimate:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$isHideOperation:Z

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p5, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 185
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 187
    invoke-virtual {p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$viewToAnimate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$isHideOperation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 191
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$viewToAnimate:Landroid/view/View;

    const-string v1, "viewToAnimate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 193
    invoke-virtual {p1}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    const/4 p1, 0x2

    .line 194
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " has ended."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    .line 195
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
