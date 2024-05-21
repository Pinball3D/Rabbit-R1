.class public Lorg/mediasoup/droid/DataConsumer;
.super Ljava/lang/Object;
.source "DataConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mediasoup/droid/DataConsumer$Listener;
    }
.end annotation


# instance fields
.field private final mNativeConsumer:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    return-void
.end method

.method public static generateBuffer(Ljava/nio/ByteBuffer;Z)Lorg/webrtc/DataChannel$Buffer;
    .locals 1

    .line 65
    new-instance v0, Lorg/webrtc/DataChannel$Buffer;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetAppData(J)Ljava/lang/String;
.end method

.method private static native nativeGetDataProducerId(J)Ljava/lang/String;
.end method

.method private static native nativeGetId(J)Ljava/lang/String;
.end method

.method private static native nativeGetLabel(J)Ljava/lang/String;
.end method

.method private static native nativeGetLocalId(J)Ljava/lang/String;
.end method

.method private static native nativeGetProtocol(J)Ljava/lang/String;
.end method

.method private static native nativeGetReadyState(J)I
.end method

.method private static native nativeGetSctpStreamParameters(J)Ljava/lang/String;
.end method

.method private static native nativeIsClosed(J)Z
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 141
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeClose(J)V

    return-void
.end method

.method public getAppData()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 129
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeGetAppData(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataProducerId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 93
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeGetDataProducerId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 79
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeGetId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 114
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeGetLabel(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 86
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeGetLocalId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 121
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeGetProtocol(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReadyState()Lorg/webrtc/DataChannel$State;
    .locals 3

    .line 107
    invoke-static {}, Lorg/webrtc/DataChannel$State;->values()[Lorg/webrtc/DataChannel$State;

    move-result-object v0

    iget-wide v1, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    invoke-static {v1, v2}, Lorg/mediasoup/droid/DataConsumer;->nativeGetReadyState(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSctpStreamParameters()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 100
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeGetSctpStreamParameters(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataConsumer;->mNativeConsumer:J

    .line 136
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataConsumer;->nativeIsClosed(J)Z

    move-result p0

    return p0
.end method
