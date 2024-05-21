.class final Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;
.super Ljava/lang/Object;
.source "ConfigSecurities.java"


# static fields
.field static final SECURITY_EAP:Ljava/lang/String; = "EAP"

.field static final SECURITY_NONE:Ljava/lang/String; = "OPEN"

.field static final SECURITY_PSK:Ljava/lang/String; = "PSK"

.field static final SECURITY_WEP:Ljava/lang/String; = "WEP"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 3

    .line 247
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "OPEN"

    .line 250
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v2

    .line 253
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v2

    .line 257
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ScanResult capabilities "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    const-string p0, "Got security via ScanResult "

    .line 258
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return-object v1
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 4

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const-string v3, "OPEN"

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const-string v1, "WEP"

    move-object v3, v1

    .line 229
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    .line 232
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v3, "EAP"

    .line 234
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_3
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v3, "PSK"

    .line 238
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Got Security Via WifiConfiguration "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return-object v3
.end method

.method static getSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "WEP"

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OPEN"

    :goto_0
    const-string v1, "PSK"

    .line 267
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    const-string v1, "EAP"

    .line 270
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public static getSecurityPrettyPlusWps(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 284
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 286
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", WPS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 193
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/SSIDUtils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 198
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 205
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 206
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    :cond_3
    invoke-static {v3}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method static getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 144
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 151
    :goto_0
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "NULL configs"

    .line 156
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return-object v1

    .line 160
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 161
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    :cond_4
    invoke-static {v3}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->getSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 168
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Couldn\'t find "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object v1
.end method

.method static getWifiConfiguration(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 179
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 42
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 43
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 45
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 46
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting up security "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "OPEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "WEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "PSK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_0

    :sswitch_3
    const-string v0, "EAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid security type: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 50
    :pswitch_0
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 51
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 52
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 53
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 54
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 55
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 56
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 57
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 58
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 61
    :pswitch_1
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 62
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 63
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 64
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 65
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 66
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 67
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 68
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 69
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 71
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->isHexWepKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p2, p0, v3

    goto/16 :goto_1

    .line 74
    :cond_4
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/SSIDUtils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    goto :goto_1

    .line 78
    :pswitch_2
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 79
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 80
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 81
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 82
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 83
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 84
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 85
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 86
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    const-string p1, "[0-9A-Fa-f]{64}"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 88
    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 90
    :cond_5
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/SSIDUtils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 94
    :pswitch_3
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 95
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 96
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 97
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 98
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 99
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 101
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 102
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 103
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 104
    invoke-static {p2}, Ltech/rabbit/r1launcher/components/wifiutils/utils/SSIDUtils;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10b34 -> :sswitch_3
        0x136a8 -> :sswitch_2
        0x14f42 -> :sswitch_1
        0x251e4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setupSecurityHidden(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 116
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/ConfigSecurities;->setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setupWifiNetworkSpecifierSecurities(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting up WifiNetworkSpecifier.Builder "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "OPEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "WEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "PSK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "EAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid security type: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    :goto_1
    :pswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10b34 -> :sswitch_3
        0x136a8 -> :sswitch_2
        0x14f42 -> :sswitch_1
        0x251e4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
