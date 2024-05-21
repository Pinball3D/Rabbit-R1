.class public Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanReceiver.java"


# instance fields
.field private final callback:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;->callback:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanReceiver;->callback:Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;

    .line 20
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/WifiScanCallback;->onScanResultsReady()V

    return-void
.end method
