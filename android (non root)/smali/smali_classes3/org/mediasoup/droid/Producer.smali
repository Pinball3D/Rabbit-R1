.class public Lorg/mediasoup/droid/Producer;
.super Ljava/lang/Object;
.source "Producer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mediasoup/droid/Producer$Listener;
    }
.end annotation


# instance fields
.field private mCachedTrack:Lorg/webrtc/MediaStreamTrack;

.field private final mNativeProducer:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 29
    invoke-static {p1, p2}, Lorg/mediasoup/droid/Producer;->nativeGetTrack(J)J

    move-result-wide p1

    .line 30
    invoke-static {p1, p2}, Lorg/webrtc/RTCUtils;->createMediaStreamTrack(J)Lorg/webrtc/MediaStreamTrack;

    move-result-object p1

    iput-object p1, p0, Lorg/mediasoup/droid/Producer;->mCachedTrack:Lorg/webrtc/MediaStreamTrack;

    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetAppData(J)Ljava/lang/String;
.end method

.method private static native nativeGetId(J)Ljava/lang/String;
.end method

.method private static native nativeGetKind(J)Ljava/lang/String;
.end method

.method private static native nativeGetMaxSpatialLayer(J)I
.end method

.method private static native nativeGetRtpParameters(J)Ljava/lang/String;
.end method

.method private static native nativeGetStats(J)Ljava/lang/String;
.end method

.method private static native nativeGetTrack(J)J
.end method

.method private static native nativeIsClosed(J)Z
.end method

.method private static native nativeIsPaused(J)Z
.end method

.method private static native nativePause(J)V
.end method

.method private static native nativeReplaceTrack(JJ)V
.end method

.method private static native nativeResume(J)V
.end method

.method private static native nativeSetMaxSpatialLayer(JI)V
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 137
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeClose(J)V

    return-void
.end method

.method public getAppData()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 81
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeGetAppData(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 37
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeGetId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 51
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeGetKind(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxSpatialLayer()I
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 73
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeGetMaxSpatialLayer(J)I

    move-result p0

    return p0
.end method

.method public getRtpParameters()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 90
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeGetRtpParameters(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStats()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 132
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeGetStats(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTrack()Lorg/webrtc/MediaStreamTrack;
    .locals 0

    iget-object p0, p0, Lorg/mediasoup/droid/Producer;->mCachedTrack:Lorg/webrtc/MediaStreamTrack;

    return-object p0
.end method

.method public isClosed()Z
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 44
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeIsClosed(J)Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 65
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeIsPaused(J)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 112
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativePause(J)V

    return-void
.end method

.method public replaceTrack(Lorg/webrtc/MediaStreamTrack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lorg/webrtc/RTCUtils;->getNativeMediaStreamTrack(Lorg/webrtc/MediaStreamTrack;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 123
    invoke-static {v2, v3, v0, v1}, Lorg/mediasoup/droid/Producer;->nativeReplaceTrack(JJ)V

    iput-object p1, p0, Lorg/mediasoup/droid/Producer;->mCachedTrack:Lorg/webrtc/MediaStreamTrack;

    return-void
.end method

.method public resume()V
    .locals 2

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 95
    invoke-static {v0, v1}, Lorg/mediasoup/droid/Producer;->nativeResume(J)V

    return-void
.end method

.method public setMaxSpatialLayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mediasoup/droid/MediasoupException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/mediasoup/droid/Producer;->mNativeProducer:J

    .line 107
    invoke-static {v0, v1, p1}, Lorg/mediasoup/droid/Producer;->nativeSetMaxSpatialLayer(JI)V

    return-void
.end method
