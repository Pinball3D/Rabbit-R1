.class Lorg/webrtc/NativeAndroidVideoTrackSource;
.super Ljava/lang/Object;
.source "NativeAndroidVideoTrackSource.java"


# instance fields
.field private final nativeAndroidVideoTrackSource:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    return-void
.end method

.method static createFrameAdaptationParameters(IIIIIIJZ)Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;
    .locals 11

    .line 83
    new-instance v10, Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;-><init>(IIIIIIJZ)V

    return-object v10
.end method

.method private static native nativeAdaptFrame(JIIIJ)Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;
.end method

.method private static native nativeAdaptOutputFormat(JIILjava/lang/Integer;IILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method private static native nativeOnFrameCaptured(JIJLorg/webrtc/VideoFrame$Buffer;)V
.end method

.method private static native nativeSetIsScreencast(JZ)V
.end method

.method private static native nativeSetState(JZ)V
.end method


# virtual methods
.method public adaptFrame(Lorg/webrtc/VideoFrame;)Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;
    .locals 7

    iget-wide v0, p0, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    .line 49
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object p0

    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    .line 50
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object p0

    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v4

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v5

    .line 49
    invoke-static/range {v0 .. v6}, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAdaptFrame(JIIIJ)Lorg/webrtc/VideoProcessor$FrameAdaptationParameters;

    move-result-object p0

    return-object p0
.end method

.method public adaptOutputFormat(Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9

    iget-wide v0, p0, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    .line 70
    iget v2, p1, Lorg/webrtc/VideoSource$AspectRatio;->width:I

    iget v3, p1, Lorg/webrtc/VideoSource$AspectRatio;->height:I

    iget v5, p3, Lorg/webrtc/VideoSource$AspectRatio;->width:I

    iget v6, p3, Lorg/webrtc/VideoSource$AspectRatio;->height:I

    move-object v4, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAdaptOutputFormat(JIILjava/lang/Integer;IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onFrameCaptured(Lorg/webrtc/VideoFrame;)V
    .locals 6

    iget-wide v0, p0, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    .line 58
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v2

    .line 59
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v5

    .line 58
    invoke-static/range {v0 .. v5}, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeOnFrameCaptured(JIJLorg/webrtc/VideoFrame$Buffer;)V

    return-void
.end method

.method public setIsScreencast(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    .line 76
    invoke-static {v0, v1, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeSetIsScreencast(JZ)V

    return-void
.end method

.method public setState(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    .line 38
    invoke-static {v0, v1, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->nativeSetState(JZ)V

    return-void
.end method
