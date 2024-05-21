.class public Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;
.super Ljava/lang/Object;
.source "Initialize.java"


# instance fields
.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field private evaluate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "evaluate"
    .end annotation
.end field

.field private greet:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "greet"
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private listening:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listening"
    .end annotation
.end field

.field private locationBean:Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mimeType"
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeZone"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
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
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLocationBean()Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->locationBean:Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->timeZone:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->token:Ljava/lang/String;

    return-object p0
.end method

.method public isEvaluate()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->evaluate:Z

    return p0
.end method

.method public isGreet()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->greet:Z

    return p0
.end method

.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->listening:Z

    return p0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setEvaluate(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->evaluate:Z

    return-void
.end method

.method public setGreet(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->greet:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->language:Ljava/lang/String;

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->listening:Z

    return-void
.end method

.method public setLocationBean(Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->locationBean:Ltech/rabbit/r1launcher/wss/request/login_request/bean/LocationBean;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/request/login_request/bean/Initialize;->token:Ljava/lang/String;

    return-void
.end method
