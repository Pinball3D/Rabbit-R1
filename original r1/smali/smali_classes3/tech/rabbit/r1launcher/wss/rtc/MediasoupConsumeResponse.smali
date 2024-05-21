.class public Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;
.super Ljava/lang/Object;
.source "MediasoupConsumeResponse.java"


# instance fields
.field private consumerId:Ljava/lang/String;

.field private producerId:Ljava/lang/String;

.field private rtpParametersJson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtpParametersJson"
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
.method public getConsumerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;->consumerId:Ljava/lang/String;

    return-object p0
.end method

.method public getProducerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;->producerId:Ljava/lang/String;

    return-object p0
.end method

.method public getRtpParameters()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;->rtpParametersJson:Ljava/lang/String;

    return-object p0
.end method
