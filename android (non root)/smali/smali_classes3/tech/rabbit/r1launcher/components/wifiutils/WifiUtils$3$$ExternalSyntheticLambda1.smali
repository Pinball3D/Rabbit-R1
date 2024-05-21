.class public final synthetic Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;


# direct methods
.method public synthetic constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3$$ExternalSyntheticLambda1;->f$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3$$ExternalSyntheticLambda1;->f$0:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    check-cast p1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->lambda$errorConnect$0(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;)V

    return-void
.end method
