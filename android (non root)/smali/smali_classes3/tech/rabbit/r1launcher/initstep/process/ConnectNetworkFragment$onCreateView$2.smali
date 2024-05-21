.class public final Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "ConnectNetworkFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "tech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onCreateView$2",
        "Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;",
        "onVerifySucceed",
        "",
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


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onCreateView$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifySucceed()V
    .locals 2

    .line 147
    sget-object v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->Companion:Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onCreateView$2;->this$0:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;->launch(Landroid/content/Context;)V

    return-void
.end method
