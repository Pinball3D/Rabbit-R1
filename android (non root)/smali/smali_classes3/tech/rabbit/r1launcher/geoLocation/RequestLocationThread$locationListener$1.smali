.class public final Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread$locationListener$1;
.super Ljava/lang/Object;
.source "GeoLocationManager.kt"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "tech/rabbit/r1launcher/geoLocation/RequestLocationThread$locationListener$1",
        "Landroid/location/LocationListener;",
        "onLocationChanged",
        "",
        "location",
        "Landroid/location/Location;",
        "onProviderDisabled",
        "provider",
        "",
        "onProviderEnabled",
        "onStatusChanged",
        "status",
        "",
        "extras",
        "Landroid/os/Bundle;",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread$locationListener$1;->this$0:Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->setLastLocation(Landroid/location/Location;)V

    .line 131
    sget-object p1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->setLastTimeStamp(J)V

    .line 132
    sget-object p1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->SUCCESS:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->dispatchStatus$default(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread$locationListener$1;->this$0:Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    .line 133
    invoke-static {p1}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->access$getLocationManager$p(Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p0, Landroid/location/LocationListener;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extras"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
