.class public Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;
.super Ljava/lang/Object;
.source "PlayerReadyResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerReady"
.end annotation


# instance fields
.field private debugNoVncUrl:Ljava/lang/String;

.field private iceServersJson:Ljava/lang/String;

.field private serviceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugNoVncUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;->debugNoVncUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getIceServersJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;->iceServersJson:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;->serviceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDebugNoVncUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;->debugNoVncUrl:Ljava/lang/String;

    return-void
.end method

.method public setIceServersJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;->iceServersJson:Ljava/lang/String;

    return-void
.end method

.method public setServiceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/PlayerReadyResponse$PlayerReady;->serviceUrl:Ljava/lang/String;

    return-void
.end method
