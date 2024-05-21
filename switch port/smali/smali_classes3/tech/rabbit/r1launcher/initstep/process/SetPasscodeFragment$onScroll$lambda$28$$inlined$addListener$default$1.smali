.class public final Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 SetPasscodeFragment.kt\ntech/rabbit/r1launcher/initstep/process/SetPasscodeFragment\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,137:1\n99#2:138\n289#3,4:139\n98#4:143\n97#5:144\n*E\n"
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
.method public constructor <init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

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
    .locals 1

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    const/4 v0, 0x0

    .line 139
    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->access$setAnimator$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 141
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
