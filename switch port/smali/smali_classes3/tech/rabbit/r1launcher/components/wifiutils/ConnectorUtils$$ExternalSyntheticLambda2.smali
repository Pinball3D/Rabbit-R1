.class public final synthetic Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/NetworkInfo;

    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->$r8$lambda$erdCQvdsWyfHa01O1ehPO1DY_a4(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$State;

    move-result-object p0

    return-object p0
.end method
