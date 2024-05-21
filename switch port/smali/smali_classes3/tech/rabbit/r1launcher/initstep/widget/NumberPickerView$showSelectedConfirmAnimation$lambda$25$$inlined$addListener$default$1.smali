.class public final Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showSelectedConfirmAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 NumberPickerView.kt\ntech/rabbit/r1launcher/initstep/widget/NumberPickerView\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 6 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,137:1\n99#2:138\n682#3,7:139\n705#3,3:149\n193#4,3:146\n98#5:152\n97#6:153\n*S KotlinDebug\n*F\n+ 1 NumberPickerView.kt\ntech/rabbit/r1launcher/initstep/widget/NumberPickerView\n*L\n688#1:146,3\n*E\n"
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

.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

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

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 139
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$getConfirmedCircleItemCount$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)I

    move-result p1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$setConfirmedCircleItemCount$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 140
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->access$getConfirmedCircleItemsLocation$p(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    .line 141
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->getOffsetX()F

    move-result v1

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->getOffsetXTemp()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->setOffsetX(F)V

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->setOffsetXTemp(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    .line 145
    check-cast p1, Landroid/view/View;

    .line 146
    new-instance v0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->this$0:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$lambda$24$$inlined$postDelayed$1;-><init>(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    .line 147
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$showSelectedConfirmAnimation$lambda$25$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/ValueAnimator;

    .line 150
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
