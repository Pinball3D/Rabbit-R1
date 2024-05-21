.class public Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;
.super Ljava/lang/Object;
.source "TimeoutHandler.java"


# instance fields
.field private final mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

.field private mScanResult:Landroid/net/wifi/ScanResult;

.field private final mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final timeoutCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler$1;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->timeoutCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iput-object p3, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    return-void
.end method

.method static synthetic access$000(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$100(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Landroid/net/wifi/ScanResult;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mScanResult:Landroid/net/wifi/ScanResult;

    return-object p0
.end method

.method static synthetic access$200(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    return-object p0
.end method

.method static synthetic access$300(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    return-object p0
.end method


# virtual methods
.method public startTimeout(Landroid/net/wifi/ScanResult;J)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->timeoutCallback:Ljava/lang/Runnable;

    .line 48
    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->timeoutCallback:Ljava/lang/Runnable;

    .line 51
    invoke-virtual {p1, p0, p2, p3}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopTimeout()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->timeoutCallback:Ljava/lang/Runnable;

    .line 55
    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
