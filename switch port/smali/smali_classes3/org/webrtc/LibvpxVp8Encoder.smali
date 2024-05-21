.class public Lorg/webrtc/LibvpxVp8Encoder;
.super Lorg/webrtc/WrappedNativeVideoEncoder;
.source "LibvpxVp8Encoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/webrtc/WrappedNativeVideoEncoder;-><init>()V

    return-void
.end method

.method static native nativeCreateEncoder()J
.end method


# virtual methods
.method public createNativeVideoEncoder()J
    .locals 2

    .line 16
    invoke-static {}, Lorg/webrtc/LibvpxVp8Encoder;->nativeCreateEncoder()J

    move-result-wide v0

    return-wide v0
.end method

.method public isHardwareEncoder()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
