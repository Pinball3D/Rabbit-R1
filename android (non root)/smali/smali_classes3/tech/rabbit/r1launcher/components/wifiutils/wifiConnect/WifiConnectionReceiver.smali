.class public final Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionReceiver.java"


# instance fields
.field private mScanResult:Landroid/net/wifi/ScanResult;

.field private final mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static isAlreadyConnected2(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Already connected to: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  BSSID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onReceive$0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$onReceive$1(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public connectWith(Landroid/net/wifi/ScanResult;Ljava/lang/String;Landroid/net/ConnectivityManager;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mScanResult:Landroid/net/wifi/ScanResult;

    return-object p0
.end method

.method public connectWith(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityManager;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection Broadcast action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 43
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v0

    const-string v1, "Connection Broadcast state: "

    const/4 v2, -0x1

    const-string v3, "supplicantError"

    const-string v4, "newState"

    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 44
    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 45
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 46
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "suppl_error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mScanResult:Landroid/net/wifi/ScanResult;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->ssid:Ljava/lang/String;

    .line 49
    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->isAlreadyConnected2(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 50
    invoke-interface {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->successfulConnect()V

    .line 52
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_8

    if-ne p2, v6, :cond_8

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 53
    sget-object p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->AUTHENTICATION_ERROR_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 57
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 62
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p2

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p2

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 64
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->successfulConnect()V

    goto/16 :goto_0

    .line 66
    :cond_2
    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 67
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 68
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p1, :cond_3

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 71
    sget-object p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_CONNECT:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    return-void

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 77
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v6, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_0

    :cond_4
    if-ne p2, v6, :cond_5

    const-string p1, "Authentication error..."

    .line 88
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 89
    sget-object p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->AUTHENTICATION_ERROR_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    goto :goto_0

    :cond_5
    const-string p1, "Disconnected. Re-attempting to connect..."

    .line 91
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 92
    invoke-static {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->reEnableNetworkIfPossible(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mScanResult:Landroid/net/wifi/ScanResult;

    if-nez p1, :cond_7

    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->ssid:Ljava/lang/String;

    .line 80
    invoke-static {p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->isAlreadyConnected2(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 81
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->successfulConnect()V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 82
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p2

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p2

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;->mWifiConnectionCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;

    .line 83
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;->successfulConnect()V

    :cond_8
    :goto_0
    return-void
.end method
