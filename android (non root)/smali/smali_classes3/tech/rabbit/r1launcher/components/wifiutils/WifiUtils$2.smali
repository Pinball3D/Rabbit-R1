.class Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;
.super Ljava/lang/Object;
.source "WifiUtils.java"

# interfaces
.implements Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onScanResultsReady$0(Ljava/util/List;Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)V
    .locals 0

    .line 157
    invoke-interface {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;->onScanResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onScanResultsReady$1$tech-rabbit-r1launcher-components-wifiutils-WifiUtils$2(Ljava/util/List;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;)V
    .locals 0

    .line 0
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 158
    invoke-interface {p2, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;->onConnectWithScanResult(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1102(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/ScanResult;

    return-void
.end method

.method public onScanResultsReady()V
    .locals 12

    const-string v0, "GOT SCAN RESULTS"

    .line 153
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 154
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 156
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 157
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$300(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

    move-result-object v1

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v1

    new-instance v2, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 158
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$900(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;

    move-result-object v1

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v1

    new-instance v2, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 160
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 161
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->matchScanResultBssid(Ljava/lang/String;Ljava/lang/Iterable;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-static {v1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1102(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/ScanResult;

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 162
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isLollipopOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 163
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1200(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    move-result-object v2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1300(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)J

    move-result-wide v5

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectWps(Landroid/net/wifi/WifiManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/ScanResult;Ljava/lang/String;JLtech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 165
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Couldn\'t find network. Possibly out of range"

    .line 166
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 168
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;->isSuccessful(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 173
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 174
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 175
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v3}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->matchScanResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-static {v1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1102(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/ScanResult;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 177
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v3}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Z

    move-result v3

    invoke-static {v2, v0, v3}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->matchScanResultSsid(Ljava/lang/String;Ljava/lang/Iterable;Z)Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-static {v1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1102(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/ScanResult;

    :cond_4
    :goto_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 180
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 181
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1200(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    move-result-object v6

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v7

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    move-result-object v9

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Z

    move-result v10

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v3 .. v11}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectToWifi(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/ScanResult;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 182
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v3}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v3

    iget-object v4, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v4}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v4

    iget-object v5, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v5}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v6}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->connectWith(Landroid/net/wifi/ScanResult;Ljava/lang/String;Landroid/net/ConnectivityManager;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 184
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v2}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 186
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1900(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->startTimeout(Landroid/net/wifi/ScanResult;J)V

    goto/16 :goto_2

    :cond_5
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 188
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_CONNECT:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 191
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1200(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    move-result-object v6

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$2000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectToWifiHidden(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 192
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v3}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v3

    iget-object v4, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v4}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v5}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v6}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->connectWith(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityManager;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 194
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v2}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 196
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1900(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->startTimeout(Landroid/net/wifi/ScanResult;J)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 198
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_CONNECT:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    :goto_2
    return-void
.end method
