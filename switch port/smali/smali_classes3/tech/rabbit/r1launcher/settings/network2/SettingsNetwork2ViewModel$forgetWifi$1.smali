.class public final Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;
.super Ljava/lang/Object;
.source "SettingsNetwork2ViewModel.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->forgetWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;Z)V
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
        "tech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1",
        "Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;",
        "failed",
        "",
        "errorCode",
        "Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;",
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
.field final synthetic $needNotifyUI:Z

.field final synthetic $wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;


# direct methods
.method constructor <init>(ZLtech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;->$needNotifyUI:Z

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;->$wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;)V
    .locals 0

    const-string p0, "errorCode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 2

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;->$needNotifyUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    .line 255
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->access$get_wifiConnectState$p(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;->$wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Forget:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
