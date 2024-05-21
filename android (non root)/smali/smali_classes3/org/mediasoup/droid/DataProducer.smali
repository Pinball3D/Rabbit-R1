.class public Lorg/mediasoup/droid/DataProducer;
.super Ljava/lang/Object;
.source "DataProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mediasoup/droid/DataProducer$Listener;
    }
.end annotation


# instance fields
.field private final mNativeProducer:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetAppData(J)Ljava/lang/String;
.end method

.method private static native nativeGetBufferedAmount(J)J
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

.method private static native nativeSend(J[BZ)V
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 119
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeClose(J)V

    return-void
.end method

.method public getAppData()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 107
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeGetAppData(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBufferedAmount()J
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 99
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeGetBufferedAmount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 56
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeGetId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 84
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeGetLabel(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 63
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeGetLocalId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 91
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeGetProtocol(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReadyState()Lorg/webrtc/DataChannel$State;
    .locals 3

    .line 77
    invoke-static {}, Lorg/webrtc/DataChannel$State;->values()[Lorg/webrtc/DataChannel$State;

    move-result-object v0

    iget-wide v1, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    invoke-static {v1, v2}, Lorg/mediasoup/droid/DataProducer;->nativeGetReadyState(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSctpStreamParameters()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 70
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeGetSctpStreamParameters(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 114
    invoke-static {v0, v1}, Lorg/mediasoup/droid/DataProducer;->nativeIsClosed(J)Z

    move-result p0

    return p0
.end method

.method public send(Lorg/webrtc/DataChannel$Buffer;)V
    .locals 3

    .line 130
    iget-object v0, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 131
    iget-object v1, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lorg/mediasoup/droid/DataProducer;->mNativeProducer:J

    .line 132
    iget-boolean p0, p1, Lorg/webrtc/DataChannel$Buffer;->binary:Z

    invoke-static {v1, v2, v0, p0}, Lorg/mediasoup/droid/DataProducer;->nativeSend(J[BZ)V

    return-void
.end method
