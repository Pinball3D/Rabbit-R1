.class public final Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;
.super Landroidx/fragment/app/Fragment;
.source "ConnectWifiSuccessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectWifiSuccessFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectWifiSuccessFragment.kt\ntech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,28:1\n193#2,3:29\n*S KotlinDebug\n*F\n+ 1 ConnectWifiSuccessFragment.kt\ntech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment\n*L\n22#1:29,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "ssid",
        "",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setSSID",
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
.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_connect_wifi_success:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_connect_success:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$string;->text_connect_wifi_success:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;->ssid:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "ssid"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p2, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz p2, :cond_1

    move-object v4, p0

    check-cast v4, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    :cond_1
    if-nez v4, :cond_2

    return-void

    .line 29
    :cond_2
    new-instance p0, Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment$onViewCreated$$inlined$postDelayed$1;

    invoke-direct {p0, v4}, Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment$onViewCreated$$inlined$postDelayed$1;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v0, 0x4b0

    .line 30
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setSSID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;->ssid:Ljava/lang/String;

    return-void
.end method
