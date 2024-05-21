.class Lorg/webrtc/VideoDecoderWrapper;
.super Ljava/lang/Object;
.source "VideoDecoderWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDecoderCallback(J)Lorg/webrtc/VideoDecoder$Callback;
    .locals 1

    .line 21
    new-instance v0, Lorg/webrtc/VideoDecoderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/VideoDecoderWrapper$$ExternalSyntheticLambda0;-><init>(J)V

    return-object v0
.end method

.method static synthetic lambda$createDecoderCallback$0(JLorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lorg/webrtc/VideoDecoderWrapper;->nativeOnDecodedFrame(JLorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private static native nativeOnDecodedFrame(JLorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method
