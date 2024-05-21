.class public Ltech/rabbit/r1launcher/wss/rtc/RtpCapabilitiesResponse;
.super Ljava/lang/Object;
.source "RtpCapabilitiesResponse.java"


# instance fields
.field private rtpCapabilitiesJson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtpCapabilitiesJson"
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
.method public getRtpCapabilitiesJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RtpCapabilitiesResponse;->rtpCapabilitiesJson:Ljava/lang/String;

    return-object p0
.end method

.method public setRtpCapabilitiesJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RtpCapabilitiesResponse;->rtpCapabilitiesJson:Ljava/lang/String;

    return-void
.end method
