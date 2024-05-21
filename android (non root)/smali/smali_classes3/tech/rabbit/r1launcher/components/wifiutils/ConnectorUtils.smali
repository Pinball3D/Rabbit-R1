.class public final Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;
.super Ljava/lang/Object;
.source "ConnectorUtils.java"


# static fields
.field private static final MAX_PRIORITY:I = 0x1869f


# direct methods
.method public static synthetic $r8$lambda$erdCQvdsWyfHa01O1ehPO1DY_a4(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$State;
    .locals 0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForExcessOpenNetworkAndSave(Landroid/content/ContentResolver;Landroid/net/wifi/WifiManager;)Z
    .locals 9

    .line 120
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->sortByPriority(Ljava/util/List;)V

    .line 125
    sget-object v1, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isJellyBeanOrLater()Z

    move-result v1

    const/16 v2, 0xa

    const-string v3, "wifi_num_open_networks_kept"

    if-eqz v1, :cond_0

    .line 126
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 129
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ltz v1, :cond_2

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    const-string v7, "OPEN"

    .line 131
    invoke-static {v6}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-lt v5, p0, :cond_1

    .line 135
    iget v4, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move v4, v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_4

    .line 139
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method static checkVersionAndGetIntent()Landroid/content/Intent;
    .locals 1

    .line 808
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->getPanelIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static cleanPreviousConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 734
    :cond_0
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    const-string v1, "Attempting to remove previous network config..."

    .line 735
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 740
    :cond_1
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 741
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return v1

    :cond_2
    return v0
.end method

.method static cleanPreviousConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "Attempting to remove previous network config..."

    .line 753
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 758
    :cond_1
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 759
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return v1

    :cond_2
    return v0
.end method

.method private static connectAndroidQ(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Landroid/net/wifi/ScanResult;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 405
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    const/4 v1, 0x1

    if-eqz p6, :cond_2

    .line 408
    new-instance p6, Landroid/os/PatternMatcher;

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    iget-object p7, p4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_0
    invoke-direct {p6, p7, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p6}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsidPattern(Landroid/os/PatternMatcher;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    goto :goto_1

    .line 410
    :cond_2
    iget-object p6, p4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 411
    invoke-virtual {v0, p6}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object p6

    iget-object p7, p4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 412
    invoke-static {p7}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p7

    invoke-virtual {p6, p7}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 415
    :goto_1
    invoke-static {p4}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p6

    .line 417
    invoke-static {v0, p6, p5}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->setupWifiNetworkSpecifierSecurities(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance p5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 420
    invoke-virtual {p5, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p5

    .line 422
    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p5

    const/16 p6, 0xd

    .line 424
    invoke-virtual {p5, p6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p5

    .line 425
    invoke-virtual {p5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p5

    .line 428
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p6

    invoke-virtual {p6}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->disconnect()V

    .line 430
    new-instance p6, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$1;-><init>(Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V

    .line 479
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0, p6, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->addNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/ConnectivityManager;)V

    const-string p0, "connecting with Android 10"

    .line 481
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->requestNetwork(Landroid/net/NetworkRequest;)V

    return v1
.end method

.method private static connectAndroidQHidden(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 494
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    const/4 v1, 0x1

    .line 495
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0, p4}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object v0

    .line 498
    invoke-static {p5}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 500
    invoke-static {v0, p5, p6}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->setupWifiNetworkSpecifierSecurities(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance p5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 503
    invoke-virtual {p5, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p5

    const/16 p6, 0xc

    .line 505
    invoke-virtual {p5, p6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p5

    const/16 p6, 0xd

    .line 506
    invoke-virtual {p5, p6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p5

    .line 507
    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p5

    .line 508
    invoke-virtual {p5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p5

    .line 511
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p6

    invoke-virtual {p6}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->disconnect()V

    .line 513
    new-instance p6, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$2;-><init>(Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)V

    .line 566
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0, p6, p1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->addNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/ConnectivityManager;)V

    const-string p0, "connecting with Android 10"

    .line 568
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->requestNetwork(Landroid/net/NetworkRequest;)V

    return v1
.end method

.method private static connectPreAndroidQ(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 275
    :cond_0
    invoke-static {p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "PASSWORD WAS EMPTY. TRYING TO CONNECT TO EXISTING NETWORK CONFIGURATION"

    .line 277
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 278
    invoke-static {p1, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectToConfiguredNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result p0

    return p0

    .line 281
    :cond_1
    invoke-static {p1, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->cleanPreviousConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "COULDN\'T REMOVE PREVIOUS CONFIG, CONNECTING TO EXISTING ONE"

    .line 282
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 283
    invoke-static {p1, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectToConfiguredNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result p0

    return p0

    .line 286
    :cond_2
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPEN"

    .line 288
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->checkForExcessOpenNetworkAndSave(Landroid/content/ContentResolver;Landroid/net/wifi/WifiManager;)Z

    .line 292
    :cond_3
    new-instance p0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 293
    iget-object v3, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Ltech/rabbit/r1launcher/components/wifiutils/utils/SSIDUtils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 294
    iget-object p2, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 295
    invoke-static {p0, v1, p3}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    .line 298
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Network ID: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    return v0

    .line 310
    :cond_4
    invoke-static {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "Error getting wifi config after save. (config == null)"

    .line 312
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return v0

    .line 316
    :cond_5
    invoke-static {p1, p0, v2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectToConfiguredNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result p0

    return p0
.end method

.method private static connectPreAndroidQHidden(Landroid/content/Context;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 328
    :cond_0
    invoke-static {p3}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "OPEN"

    .line 330
    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->checkForExcessOpenNetworkAndSave(Landroid/content/ContentResolver;Landroid/net/wifi/WifiManager;)Z

    .line 334
    :cond_1
    new-instance p0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 335
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/SSIDUtils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 336
    invoke-static {p0, p3, p4}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->setupSecurityHidden(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    .line 339
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Hidden-Network ID: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    return v0

    .line 344
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "Couldn\'t save wifi config"

    .line 345
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return v0

    .line 349
    :cond_3
    invoke-static {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "Error getting wifi config after save. (config == null)"

    .line 351
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p2, 0x1

    .line 355
    invoke-static {p1, p0, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectToConfiguredNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result p0

    return p0
.end method

.method private static connectToConfiguredNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 364
    :cond_0
    sget-object v1, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isMarshmallowOrLater()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 365
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->disableAllButOne(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    move v0, v2

    :cond_2
    return v0

    .line 369
    :cond_3
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->getMaxPriority(Landroid/net/wifi/WifiManager;)I

    move-result v1

    add-int/2addr v1, v2

    const v3, 0x1869f

    if-le v1, v3, :cond_4

    .line 371
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->shiftPriorityAndSave(Landroid/net/wifi/WifiManager;)I

    move-result v1

    .line 372
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 379
    :cond_4
    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 380
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    return v0

    .line 386
    :cond_5
    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 390
    :cond_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 395
    :cond_7
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 396
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->disableAllButOne(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_1
    move v0, v2

    :cond_9
    :goto_2
    return v0
.end method

.method static connectToWifi(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/ScanResult;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;ZLjava/lang/String;)Z
    .locals 8

    move-object v0, p1

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    sget-object v1, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p6

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move-object/from16 v7, p8

    .line 242
    invoke-static/range {v0 .. v7}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectAndroidQ(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Landroid/net/wifi/ScanResult;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    .line 245
    invoke-static {p0, p1, p4, p5}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectPreAndroidQ(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static connectToWifiHidden(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;)Z
    .locals 7

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p5, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 263
    invoke-static/range {v0 .. v6}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectAndroidQHidden(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 266
    :cond_1
    invoke-static {p0, p1, p4, p5, p6}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->connectPreAndroidQHidden(Landroid/content/Context;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static connectWps(Landroid/net/wifi/WifiManager;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Landroid/net/wifi/ScanResult;Ljava/lang/String;JLtech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;)V
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 645
    invoke-interface {p6, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;->isSuccessful(Z)V

    return-void

    .line 649
    :cond_0
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 650
    new-instance v7, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;

    invoke-direct {v7, p0, p2, p6, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$3;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;)V

    .line 661
    new-instance v8, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$4;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v7

    move-object v4, p6

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$4;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;Ljava/lang/Runnable;Ltech/rabbit/r1launcher/components/wifiutils/wifiWps/ConnectionWpsListener;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    const-string p6, "Connecting with WPS..."

    .line 703
    invoke-static {p6}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    const/4 p6, 0x2

    .line 704
    iput p6, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 705
    iget-object p6, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object p6, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 706
    iput-object p3, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    const/4 p3, 0x0

    .line 707
    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 709
    invoke-static {p0, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->cleanPreviousConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 710
    invoke-static {p0, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->disableAllButOne(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z

    .line 713
    :cond_1
    invoke-virtual {p1, v7, p4, p5}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 714
    invoke-virtual {p0, v0, v8}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    return-void
.end method

.method private static disableAllButOne(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 605
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 609
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_2

    goto :goto_0

    .line 613
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 614
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    goto :goto_0

    .line 616
    :cond_3
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method private static disableAllButOne(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 578
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 579
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_2

    goto :goto_0

    .line 588
    :cond_2
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_3

    .line 589
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    goto :goto_0

    .line 591
    :cond_3
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0

    .line 594
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "disableAllButOne "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return v0
.end method

.method static disconnectFromWifi(Landroid/net/wifi/WifiManager;)Z
    .locals 0

    .line 719
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result p0

    return p0
.end method

.method public static frequencyToChannel(I)I
    .locals 2

    const/16 v0, 0x96c

    if-gt v0, p0, :cond_0

    const/16 v1, 0x9b4

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    .line 208
    div-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x1432

    if-gt v0, p0, :cond_1

    const/16 v1, 0x16c1

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    .line 210
    div-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x22

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getMaxPriority(Landroid/net/wifi/WifiManager;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 150
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v2, v0, :cond_1

    .line 151
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getPowerPercentage(I)I
    .locals 1

    const/16 v0, -0x5d

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, -0x19

    if-gt v0, p0, :cond_1

    if-gtz p0, :cond_1

    const/16 p0, 0x64

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, 0x7d

    :goto_0
    return p0
.end method

.method public static isAlreadyConnected(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .line 94
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isLollipopOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isConnectedToNetworkLollipop(Landroid/net/ConnectivityManager;)Z

    move-result p0

    return p0

    .line 97
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p0

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p0

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p0

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->getBoolean()Z

    move-result p0

    return p0
.end method

.method public static isAlreadyConnected(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Ljava/lang/String;)Z
    .locals 0

    .line 102
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isAlreadyConnected(Landroid/net/ConnectivityManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    .line 107
    sget-object p1, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isJellyBeanOrLater()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/SSIDUtils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 112
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move p1, p0

    :cond_2
    return p1
.end method

.method public static isAlreadyConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
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

.method public static isAlreadyConnected2(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
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

.method private static isConnectedToNetworkLollipop(Landroid/net/ConnectivityManager;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v1, v0

    .line 85
    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_1

    .line 87
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    or-int/2addr v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static isHexWepKey(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "[0-9A-Fa-f]*"

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic lambda$isAlreadyConnected$0(Landroid/net/ConnectivityManager;)Landroid/net/NetworkInfo;
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isAlreadyConnected$1(Landroid/net/NetworkInfo$State;)Ljava/lang/Boolean;
    .locals 1

    .line 97
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$sortByPriority$2(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    .line 202
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static matchScanResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Landroid/net/wifi/ScanResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 789
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 790
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static matchScanResultBssid(Ljava/lang/String;Ljava/lang/Iterable;)Landroid/net/wifi/ScanResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 799
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 800
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static matchScanResultSsid(Ljava/lang/String;Ljava/lang/Iterable;Z)Landroid/net/wifi/ScanResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Landroid/net/wifi/ScanResult;",
            ">;Z)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 779
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 780
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static reEnableNetworkIfPossible(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 627
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 631
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 632
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 633
    iget p1, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 636
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "reEnableNetworkIfPossible "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0
.end method

.method static reenableAllHotspots(Landroid/net/wifi/WifiManager;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 770
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 772
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static removeWifi(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 724
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 725
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->cleanPreviousConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method private static shiftPriorityAndSave(Landroid/net/wifi/WifiManager;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->sortByPriority(Ljava/util/List;)V

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 166
    iput v0, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 167
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return v2
.end method

.method private static sortByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 202
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static trimQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\"*"

    const-string v1, ""

    .line 177
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\"*$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
