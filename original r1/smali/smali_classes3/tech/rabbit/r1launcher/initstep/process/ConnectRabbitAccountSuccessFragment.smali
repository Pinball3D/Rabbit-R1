.class public final Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;
.super Landroidx/fragment/app/Fragment;
.source "ConnectRabbitAccountSuccessFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;",
        "()V",
        "lastClickTime",
        "",
        "username",
        "",
        "onKeyUp",
        "",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setUsername",
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

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_connect_rabbit_account_success:I

    .line 15
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener$DefaultImpls;->onKeyDown(Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 6

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->lastClickTime:J

    .line 46
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v0, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz v0, :cond_1

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    return-void

    .line 48
    :cond_2
    sget-object v0, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 50
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    .line 51
    sget-object p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    invoke-virtual {p2, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectNetwork(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoGuidePasscode()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x13

    const/4 v1, 0x2

    if-ne p1, v0, :cond_5

    .line 56
    sget p1, Ltech/rabbit/r1launcher/R$string;->text_init_step_1_name:I

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack(I)V

    .line 57
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->requireView()Landroid/view/View;

    move-result-object p0

    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const/high16 p1, 0x41c00000    # 24.0f

    .line 59
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 62
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    .line 63
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->requireView()Landroid/view/View;

    move-result-object p0

    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 65
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->requireView()Landroid/view/View;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 p2, 0x2

    const/high16 v0, 0x41f00000    # 30.0f

    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 30
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->requireView()Landroid/view/View;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    .line 32
    sget v0, Ltech/rabbit/r1launcher/R$string;->text_goto_rabbit_activate_account_success:I

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->username:Ljava/lang/String;

    .line 33
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 31
    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 1

    .line 71
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->username:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
