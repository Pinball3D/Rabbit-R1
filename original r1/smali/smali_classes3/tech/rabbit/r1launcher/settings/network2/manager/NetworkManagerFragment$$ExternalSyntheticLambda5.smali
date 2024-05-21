.class public final synthetic Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

.field public final synthetic f$2:Ltech/rabbit/r1launcher/initstep/model/Wifi;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;->f$1:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;->f$2:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;->f$1:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;->f$2:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-static {v0, v1, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->$r8$lambda$2YfWkKJPOsSqe_Yt1aHL_k1I-N0(Ljava/util/List;Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    return-void
.end method
