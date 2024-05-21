.class public final Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 SetPasscodeFragment.kt\ntech/rabbit/r1launcher/initstep/process/SetPasscodeFragment\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,137:1\n99#2:138\n422#3,5:139\n417#3,3:145\n420#3:150\n98#4:144\n262#5,2:148\n*S KotlinDebug\n*F\n+ 1 SetPasscodeFragment.kt\ntech/rabbit/r1launcher/initstep/process/SetPasscodeFragment\n*L\n419#1:148,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/animation/AnimatorKt$addListener$listener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animator",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "core-ktx_release"
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
.field final synthetic $this_apply$inlined:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    .line 139
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->access$getTvSuccessOrWaiting$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "tvSuccessOrWaiting"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    sget v1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_passcode_has_been_set_successfully:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 141
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    .line 142
    invoke-static {p0, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->access$setAnimator$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    .line 145
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->access$getNumberPickerView$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "numberPickerView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->reset()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    .line 146
    sget v1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_set_codes_did_not_match:I

    invoke-static {p1, v1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->access$setTextToTipsView(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    .line 147
    invoke-static {p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->access$getTvRetry$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "tvRetry"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    check-cast v0, Landroid/view/View;

    const/4 p0, 0x0

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
