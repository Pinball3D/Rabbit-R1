.class public final Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;
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
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,137:1\n99#2:138\n361#3,6:139\n355#3,6:146\n98#4:145\n*E\n"
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

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

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
    .locals 3

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 139
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    move-result-object p1

    const-string v0, "numberPickerView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 140
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->reset()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 141
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 143
    invoke-static {p0, v1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setAnimator$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 11

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 146
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvConfirmPasscode$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "tvConfirmPasscode"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 147
    invoke-static {v1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getConfirmedPasscodeContainer$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ""

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 149
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvContinue$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "tvContinue"

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 150
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvContinue$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    const/4 p0, 0x2

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
