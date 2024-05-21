.class public final synthetic Ltech/rabbit/r1launcher/components/wifiutils/LocationUtils$$ExternalSyntheticLambda0;
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

    check-cast p1, Landroid/location/LocationManager;

    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/LocationUtils;->lambda$isLocationEnabled$0(Landroid/location/LocationManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
