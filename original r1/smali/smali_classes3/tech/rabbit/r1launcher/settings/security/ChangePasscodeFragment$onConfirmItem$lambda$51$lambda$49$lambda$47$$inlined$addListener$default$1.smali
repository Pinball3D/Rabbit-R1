.class public final Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,137:1\n99#2:138\n436#3,2:139\n438#3,4:143\n431#3,3:148\n434#3:153\n262#4,2:141\n262#4,2:151\n98#5:147\n*S KotlinDebug\n*F\n+ 1 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n*L\n437#1:141,2\n433#1:151,2\n*E\n"
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

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

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

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 139
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvSuccessTip$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "tvSuccessTip"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    sget v1, Ltech/rabbit/r1launcher/R$string;->tip_settings_change_passcode_passcode_has_been_set:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 140
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvSuccess$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "tvSuccess"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    check-cast p1, Landroid/view/View;

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 144
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 145
    invoke-static {p0, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setAnimator$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 148
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "numberPickerView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->reset()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 149
    sget v1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_set_codes_did_not_match:I

    invoke-static {p1, v1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setTextToTipsView(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 150
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvRetry$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

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

    .line 151
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
