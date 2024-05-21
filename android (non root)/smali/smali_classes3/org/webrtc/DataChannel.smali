.class public Lorg/webrtc/DataChannel;
.super Ljava/lang/Object;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/DataChannel$State;,
        Lorg/webrtc/DataChannel$Observer;,
        Lorg/webrtc/DataChannel$Buffer;,
        Lorg/webrtc/DataChannel$Init;
    }
.end annotation


# instance fields
.field private nativeDataChannel:J

.field private nativeObserver:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/webrtc/DataChannel;->nativeDataChannel:J

    return-void
.end method

.method private checkDataChannelExists()V
    .locals 4

    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeDataChannel:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DataChannel has been disposed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native nativeBufferedAmount()J
.end method

.method private native nativeClose()V
.end method

.method private native nativeId()I
.end method

.method private native nativeLabel()Ljava/lang/String;
.end method

.method private native nativeRegisterObserver(Lorg/webrtc/DataChannel$Observer;)J
.end method

.method private native nativeSend([BZ)Z
.end method

.method private native nativeState()Lorg/webrtc/DataChannel$State;
.end method

.method private native nativeUnregisterObserver(J)V
.end method


# virtual methods
.method public bufferedAmount()J
    .locals 2

    .line 150
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    .line 151
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->nativeBufferedAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    .line 157
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->nativeClose()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 172
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeDataChannel:J

    .line 173
    invoke-static {v0, v1}, Lorg/webrtc/JniCommon;->nativeReleaseRef(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/DataChannel;->nativeDataChannel:J

    return-void
.end method

.method getNativeDataChannel()J
    .locals 2

    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeDataChannel:J

    return-wide v0
.end method

.method public id()I
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    .line 136
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->nativeId()I

    move-result p0

    return p0
.end method

.method public label()Ljava/lang/String;
    .locals 0

    .line 130
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    .line 131
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->nativeLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerObserver(Lorg/webrtc/DataChannel$Observer;)V
    .locals 4

    .line 115
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 117
    invoke-direct {p0, v0, v1}, Lorg/webrtc/DataChannel;->nativeUnregisterObserver(J)V

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lorg/webrtc/DataChannel;->nativeRegisterObserver(Lorg/webrtc/DataChannel$Observer;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    return-void
.end method

.method public send(Lorg/webrtc/DataChannel$Buffer;)Z
    .locals 2

    .line 162
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    .line 165
    iget-object v0, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 166
    iget-object v1, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 167
    iget-boolean p1, p1, Lorg/webrtc/DataChannel$Buffer;->binary:Z

    invoke-direct {p0, v0, p1}, Lorg/webrtc/DataChannel;->nativeSend([BZ)Z

    move-result p0

    return p0
.end method

.method public state()Lorg/webrtc/DataChannel$State;
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    .line 141
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->nativeState()Lorg/webrtc/DataChannel$State;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lorg/webrtc/DataChannel;->checkDataChannelExists()V

    iget-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    .line 125
    invoke-direct {p0, v0, v1}, Lorg/webrtc/DataChannel;->nativeUnregisterObserver(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/DataChannel;->nativeObserver:J

    return-void
.end method
