.class public final Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateReceiver.java"


# instance fields
.field private final wifiStateCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;->wifiStateCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "wifi_state"

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateReceiver;->wifiStateCallback:Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;

    .line 26
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateCallback;->onWifiEnabled()V

    :goto_0
    return-void
.end method
