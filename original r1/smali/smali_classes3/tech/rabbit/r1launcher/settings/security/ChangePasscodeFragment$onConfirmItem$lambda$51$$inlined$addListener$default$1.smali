.class public final Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;
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
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 7 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,137:1\n99#2:138\n416#3,14:139\n442#3:167\n443#3:169\n412#3,2:171\n414#3:175\n95#4,14:153\n1#5:168\n98#6:170\n262#7,2:173\n*S KotlinDebug\n*F\n+ 1 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n*L\n429#1:153,14\n413#1:173,2\n*E\n"
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

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

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

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    const/4 v0, 0x0

    .line 141
    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setAnimator$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 143
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 146
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$7$2$1$1;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$7$2$1$1;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/animation/Animator;

    .line 159
    new-instance v1, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    invoke-direct {v1, v2, p1, v2}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 165
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 167
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$setAnimator$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 171
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvSuccessTip$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "tvSuccessTip"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    .line 172
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->access$getTvSuccess$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "tvSuccess"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    check-cast v0, Landroid/view/View;

    const/16 p0, 0x8

    .line 173
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
