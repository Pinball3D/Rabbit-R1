.class public Lorg/mediasoup/droid/SendTransport;
.super Lorg/mediasoup/droid/Transport;
.source "SendTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mediasoup/droid/SendTransport$Listener;
    }
.end annotation


# instance fields
.field private mNativeTransport:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;-><init>()V

    iput-wide p1, p0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    return-void
.end method

.method private checkTransportExists()V
    .locals 4

    iget-wide v0, p0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SendTransport has been disposed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeFreeTransport(J)V
.end method

.method private static native nativeGetNativeTransport(J)J
.end method

.method private static native nativeProduce(JLorg/mediasoup/droid/Producer$Listener;J[Lorg/webrtc/RtpParameters$Encoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Producer;
.end method

.method private static native nativeProduceData(JLorg/mediasoup/droid/DataProducer$Listener;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)Lorg/mediasoup/droid/DataProducer;
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/mediasoup/droid/SendTransport;->checkTransportExists()V

    iget-wide v0, p0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    .line 59
    invoke-static {v0, v1}, Lorg/mediasoup/droid/SendTransport;->nativeFreeTransport(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    return-void
.end method

.method public getNativeTransport()J
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    .line 71
    invoke-static {v0, v1}, Lorg/mediasoup/droid/SendTransport;->nativeGetNativeTransport(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public produce(Lorg/mediasoup/droid/Producer$Listener;Lorg/webrtc/MediaStreamTrack;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Producer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mediasoup/droid/Producer$Listener;",
            "Lorg/webrtc/MediaStreamTrack;",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Encoding;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mediasoup/droid/Producer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 92
    invoke-virtual/range {v0 .. v6}, Lorg/mediasoup/droid/SendTransport;->produce(Lorg/mediasoup/droid/Producer$Listener;Lorg/webrtc/MediaStreamTrack;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Producer;

    move-result-object p0

    return-object p0
.end method

.method public produce(Lorg/mediasoup/droid/Producer$Listener;Lorg/webrtc/MediaStreamTrack;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Producer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mediasoup/droid/Producer$Listener;",
            "Lorg/webrtc/MediaStreamTrack;",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Encoding;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mediasoup/droid/Producer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lorg/mediasoup/droid/SendTransport;->checkTransportExists()V

    .line 116
    invoke-static {p2}, Lorg/webrtc/RTCUtils;->getNativeMediaStreamTrack(Lorg/webrtc/MediaStreamTrack;)J

    move-result-wide v3

    if-eqz p3, :cond_0

    .line 118
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 119
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lorg/webrtc/RtpParameters$Encoding;

    .line 120
    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    iget-wide v0, p0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 122
    invoke-static/range {v0 .. v8}, Lorg/mediasoup/droid/SendTransport;->nativeProduce(JLorg/mediasoup/droid/Producer$Listener;J[Lorg/webrtc/RtpParameters$Encoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Producer;

    move-result-object p0

    return-object p0
.end method

.method public produceData(Lorg/mediasoup/droid/DataProducer$Listener;)Lorg/mediasoup/droid/DataProducer;
    .locals 9

    iget-wide v0, p0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    .line 133
    invoke-static/range {v0 .. v8}, Lorg/mediasoup/droid/SendTransport;->nativeProduceData(JLorg/mediasoup/droid/DataProducer$Listener;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)Lorg/mediasoup/droid/DataProducer;

    move-result-object p0

    return-object p0
.end method

.method public produceData(Lorg/mediasoup/droid/DataProducer$Listener;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)Lorg/mediasoup/droid/DataProducer;
    .locals 9

    move-object v0, p0

    iget-wide v0, v0, Lorg/mediasoup/droid/SendTransport;->mNativeTransport:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 159
    invoke-static/range {v0 .. v8}, Lorg/mediasoup/droid/SendTransport;->nativeProduceData(JLorg/mediasoup/droid/DataProducer$Listener;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)Lorg/mediasoup/droid/DataProducer;

    move-result-object v0

    return-object v0
.end method
