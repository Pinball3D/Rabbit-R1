.class Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectAndroidQ(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Landroid/net/wifi/ScanResult;Ljava/lang/String;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

.field final synthetic val$scanResult:Landroid/net/wifi/ScanResult;

.field final synthetic val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iput-object p3, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$scanResult:Landroid/net/wifi/ScanResult;

    iput-object p5, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 430
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAvailable$0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 0

    .line 449
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$onAvailable$1(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V
    .locals 1

    .line 449
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p1

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 450
    invoke-interface {p2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->successfulConnect()V

    goto :goto_0

    .line 452
    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p2, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 433
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string v0, "AndroidQ+ connected to wifi "

    .line 435
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->bindProcessToNetwork(Landroid/net/Network;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$scanResult:Landroid/net/wifi/ScanResult;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 448
    new-instance v2, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 468
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p0, "onLost"

    .line 470
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->unbindProcessFromNetwork()V

    .line 474
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->disconnect()V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    .line 459
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "AndroidQ+ could not connect to wifi"

    .line 461
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 463
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->USER_CANCELLED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    return-void
.end method
