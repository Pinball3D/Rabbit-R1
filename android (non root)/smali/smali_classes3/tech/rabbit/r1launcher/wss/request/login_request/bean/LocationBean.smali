.class public Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;
.super Ljava/lang/Object;
.source "LocationBean.java"


# instance fields
.field private latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;->longitude:Ljava/lang/Double;

    return-void
.end method
