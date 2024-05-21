.class public Lorg/mediasoup/droid/RecvTransport;
.super Lorg/mediasoup/droid/Transport;
.source "RecvTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mediasoup/droid/RecvTransport$Listener;
    }
.end annotation


# instance fields
.field private mNativeTransport:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/mediasoup/droid/Transport;-><init>()V

    iput-wide p1, p0, Lorg/mediasoup/droid/RecvTransport;->mNativeTransport:J

    return-void
.end method

.method private checkTransportExists()V
    .locals 4

    iget-wide v0, p0, Lorg/mediasoup/droid/RecvTransport;->mNativeTransport:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RecvTransport has been disposed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeConsume(JLorg/mediasoup/droid/Consumer$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Consumer;
.end method

.method private static native nativeConsumeData(JLorg/mediasoup/droid/DataConsumer$Listener;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/DataConsumer;
.end method

.method private static native nativeFreeTransport(J)V
.end method

.method private static native nativeGetNativeTransport(J)J
.end method


# virtual methods
.method public consume(Lorg/mediasoup/droid/Consumer$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Consumer;
    .locals 7
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

    .line 47
    invoke-virtual/range {v0 .. v6}, Lorg/mediasoup/droid/RecvTransport;->consume(Lorg/mediasoup/droid/Consumer$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public consume(Lorg/mediasoup/droid/Consumer$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Consumer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/mediasoup/droid/RecvTransport;->checkTransportExists()V

    iget-wide v0, p0, Lorg/mediasoup/droid/RecvTransport;->mNativeTransport:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 71
    invoke-static/range {v0 .. v7}, Lorg/mediasoup/droid/RecvTransport;->nativeConsume(JLorg/mediasoup/droid/Consumer$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public consumeData(Lorg/mediasoup/droid/DataConsumer$Listener;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/mediasoup/droid/DataConsumer;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 86
    invoke-virtual/range {v0 .. v8}, Lorg/mediasoup/droid/RecvTransport;->consumeData(Lorg/mediasoup/droid/DataConsumer$Listener;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/DataConsumer;

    move-result-object p0

    return-object p0
.end method

.method public consumeData(Lorg/mediasoup/droid/DataConsumer$Listener;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/DataConsumer;
    .locals 10

    .line 109
    invoke-direct {p0}, Lorg/mediasoup/droid/RecvTransport;->checkTransportExists()V

    move-object v0, p0

    iget-wide v0, v0, Lorg/mediasoup/droid/RecvTransport;->mNativeTransport:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 110
    invoke-static/range {v0 .. v9}, Lorg/mediasoup/droid/RecvTransport;->nativeConsumeData(JLorg/mediasoup/droid/DataConsumer$Listener;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/DataConsumer;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lorg/mediasoup/droid/RecvTransport;->checkTransportExists()V

    iget-wide v0, p0, Lorg/mediasoup/droid/RecvTransport;->mNativeTransport:J

    .line 18
    invoke-static {v0, v1}, Lorg/mediasoup/droid/RecvTransport;->nativeFreeTransport(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mediasoup/droid/RecvTransport;->mNativeTransport:J

    return-void
.end method

.method public getNativeTransport()J
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/RecvTransport;->mNativeTransport:J

    .line 24
    invoke-static {v0, v1}, Lorg/mediasoup/droid/RecvTransport;->nativeGetNativeTransport(J)J

    move-result-wide v0

    return-wide v0
.end method
