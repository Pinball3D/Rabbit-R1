.class public final Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectWifiFailure(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 InitStepActivity.kt\ntech/rabbit/r1launcher/initstep/InitStepActivity\n*L\n1#1,432:1\n283#2,9:433\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $errorCode$inlined:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field final synthetic $password$inlined:Ljava/lang/String;

.field final synthetic $wifi$inlined:Ltech/rabbit/r1launcher/initstep/model/Wifi;

.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->$wifi$inlined:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->$password$inlined:Ljava/lang/String;

    iput-object p4, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->$errorCode$inlined:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    const/4 v1, 0x0

    .line 433
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->access$setLandscape$p(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Z)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    .line 435
    new-instance v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->$wifi$inlined:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iget-object v3, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->$password$inlined:Ljava/lang/String;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;->$errorCode$inlined:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-direct {v1, v2, v3, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;-><init>(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    check-cast v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    .line 434
    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectNetwork(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;)V

    return-void
.end method
