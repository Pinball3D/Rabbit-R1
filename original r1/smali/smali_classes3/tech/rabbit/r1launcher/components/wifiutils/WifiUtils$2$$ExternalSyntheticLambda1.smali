.class public final synthetic Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda1;->f$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda1;->f$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;

    invoke-virtual {v0, p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$2;->lambda$onScanResultsReady$1$tech-rabbit-r1launcher-components-wifiutils-WifiUtils$2(Ljava/util/List;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionScanResultsListener;)V

    return-void
.end method
