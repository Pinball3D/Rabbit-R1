.class public Lorg/webrtc/VideoDecoderFallback;
.super Lorg/webrtc/WrappedNativeVideoDecoder;
.source "VideoDecoderFallback.java"


# instance fields
.field private final fallback:Lorg/webrtc/VideoDecoder;

.field private final primary:Lorg/webrtc/VideoDecoder;


# direct methods
.method public constructor <init>(Lorg/webrtc/VideoDecoder;Lorg/webrtc/VideoDecoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/webrtc/WrappedNativeVideoDecoder;-><init>()V

    iput-object p1, p0, Lorg/webrtc/VideoDecoderFallback;->fallback:Lorg/webrtc/VideoDecoder;

    iput-object p2, p0, Lorg/webrtc/VideoDecoderFallback;->primary:Lorg/webrtc/VideoDecoder;

    return-void
.end method

.method private static native nativeCreateDecoder(Lorg/webrtc/VideoDecoder;Lorg/webrtc/VideoDecoder;)J
.end method


# virtual methods
.method public createNativeVideoDecoder()J
    .locals 2

    iget-object v0, p0, Lorg/webrtc/VideoDecoderFallback;->fallback:Lorg/webrtc/VideoDecoder;

    iget-object p0, p0, Lorg/webrtc/VideoDecoderFallback;->primary:Lorg/webrtc/VideoDecoder;

    .line 27
    invoke-static {v0, p0}, Lorg/webrtc/VideoDecoderFallback;->nativeCreateDecoder(Lorg/webrtc/VideoDecoder;Lorg/webrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method
