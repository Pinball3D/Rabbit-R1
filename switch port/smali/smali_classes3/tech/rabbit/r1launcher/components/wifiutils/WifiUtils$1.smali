.class Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;
.super Ljava/lang/Object;
.source "WifiUtils.java"

# interfaces
.implements Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;


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

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWifiEnabled$0(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 133
    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;->isSuccess(Z)V

    return-void
.end method

.method static synthetic lambda$onWifiEnabled$1(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)V
    .locals 1

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;->onScanResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onWifiEnabled$2(Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;->isSuccessful(Z)V

    return-void
.end method


# virtual methods
.method public onWifiEnabled()V
    .locals 3

    const-string v0, "WIFI ENABLED..."

    .line 131
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 132
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 133
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$200(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 135
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$300(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "START SCANNING...."

    .line 136
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 137
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 138
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    move-result-object p0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 140
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$300(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 141
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 142
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_SCAN:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    const-string p0, "ERROR COULDN\'T SCAN"

    .line 143
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
