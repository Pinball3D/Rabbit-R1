.class public Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;
.super Ljava/lang/Object;
.source "RTCInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$Holder;,
        Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$RTCStateListener;
    }
.end annotation


# static fields
.field public static final MAX_VOLUME:D = 0.3

.field public static final MIN_VOLUME:D = 0.01

.field private static final TAG:Ljava/lang/String; = "RTCInstance"

.field private static mTransportResponse:Ltech/rabbit/r1launcher/wss/rtc/CreateWebRtcTransportResponse;


# instance fields
.field private mAppData:Ljava/lang/String;

.field private mBaseUrl:Ljava/lang/String;

.field private mConfig:Lorg/mediasoup/droid/PeerConnection$Options;

.field private mConsumer:Lorg/mediasoup/droid/Consumer;

.field public mContext:Landroid/content/Context;

.field mCurrentVolume:D

.field private mDtlsParameters:Ljava/lang/String;

.field private mIceCandidates:Ljava/lang/String;

.field private mIceParameters:Ljava/lang/String;

.field private mMediasoupDevice:Lorg/mediasoup/droid/Device;

.field private mRTCStateListener:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$RTCStateListener;

.field public mRTCStateMsg:Ljava/lang/String;

.field private mRecvTransport:Lorg/mediasoup/droid/RecvTransport;

.field private mSctp:Ljava/lang/Object;

.field private mStream:Lorg/webrtc/MediaStream;

.field private mTrack:Lorg/webrtc/MediaStreamTrack;

