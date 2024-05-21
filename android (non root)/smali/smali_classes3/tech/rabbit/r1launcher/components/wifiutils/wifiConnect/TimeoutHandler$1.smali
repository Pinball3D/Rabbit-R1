.class Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;
.super Ljava/lang/Object;
.source "TimeoutHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Connection Timed out..."

    .line 25
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 27
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    .line 28
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->access$100(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->reEnableNetworkIfPossible(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    .line 30
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->access$100(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v1

    new-instance v2, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    .line 31
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->access$200(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    move-result-object v0

    invoke-interface {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->successfulConnect()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    .line 33
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->access$200(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->TIMEOUT_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    :goto_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    .line 36
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->access$300(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
