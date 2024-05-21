.class Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;
.super Ljava/lang/Object;
.source "ConnectorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectWps(Landroid/net/wifi/WifiManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/ScanResult;Ljava/lang/String;JLtech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$connectionWpsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

.field final synthetic val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

.field final synthetic val$scanResult:Landroid/net/wifi/ScanResult;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$scanResult:Landroid/net/wifi/ScanResult;

    iput-object p3, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$connectionWpsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    iput-object p4, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    .line 653
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    const-string v0, "Connection with WPS has timed out"

    .line 654
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$scanResult:Landroid/net/wifi/ScanResult;

    .line 655
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->cleanPreviousConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$connectionWpsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    const/4 v1, 0x0

    .line 656
    invoke-interface {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;->isSuccessful(Z)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;->val$handler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    .line 657
    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
