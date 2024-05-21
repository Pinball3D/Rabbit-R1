.class public final Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;
.super Landroidx/fragment/app/Fragment;
.source "GuidePasscodeFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J&\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;",
        "()V",
        "lastClickTime",
        "",
        "tvContinue",
        "Landroid/widget/TextView;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyUp",
        "",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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
.field private lastClickTime:J

.field private tvContinue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_guide_passcode:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 26
    sget p3, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p3, :cond_0

    const-string p0, "tvContinue"

    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener$DefaultImpls;->onKeyDown(Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 6

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->lastClickTime:J

    const/16 p2, 0x13

    const-string v0, "tvContinue"

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    .line 40
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz p2, :cond_1

    check-cast p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    sget p2, Ltech/rabbit/r1launcher/R$string;->text_init_step_2_name:I

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack(I)V

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p0, :cond_3

    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_6

    :cond_4
    const/16 p2, 0x14

    const/4 v2, 0x1

    if-ne p1, p2, :cond_8

    .line 43
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz p2, :cond_5

    check-cast p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    :cond_6
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p0, :cond_7

    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v1, p0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_6

    .line 45
    :cond_8
    sget-object p2, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 46
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz p2, :cond_9

    check-cast p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_4

    :cond_9
    move-object p1, v1

    :goto_4
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p1

    if-nez p1, :cond_b

    .line 47
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz p1, :cond_a

    move-object v1, p0

    check-cast v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    :cond_a
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoSetPasscode()V

    goto :goto_6

    .line 49
    :cond_b
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz p2, :cond_c

    check-cast p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_5

    :cond_c
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    .line 50
    :cond_d
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.InitStepActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    invoke-static {p0, v1, v2, v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectAccountSuccess$default(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_e
    :goto_6
    return-void
.end method
