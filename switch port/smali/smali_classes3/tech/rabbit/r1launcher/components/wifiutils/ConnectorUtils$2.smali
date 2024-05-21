.class Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectAndroidQHidden(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

.field final synthetic val$ssid:Ljava/lang/String;

.field final synthetic val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$connectivityManager:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iput-object p3, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$ssid:Ljava/lang/String;

    iput-object p5, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 513
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAvailable$0(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V
    .locals 0

    .line 530
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 531
    invoke-interface {p2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->successfulConnect()V

    goto :goto_0

    .line 533
    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p2, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 516
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string v0, "AndroidQ+ connected to wifi "

    .line 517
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->bindProcessToNetwork(Landroid/net/Network;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 525
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$ssid:Ljava/lang/String;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 529
    new-instance v2, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 561
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    const-string p0, "onLost"

    .line 562
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p0, "onLost"

    .line 551
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->unbindProcessFromNetwork()V

    .line 555
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->disconnect()V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    .line 540
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "AndroidQ+ could not connect to wifi"

    .line 542
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;->val$wifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 544
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->USER_CANCELLED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    return-void
.end method
