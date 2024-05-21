.class public final Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;
.super Ljava/lang/Object;
.source "InitStepActivity.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectToWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "tech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1",
        "Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;",
        "failed",
        "",
        "errorCode",
        "Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;",
        "success",
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
.field final synthetic $password:Ljava/lang/String;

.field final synthetic $wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->$wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->$password:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V
    .locals 2

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->$wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->$password:Ljava/lang/String;

    .line 381
    invoke-virtual {v0, v1, p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectWifiFailure(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    return-void
.end method

.method public success()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->this$0:Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;->$wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 377
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectWifiSuccess(Ljava/lang/String;)V

    return-void
.end method
