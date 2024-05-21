.class public final Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;
.super Landroidx/fragment/app/Fragment;
.source "ConnectRabbitAccountFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectRabbitAccountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectRabbitAccountFragment.kt\ntech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment\n+ 2 Html.kt\nandroidx/core/text/HtmlKt\n*L\n1#1,73:1\n39#2,5:74\n*S KotlinDebug\n*F\n+ 1 ConnectRabbitAccountFragment.kt\ntech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment\n*L\n28#1:74,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;",
        "()V",
        "lastClickTime",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_connect_rabbit_account:I

    .line 19
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener$DefaultImpls;->onKeyDown(Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 6

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->lastClickTime:J

    .line 45
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 47
    :cond_2
    sget-object v0, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 49
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    .line 50
    sget-object p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    invoke-virtual {p2, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectNetwork(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;)V

    goto :goto_1

    .line 52
    :cond_3
    new-instance p0, Lcom/google/zxing/integration/android/IntentIntegrator;

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const-string p1, "QR_CODE"

    .line 53
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    const-string p1, "scan qrcode"

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setBeepEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 56
    const-class p1, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    invoke-virtual {p0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 57
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x13

    const/4 v2, 0x2

    if-ne p1, v0, :cond_5

    .line 60
    sget p1, Ltech/rabbit/r1launcher/R$string;->text_init_step_1_name:I

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack(I)V

    .line 61
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->requireView()Landroid/view/View;

    move-result-object p0

    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/high16 p1, 0x41c00000    # 24.0f

    .line 63
    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 66
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    .line 67
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->requireView()Landroid/view/View;

    move-result-object p0

    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 69
    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->requireView()Landroid/view/View;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Ltech/rabbit/r1launcher/R$string;->text_goto_rabbit_activate_account:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3f

    const/4 v1, 0x0

    .line 78
    invoke-static {p2, v0, v1, v1}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;->requireView()Landroid/view/View;

    move-result-object p0

    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 p1, 0x2

    const/high16 p2, 0x41f00000    # 30.0f

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
