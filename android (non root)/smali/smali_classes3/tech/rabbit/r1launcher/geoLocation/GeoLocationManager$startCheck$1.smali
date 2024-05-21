.class public final Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$startCheck$1;
.super Ljava/lang/Object;
.source "GeoLocationManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->startCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "tech/rabbit/r1launcher/geoLocation/GeoLocationManager$startCheck$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    sget-object v1, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->FAIL:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->dispatchStatus$default(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getCallbackList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    const/4 v0, 0x0

    invoke-static {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$setRunning$p(Z)V

    .line 71
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {v1}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->getREQUEST_LOCATION()I

    move-result v1

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->removeMessages(I)V

    .line 72
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    sget-object p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->release()V

    return-void

    .line 76
    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {v1}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->getREQUEST_LOCATION()I

    move-result v1

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->sendEmptyMessage(I)Z

    .line 77
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-static {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