.field private mTransportId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mCurrentVolume:D

    const-string v0, "Disconnect"

    iput-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRTCStateMsg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->updateState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTransportId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mBaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->handleConnectionStateChange(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;
    .locals 1

    .line 83
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$Holder;->access$100()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object v0

    return-object v0
.end method

.method private handleConnectionStateChange(Ljava/lang/String;)V
    .locals 1

    const-string v0, "disconnected"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RTCInstance"

    const-string v0, "WebRTC disconnected. Attempting to reconnect..."

    .line 197
    invoke-static {p1, v0}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->reconnect()V

    :cond_0
    return-void
.end method

.method static handleStreamConnect(Lokhttp3/OkHttpClient;Ljava/lang/String;Ltech/rabbit/r1launcher/wss/rtc/CreateWebRtcTransportResponse;Lorg/mediasoup/droid/Device;)V
    .locals 6

    const-string v0, "handleStreamConnect Exception"

    const-string v1, "RTCInstance"

    const-string v2, "handleStreamConnect: "

    .line 152
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "transportId"

    .line 154
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/wss/rtc/CreateWebRtcTransportResponse;->getTransportId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "rtpCapabilitiesJson"

    .line 155
    invoke-virtual {p3}, Lorg/mediasoup/droid/Device;->getRtpCapabilities()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sput-object p2, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTransportResponse:Ltech/rabbit/r1launcher/wss/rtc/CreateWebRtcTransportResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 158
    invoke-static {v1, v0, p2}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/json"

    .line 163
    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 162
    invoke-static {v3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 164
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "/mediasoupConsume"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 166
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "Content-Type"

    .line 167
    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 171
    :try_start_1
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 176
    const-class p2, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;->getConsumerId()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;->getProducerId()Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/wss/rtc/MediasoupConsumeResponse;->getRtpParameters()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object p3

    const-string v2, "audio"

    invoke-virtual {p3, p0, p2, v2, p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->createConsumer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->TAG:Ljava/lang/String;

    const-string p1, "onMessage: onError"

    invoke-static {p0, p1}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 190
    invoke-static {v1, v0, p0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static isBluetoothDeviceOn(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "audio"

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x2

    .line 264
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 265
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceInfo;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bluetooth device type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RTCInstance"

    invoke-static {v2, v1}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    .line 270
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "bluetooth connected, audioManager mode: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$createConsumer$0(Lorg/mediasoup/droid/Consumer;)V
    .locals 1

    const-string p0, "RTCInstance"

    const-string v0, "onTransportClose: "

    .line 220
    invoke-static {p0, v0}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reconnect()V
    .locals 9

    iget-object v1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mBaseUrl:Ljava/lang/String;

    iget-object v2, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mIceParameters:Ljava/lang/String;

    iget-object v3, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mIceCandidates:Ljava/lang/String;

    iget-object v4, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTransportId:Ljava/lang/String;

    iget-object v5, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mSctp:Ljava/lang/Object;

    iget-object v6, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mConfig:Lorg/mediasoup/droid/PeerConnection$Options;

    iget-object v7, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mAppData:Ljava/lang/String;

    iget-object v8, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mDtlsParameters:Ljava/lang/String;

    move-object v0, p0

    .line 203
    invoke-virtual/range {v0 .. v8}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->createRecvTransport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mediasoup/droid/PeerConnection$Options;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/RecvTransport;

    .line 205
    invoke-static {}, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->client()Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mBaseUrl:Ljava/lang/String;

    sget-object v1, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTransportResponse:Ltech/rabbit/r1launcher/wss/rtc/CreateWebRtcTransportResponse;

    .line 207
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->getInstance()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    move-result-object v2

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->createDevice()Lorg/mediasoup/droid/Device;

    move-result-object v2

    .line 206
    invoke-static {v0, p0, v1, v2}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->handleStreamConnect(Lokhttp3/OkHttpClient;Ljava/lang/String;Ltech/rabbit/r1launcher/wss/rtc/CreateWebRtcTransportResponse;Lorg/mediasoup/droid/Device;)V

    return-void
.end method

.method public static setBluetoothScoOn(Landroid/content/Context;)V
    .locals 2

    const-string v0, "RTCInstance"

    const-string v1, "setBluetoothScoOn: "

    .line 286
    invoke-static {v0, v1}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio"

    .line 287
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v1, 0x1

    .line 289
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 290
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public static setSpeakerMode(Landroid/content/Context;)V
    .locals 1

    .line 254
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->isBluetoothDeviceOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->setBluetoothScoOn(Landroid/content/Context;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->setSpeakerphoneOn(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static setSpeakerphoneOn(Landroid/content/Context;)V
    .locals 2

    const-string v0, "RTCInstance"

    const-string v1, "setSpeakerphoneOn: "

    .line 279
    invoke-static {v0, v1}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio"

    .line 280
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method private updateState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "completed"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Connected"

    :cond_0
    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRTCStateMsg:Ljava/lang/String;

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRTCStateListener:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$RTCStateListener;

    if-eqz p0, :cond_1

    .line 107
    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$RTCStateListener;->onChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeRTC()V
    .locals 2

    const-string v0, "RTCInstance"

    const-string v1, "closeRTC"

    .line 239
    invoke-static {v0, v1}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRecvTransport:Lorg/mediasoup/droid/RecvTransport;

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/mediasoup/droid/RecvTransport;->close()V

    :cond_0
    return-void
.end method

.method public closeStream()V
    .locals 2

    const-string v0, "RTCInstance"

    const-string v1, "closeStream"

    .line 232
    invoke-static {v0, v1}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mStream:Lorg/webrtc/MediaStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mConsumer:Lorg/mediasoup/droid/Consumer;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lorg/mediasoup/droid/Consumer;->getTrack()Lorg/webrtc/MediaStreamTrack;

    move-result-object v0

    instance-of v0, v0, Lorg/webrtc/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mStream:Lorg/webrtc/MediaStream;

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mConsumer:Lorg/mediasoup/droid/Consumer;

    .line 234
    invoke-virtual {p0}, Lorg/mediasoup/droid/Consumer;->getTrack()Lorg/webrtc/MediaStreamTrack;

    move-result-object p0

    check-cast p0, Lorg/webrtc/AudioTrack;

    invoke-virtual {v0, p0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/AudioTrack;)Z

    :cond_0
    return-void
.end method

.method public createConsumer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRecvTransport:Lorg/mediasoup/droid/RecvTransport;

    const-string v1, "RTCInstance"

    if-nez v0, :cond_0

    const-string p0, "createConsumer mRecvTransport is null"

    .line 213
    invoke-static {v1, p0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 218
    invoke-static {v0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->setSpeakerMode(Landroid/content/Context;)V

    .line 220
    :cond_1
    new-instance v3, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRecvTransport:Lorg/mediasoup/droid/RecvTransport;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 221
    invoke-virtual/range {v2 .. v7}, Lorg/mediasoup/droid/RecvTransport;->consume(Lorg/mediasoup/droid/Consumer$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Consumer;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mConsumer:Lorg/mediasoup/droid/Consumer;

    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p1}, Lorg/mediasoup/droid/Consumer;->getTrack()Lorg/webrtc/MediaStreamTrack;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTrack:Lorg/webrtc/MediaStreamTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "createConsumer Exception"

    .line 227
    invoke-static {v1, p1, p0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public createDevice()Lorg/mediasoup/droid/Device;
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mMediasoupDevice:Lorg/mediasoup/droid/Device;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lorg/mediasoup/droid/Device;

    invoke-direct {v0}, Lorg/mediasoup/droid/Device;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mMediasoupDevice:Lorg/mediasoup/droid/Device;

    :goto_0
    return-object v0
.end method

.method public createRecvTransport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mediasoup/droid/PeerConnection$Options;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/RecvTransport;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mBaseUrl:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mIceParameters:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mIceCandidates:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTransportId:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mSctp:Ljava/lang/Object;

    move-object/from16 v1, p6

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mConfig:Lorg/mediasoup/droid/PeerConnection$Options;

    move-object/from16 v1, p7

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mAppData:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mDtlsParameters:Ljava/lang/String;

    .line 124
    new-instance v2, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;

    invoke-direct {v2, p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;-><init>(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;)V

    iget-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mMediasoupDevice:Lorg/mediasoup/droid/Device;

    iget-object v3, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTransportId:Ljava/lang/String;

    iget-object v4, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mIceParameters:Ljava/lang/String;

    iget-object v5, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mIceCandidates:Ljava/lang/String;

    iget-object v6, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mDtlsParameters:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mConfig:Lorg/mediasoup/droid/PeerConnection$Options;

    iget-object v9, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mAppData:Ljava/lang/String;

    .line 140
    invoke-virtual/range {v1 .. v9}, Lorg/mediasoup/droid/Device;->createRecvTransport(Lorg/mediasoup/droid/RecvTransport$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/mediasoup/droid/PeerConnection$Options;Ljava/lang/String;)Lorg/mediasoup/droid/RecvTransport;

    move-result-object v1

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRecvTransport:Lorg/mediasoup/droid/RecvTransport;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "RTCInstance"

    const-string v2, "createRecvTransport Exception"

    .line 144
    invoke-static {v1, v2, v0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioTrack()Lorg/webrtc/AudioTrack;
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mTrack:Lorg/webrtc/MediaStreamTrack;

    .line 62
    instance-of v0, p0, Lorg/webrtc/AudioTrack;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Lorg/webrtc/AudioTrack;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentVolume()Ljava/lang/Double;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCurrentVolume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mCurrentVolume:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTCInstance"

    invoke-static {v1, v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mCurrentVolume:D

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 2

    const-string v0, "RTCInstance"

    const-string v1, "release"

    .line 246
    invoke-static {v0, v1}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->closeStream()V

    .line 248
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->closeRTC()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mMediasoupDevice:Lorg/mediasoup/droid/Device;

    return-void
.end method

.method public setCurrentVolume(D)V
    .locals 2

    iput-wide p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mCurrentVolume:D

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setCurrentVolume: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mCurrentVolume:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RTCInstance"

    invoke-static {p1, p0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRTCStateListener(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$RTCStateListener;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->mRTCStateListener:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$RTCStateListener;

    return-void
.end method
