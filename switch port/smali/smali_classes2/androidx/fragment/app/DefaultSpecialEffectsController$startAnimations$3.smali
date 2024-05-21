.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3",
        "Landroid/view/animation/Animation$AnimationListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationStart",
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

.field final synthetic $operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field final synthetic $viewToAnimate:Landroid/view/View;

.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;


# direct methods
.method public static synthetic $r8$lambda$e4JYQPCwrudQZpKmEdhGp1_4AOE(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->onAnimationEnd$lambda$0(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onAnimationEnd$lambda$0(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$animationInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 273
    invoke-virtual {p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 271
    invoke-virtual {p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$viewToAnimate:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    .line 275
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animation from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " has ended."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    .line 276
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 260
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animation from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " has reached onAnimationStart."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    .line 261
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
