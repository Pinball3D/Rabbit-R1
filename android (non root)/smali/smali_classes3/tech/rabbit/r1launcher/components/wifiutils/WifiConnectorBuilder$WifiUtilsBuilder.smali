.class public interface abstract Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;
.super Ljava/lang/Object;
.source "WifiConnectorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiUtilsBuilder"
.end annotation


# virtual methods
.method public abstract cancelAutoConnect()V
.end method

.method public abstract connectWith(Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
.end method

.method public abstract connectWith(Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
.end method

.method public abstract connectWith(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
.end method

.method public abstract connectWith(Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
.end method

.method public abstract connectWithScanResult(Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;
.end method

.method public abstract connectWithWps(Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiWpsSuccessListener;
.end method

.method public abstract disableWifi()V
.end method

.method public abstract disconnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;)V
.end method

.method public abstract disconnectFrom(Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiDisconnect/DisconnectionSuccessListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableWifi()V
.end method

.method public abstract enableWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;)V
.end method

.method public abstract isWifiConnected()Z
.end method

.method public abstract isWifiConnected(Ljava/lang/String;)Z
.end method

.method public abstract patternMatch()Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;
.end method

.method public abstract remove(Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;)V
.end method

.method public abstract scanWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;
.end method
