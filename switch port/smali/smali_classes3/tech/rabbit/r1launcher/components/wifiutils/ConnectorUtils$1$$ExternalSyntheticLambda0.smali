.class public final synthetic Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/WifiManager;

.field public final synthetic f$1:Landroid/net/wifi/ScanResult;

.field public final synthetic f$2:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/ScanResult;

    iput-object p3, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;->f$2:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/ScanResult;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1$$ExternalSyntheticLambda0;->f$2:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    invoke-static {v0, v1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;->lambda$onAvailable$1(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V

    return-void
.end method
