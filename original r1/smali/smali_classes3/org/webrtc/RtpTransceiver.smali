.class public Lorg/webrtc/RtpTransceiver;
.super Ljava/lang/Object;
.source "RtpTransceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/RtpTransceiver$RtpTransceiverInit;,
        Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;
    }
.end annotation


# instance fields
.field private cachedReceiver:Lorg/webrtc/RtpReceiver;

.field private cachedSender:Lorg/webrtc/RtpSender;

.field private nativeRtpTransceiver:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 119
    invoke-static {p1, p2}, Lorg/webrtc/RtpTransceiver;->nativeGetSender(J)Lorg/webrtc/RtpSender;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/RtpTransceiver;->cachedSender:Lorg/webrtc/RtpSender;

    .line 120
    invoke-static {p1, p2}, Lorg/webrtc/RtpTransceiver;->nativeGetReceiver(J)Lorg/webrtc/RtpReceiver;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/RtpTransceiver;->cachedReceiver:Lorg/webrtc/RtpReceiver;

    return-void
.end method

.method private checkRtpTransceiverExists()V
    .locals 4

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RtpTransceiver has been disposed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeCurrentDirection(J)Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;
.end method

.method private static native nativeDirection(J)Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;
.end method

.method private static native nativeGetMediaType(J)Lorg/webrtc/MediaStreamTrack$MediaType;
.end method

.method private static native nativeGetMid(J)Ljava/lang/String;
.end method

.method private static native nativeGetReceiver(J)Lorg/webrtc/RtpReceiver;
.end method

.method private static native nativeGetSender(J)Lorg/webrtc/RtpSender;
.end method

.method private static native nativeSetDirection(JLorg/webrtc/RtpTransceiver$RtpTransceiverDirection;)Z
.end method

.method private static native nativeStopInternal(J)V
.end method

.method private static native nativeStopStandard(J)V
.end method

.method private static native nativeStopped(J)Z
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 241
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-object v0, p0, Lorg/webrtc/RtpTransceiver;->cachedSender:Lorg/webrtc/RtpSender;

    .line 242
    invoke-virtual {v0}, Lorg/webrtc/RtpSender;->dispose()V

    iget-object v0, p0, Lorg/webrtc/RtpTransceiver;->cachedReceiver:Lorg/webrtc/RtpReceiver;

    .line 243
    invoke-virtual {v0}, Lorg/webrtc/RtpReceiver;->dispose()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 244
    invoke-static {v0, v1}, Lorg/webrtc/JniCommon;->nativeReleaseRef(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    return-void
.end method

.method public getCurrentDirection()Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;
    .locals 2

    .line 192
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 193
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeCurrentDirection(J)Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;

    move-result-object p0

    return-object p0
.end method

.method public getDirection()Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;
    .locals 2

    .line 181
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 182
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeDirection(J)Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;

    move-result-object p0

    return-object p0
.end method

.method public getMediaType()Lorg/webrtc/MediaStreamTrack$MediaType;
    .locals 2

    .line 128
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 129
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeGetMediaType(J)Lorg/webrtc/MediaStreamTrack$MediaType;

    move-result-object p0

    return-object p0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 139
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 140
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeGetMid(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver()Lorg/webrtc/RtpReceiver;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpTransceiver;->cachedReceiver:Lorg/webrtc/RtpReceiver;

    return-object p0
.end method

.method public getSender()Lorg/webrtc/RtpSender;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpTransceiver;->cachedSender:Lorg/webrtc/RtpSender;

    return-object p0
.end method

.method public isStopped()Z
    .locals 2

    .line 171
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 172
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeStopped(J)Z

    move-result p0

    return p0
.end method

.method public setDirection(Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;)Z
    .locals 2

    .line 204
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 205
    invoke-static {v0, v1, p1}, Lorg/webrtc/RtpTransceiver;->nativeSetDirection(JLorg/webrtc/RtpTransceiver$RtpTransceiverDirection;)Z

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 2

    .line 213
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 214
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeStopInternal(J)V

    return-void
.end method

.method public stopInternal()V
    .locals 2

    .line 222
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 223
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeStopInternal(J)V

    return-void
.end method

.method public stopStandard()V
    .locals 2

    .line 235
    invoke-direct {p0}, Lorg/webrtc/RtpTransceiver;->checkRtpTransceiverExists()V

    iget-wide v0, p0, Lorg/webrtc/RtpTransceiver;->nativeRtpTransceiver:J

    .line 236
    invoke-static {v0, v1}, Lorg/webrtc/RtpTransceiver;->nativeStopStandard(J)V

    return-void
.end method
