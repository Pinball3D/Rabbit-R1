.class public final Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;
.super Ljava/lang/Object;
.source "Wifi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/initstep/model/Wifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Wifi.kt\ntech/rabbit/r1launcher/initstep/model/Wifi$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n*L\n1#1,92:1\n12554#2,2:93\n36#3:95\n*S KotlinDebug\n*F\n+ 1 Wifi.kt\ntech/rabbit/r1launcher/initstep/model/Wifi$Companion\n*L\n56#1:93,2\n57#1:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;",
        "",
        "()V",
        "adapt",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "scanResult",
        "Landroid/net/wifi/ScanResult;",
        "wifiConfiguration",
        "Landroid/net/wifi/WifiConfiguration;",
        "info",
        "Landroid/net/wifi/WifiInfo;",
        "isAvailableSSID",
        "",
        "ssid",
        "",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final adapt(Landroid/net/wifi/ScanResult;)Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 8

    const-string p0, "scanResult"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 29
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v1, "SSID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->getSecurityTypeFromScanResult(Landroid/net/wifi/ScanResult;)I

    move-result v0

    .line 31
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->convertSecurityTypesToDpmWifiSecurity(I)I

    move-result v3

    const/4 v4, 0x0

    .line 34
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    .line 28
    invoke-direct/range {v0 .. v7}, Ltech/rabbit/r1launcher/initstep/model/Wifi;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final adapt(Landroid/net/wifi/WifiConfiguration;)Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 8

    const-string p0, "wifiConfiguration"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 39
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v1, "SSID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->getSecurityTypeFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 41
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->convertSecurityTypesToDpmWifiSecurity(I)I

    move-result v3

    .line 44
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    .line 38
    invoke-direct/range {v0 .. v7}, Ltech/rabbit/r1launcher/initstep/model/Wifi;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final adapt(Landroid/net/wifi/WifiInfo;)Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 8

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 48
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSSID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->convertSecurityTypesToDpmWifiSecurity(I)I

    move-result v3

    .line 51
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    .line 47
    invoke-direct/range {v0 .. v7}, Ltech/rabbit/r1launcher/initstep/model/Wifi;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final isAvailableSSID(Ljava/lang/String;)Z
    .locals 4

    const-string p0, "ssid"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "toCharArray(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    if-eqz v3, :cond_0

    .line 57
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "<unknown ssid>"

    .line 58
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
