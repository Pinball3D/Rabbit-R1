.class public final Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;
.super Landroidx/fragment/app/Fragment;
.source "InitStepGuideAnimationFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitStepGuideAnimationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitStepGuideAnimationFragment.kt\ntech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,98:1\n262#2,2:99\n95#3,14:101\n*S KotlinDebug\n*F\n+ 1 InitStepGuideAnimationFragment.kt\ntech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment\n*L\n84#1:99,2\n88#1:101,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;",
        "()V",
        "lavAnimatorPartA",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "lavAnimatorPartB",
        "lavAnimatorPartC",
        "partBRepeatCount",
        "",
        "tvClickToContinue",
        "Landroid/widget/TextView;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
        "onKeyUp",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onViewCreated",
        "view",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private lavAnimatorPartA:Lcom/airbnb/lottie/LottieAnimationView;

.field private lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

.field private lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

.field private partBRepeatCount:I

.field private tvClickToContinue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_init_step_guide_animation:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getLavAnimatorPartA$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartA:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static final synthetic access$getLavAnimatorPartB$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static final synthetic access$getLavAnimatorPartC$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static final synthetic access$getPartBRepeatCount$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)I
    .locals 0

    .line 21
    iget p0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->partBRepeatCount:I

    return p0
.end method

.method public static final synthetic access$getTvClickToContinue$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->tvClickToContinue:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setPartBRepeatCount$p(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;I)V
    .locals 0

    .line 21
    iput p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->partBRepeatCount:I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    sget p2, Ltech/rabbit/r1launcher/R$id;->lav_animator_part_a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartA:Lcom/airbnb/lottie/LottieAnimationView;

    .line 37
    sget p2, Ltech/rabbit/r1launcher/R$id;->lav_animator_part_b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

    .line 38
    sget p2, Ltech/rabbit/r1launcher/R$id;->lav_animator_part_c:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

    .line 40
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_click_to_continue:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->tvClickToContinue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartA:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "lavAnimatorPartA"

    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    const-string v0, "lavAnimatorPartB"

    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    const-string v0, "lavAnimatorPartC"

    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener$DefaultImpls;->onKeyDown(Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 2

    .line 82
    sget-object p2, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const-string p1, "lavAnimatorPartB"

    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_2

    const-string p1, "lavAnimatorPartC"

    .line 85
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->tvClickToContinue:Landroid/widget/TextView;

    if-nez p1, :cond_3

    const-string p1, "tvClickToContinue"

    .line 86
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p2, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 107
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onKeyUp$lambda$2$$inlined$addListener$default$1;

    invoke-direct {v0, p0, p1}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onKeyUp$lambda$2$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;Landroid/animation/ObjectAnimator;)V

    .line 113
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x12c

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartA:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "lavAnimatorPartA"

    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$1;-><init>(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_1

    const-string p1, "lavAnimatorPartB"

    .line 54
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;->lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_2

    const-string p1, "lavAnimatorPartC"

    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    new-instance p1, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$3;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment$onViewCreated$3;-><init>(Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
