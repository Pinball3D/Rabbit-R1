.class public final synthetic Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;


# direct methods
.method public synthetic constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda4;->f$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$$ExternalSyntheticLambda4;->f$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->lambda$cancelAutoConnect$4$tech-rabbit-r1launcher-components-wifiutils-WifiUtils(Landroid/net/wifi/ScanResult;)V

    return-void
.end method
