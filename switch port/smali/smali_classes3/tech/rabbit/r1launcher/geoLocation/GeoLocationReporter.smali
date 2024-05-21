.class public final Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;
.super Ljava/lang/Object;
.source "GeoLocationManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;",
        "",
        "retryCount",
        "",
        "(I)V",
        "count",
        "isFinished",
        "",
        "()Z",
        "setFinished",
        "(Z)V",
        "onResult",
        "",
        "statusCode",
        "reason",
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


# instance fields
.field private count:I

.field private isFinished:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->retryCount:I

    return-void
.end method


# virtual methods
.method public final isFinished()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->isFinished:Z

    return p0
.end method

.method public final onResult(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->count:I

    .line 102
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->SUCCESS:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->isFinished:Z

    .line 104
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "{\"kernel\": {\"gps\": {\"location\": { \"latitude\":"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", \"longitude\":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}}}}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto :goto_1

    .line 105
    :cond_2
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->FAIL:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget p1, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->count:I

    iget v0, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->retryCount:I

    if-lt p1, v0, :cond_4

    iput-boolean v1, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->isFinished:Z

    if-nez p2, :cond_3

    const-string p2, "time out"

    .line 109
    :cond_3
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{\"kernel\": { \"gps\": {\"error\": \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}}}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final setFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->isFinished:Z

    return-void
.end method
