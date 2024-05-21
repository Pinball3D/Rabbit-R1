.class public final synthetic Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;

    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$1;->lambda$onWifiEnabled$1(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)V

    return-void
.end method
