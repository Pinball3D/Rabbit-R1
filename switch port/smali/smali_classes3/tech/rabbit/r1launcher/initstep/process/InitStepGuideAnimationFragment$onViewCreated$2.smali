.class public final Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InitStepGuideAnimationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "tech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationRepeat",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;

    .line 54
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;

    .line 56
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->access$getPartBRepeatCount$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->access$setPartBRepeatCount$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;I)V

    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->access$getPartBRepeatCount$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;

    .line 57
    invoke-static {p0}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->access$getTvClickToContinue$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "tvClickToContinue"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
