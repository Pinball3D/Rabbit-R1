.class public final Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"

# interfaces
.implements Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;
.implements Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;
.implements Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
.implements Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiWpsSuccessListener;


# static fields
.field private static final REQUEST_CODE_ENABLE_WIFI:I = 0x378

.field private static final TAG:Ljava/lang/String; = "WifiUtils"

.field private static customLogger:Ltech/rabbit/r1launcher/components/wifiutils/Logger; = null

.field private static mEnableLog:Z = true


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mConnectionScanResultsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;

.field private mConnectionSuccessListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

.field private mConnectionWpsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

.field private mPassword:Ljava/lang/String;

.field private mPatternMatch:Z

.field private mScanResultsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

.field private mSingleScanResult:Landroid/net/wifi/ScanResult;

.field private mSsid:Ljava/lang/String;

.field private final mTimeoutHandler:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

.field private mTimeoutMillis:J

.field private final mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

.field private final mWifiConnectionReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiScanReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

.field private final mWifiScanResultsCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;

.field private final mWifiStateCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;

.field private mWifiStateListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;

.field private final mWifiStateReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

.field private mWpsTimeoutMillis:J

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWpsTimeoutMillis:J

    iput-wide v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mTimeoutMillis:J

    .line 127
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;

    .line 149
    new-instance v1, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)V

    iput-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiScanResultsCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;

    .line 204
    new-instance v2, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;

    invoke-direct {v2, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)V

    iput-object v2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    const-string v4, "connectivity"

    .line 243
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 244
    new-instance p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    invoke-direct {p1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    .line 245
    new-instance p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    invoke-direct {p1, v1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiScanReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    .line 246
    new-instance p1, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    invoke-direct {p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    .line 247
    new-instance p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    invoke-direct {p1, v2, v3}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Landroid/net/wifi/WifiManager;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    .line 248
    new-instance p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    invoke-direct {p1, v3, v0, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;-><init>(Landroid/net/wifi/WifiManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mTimeoutHandler:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    return-void

    .line 241
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "WifiManager is not supposed to be null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    return-object p0
.end method

.method static synthetic access$1000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/ScanResult;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSingleScanResult:Landroid/net/wifi/ScanResult;

    return-object p0
.end method

.method static synthetic access$1102(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/ScanResult;
    .locals 0

    .line 61
    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSingleScanResult:Landroid/net/wifi/ScanResult;

    return-object p1
.end method

.method static synthetic access$1200(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mHandler:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;

    return-object p0
.end method

.method static synthetic access$1300(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWpsTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$1400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPatternMatch:Z

    return p0
.end method

.method static synthetic access$1600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$1700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    return-object p0
.end method

.method static synthetic access$1800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$1900(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mTimeoutHandler:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    return-object p0
.end method

.method static synthetic access$200(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;

    return-object p0
.end method

.method static synthetic access$2000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectionSuccessListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    return-object p0
.end method

.method static synthetic access$300(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mScanResultsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

    return-object p0
.end method

.method static synthetic access$400(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$600(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiScanReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    return-object p0
.end method

.method static synthetic access$700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectionWpsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    return-object p0
.end method

.method static synthetic access$800(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    return-object p0
.end method

.method static synthetic access$900(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;
    .locals 0

    .line 61
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectionScanResultsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;

    return-object p0
.end method

.method public static enableLog(Z)V
    .locals 0

    sput-boolean p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mEnableLog:Z

    return-void
.end method

.method public static forwardLog(Ltech/rabbit/r1launcher/components/wifiutils/Logger;)V
    .locals 0

    sput-object p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->customLogger:Ltech/rabbit/r1launcher/components/wifiutils/Logger;

    return-void
.end method

.method public static isEnableWifiRequest(I)Z
    .locals 1

    const/16 v0, 0x378

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$enableWifi$1(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;->isSuccess(Z)V

    return-void
.end method

.method static synthetic lambda$enableWifi$2(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)V
    .locals 1

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;->onScanResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$enableWifi$3(Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-interface {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;->isSuccessful(Z)V

    return-void
.end method

.method static synthetic lambda$wifiLog$0(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->TAG:Ljava/lang/String;

    .line 254
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startWifiSettingsIntent(Landroid/content/Intent;Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    .line 297
    instance-of v1, v0, Landroid/app/Activity;

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    .line 299
    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x378

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    const-string p1, "Enable Wifi to proceed"

    const/4 p2, 0x0

    .line 307
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public static wifiLog(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mEnableLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->customLogger:Ltech/rabbit/r1launcher/components/wifiutils/Logger;

    .line 253
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/rabbit/r1launcher/components/wifiutils/Logger;

    const/4 v1, 0x2

    sget-object v2, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->TAG:Ljava/lang/String;

    .line 256
    invoke-interface {v0, v1, v2, p0}, Ltech/rabbit/r1launcher/components/wifiutils/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static withActivity(Landroid/app/Activity;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;
    .locals 1

    .line 80
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static withContext(Landroid/content/Context;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;
    .locals 1

    .line 75
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public cancelAutoConnect()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    .line 443
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiScanReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    .line 444
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    .line 445
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSingleScanResult:Landroid/net/wifi/ScanResult;

    .line 446
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda4;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 447
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->reenableAllHotspots(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method public connectWith(Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSsid:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public connectWith(Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSsid:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public connectWith(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSsid:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mBssid:Ljava/lang/String;

    iput-object p3, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public connectWith(Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mSsid:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPassword:Ljava/lang/String;

    .line 410
    invoke-virtual {p3}, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->type:Ljava/lang/String;

    return-object p0
.end method

.method public connectWithScanResult(Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
    .locals 0

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectionScanResultsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public connectWithWps(Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiWpsSuccessListener;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mBssid:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public disableWifi()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 500
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    .line 503
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    .line 504
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiScanReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    .line 505
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    .line 506
    invoke-static {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string p0, "WiFi Disabled"

    .line 511
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return-void
.end method

.method public disconnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 331
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;->COULD_NOT_GET_CONNECTIVITY_MANAGER:Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;

    invoke-interface {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;->failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;)V

    return-void

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 336
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;->COULD_NOT_GET_WIFI_MANAGER:Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;

    invoke-interface {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;->failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;)V

    return-void

    .line 340
    :cond_1
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->unbindProcessFromNetwork()V

    .line 342
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->disconnect()V

    .line 343
    invoke-interface {p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;->success()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 345
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->disconnectFromWifi(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 346
    invoke-interface {p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;->success()V

    goto :goto_0

    .line 348
    :cond_3
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;->COULD_NOT_DISCONNECT:Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;

    invoke-interface {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;->failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionErrorCode;)V

    :goto_0
    return-void
.end method

.method public disconnectFrom(Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->disconnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;)V

    return-void
.end method

.method public enableWifi()V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->enableWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;)V

    return-void
.end method

.method public enableWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;)V
    .locals 2

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 276
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;

    .line 277
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;->onWifiEnabled()V

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->checkVersionAndGetIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    .line 281
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p1

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mScanResultsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

    .line 285
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p1

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectionWpsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    .line 286
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p1

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 287
    sget-object p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_ENABLE_WIFI:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    const-string p0, "COULDN\'T ENABLE WIFI"

    .line 288
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 291
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->startWifiSettingsIntent(Landroid/content/Intent;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public isWifiConnected()Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 457
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/ConnectivityManager;)Z

    move-result p0

    return p0
.end method

.method public isWifiConnected(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 452
    invoke-static {v0, p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method synthetic lambda$cancelAutoConnect$4$tech-rabbit-r1launcher-components-wifiutils-WifiUtils(Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 0
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 446
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->cleanPreviousConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z

    return-void
.end method

.method public onConnectionResult(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectionSuccessListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    return-object p0
.end method

.method public onConnectionWpsResult(Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectionWpsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;

    return-object p0
.end method

.method public patternMatch()Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mPatternMatch:Z

    return-object p0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 357
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;->COULD_NOT_GET_CONNECTIVITY_MANAGER:Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;

    invoke-interface {p3, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;->failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;)V

    return-void

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 362
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;->COULD_NOT_GET_WIFI_MANAGER:Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;

    invoke-interface {p3, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;->failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;)V

    return-void

    .line 366
    :cond_1
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->unbindProcessFromNetwork()V

    .line 368
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->disconnect()V

    .line 369
    invoke-interface {p3}, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;->success()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 371
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->removeWifi(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 372
    invoke-interface {p3}, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;->success()V

    goto :goto_0

    .line 374
    :cond_3
    sget-object p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;->COULD_NOT_REMOVE:Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;

    invoke-interface {p3, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;->failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveErrorCode;)V

    :goto_0
    return-void
.end method

.method public scanWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mScanResultsListener:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

    return-object p0
.end method

.method public setTimeout(J)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
    .locals 0

    iput-wide p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mTimeoutMillis:J

    return-object p0
.end method

.method public setWpsTimeout(J)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiWpsSuccessListener;
    .locals 0

    iput-wide p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWpsTimeoutMillis:J

    return-object p0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiStateReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;

    .line 492
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiScanReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;

    .line 493
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->mWifiConnectionReceiver:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    .line 494
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->enableWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;)V

    return-void
.end method
