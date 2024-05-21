.class public final Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onKeyCodeEvent(ILandroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,137:1\n99#2:138\n243#3,4:139\n232#3,9:144\n241#3:155\n98#4:143\n262#5,2:153\n*S KotlinDebug\n*F\n+ 1 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n*L\n240#1:153,2\n*E\n"
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
.method public constructor <init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

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
    .locals 0

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    const/4 p1, 0x0

    .line 141
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setAnimator$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    const/4 v0, 0x0

    .line 144
    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setEnter4Length$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 145
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getConfirmedPasscodeContainer$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 146
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$hideBack(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 147
    sget v1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_create_a_passcode:I

    invoke-static {p1, v1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setTextToTipsView(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 148
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvContinue$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "tvContinue"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 149
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvContinue$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    const/4 v0, 0x2

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 150
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    move-result-object p1

    const-string v0, "numberPickerView"

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 151
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->reset()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 152
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvRetry$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "tvRetry"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    :goto_0
    check-cast v2, Landroid/view/View;

    const/16 p0, 0x8

    .line 153
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
