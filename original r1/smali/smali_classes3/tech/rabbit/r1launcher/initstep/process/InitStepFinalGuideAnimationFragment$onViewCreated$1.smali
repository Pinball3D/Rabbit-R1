.class public final Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment$onViewCreated$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InitStepFinalGuideAnimationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "tech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment$onViewCreated$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment$onViewCreated$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;

    .line 62
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment$onViewCreated$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;

    .line 64
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;->access$getCurrentAnimationResId$p(Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;)I

    move-result p1

    sget v0, Ltech/rabbit/r1launcher/R$raw;->animation_init_step_final_guide_a:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment$onViewCreated$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;

    .line 67
    invoke-static {p0}, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;->access$getLavAnimator1$p(Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "lavAnimator1"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 68
    :cond_1
    sget v0, Ltech/rabbit/r1launcher/R$raw;->animation_init_step_final_guide_b:I

    const/4 v1, -0x1

    .line 66
    invoke-static {p0, p1, v0, v1}, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;->access$playAnimation(Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;Lcom/airbnb/lottie/LottieAnimationView;II)V

    return-void
.end method
