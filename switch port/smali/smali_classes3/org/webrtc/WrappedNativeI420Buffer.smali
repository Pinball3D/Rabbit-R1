.class Lorg/webrtc/WrappedNativeI420Buffer;
.super Ljava/lang/Object;
.source "WrappedNativeI420Buffer.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$I420Buffer;


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final nativeBuffer:J

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private final width:I


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IJ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/WrappedNativeI420Buffer;->width:I

    iput p2, p0, Lorg/webrtc/WrappedNativeI420Buffer;->height:I

    iput-object p3, p0, Lorg/webrtc/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    iput p4, p0, Lorg/webrtc/WrappedNativeI420Buffer;->strideY:I

    iput-object p5, p0, Lorg/webrtc/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    iput p6, p0, Lorg/webrtc/WrappedNativeI420Buffer;->strideU:I

    iput-object p7, p0, Lorg/webrtc/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    iput p8, p0, Lorg/webrtc/WrappedNativeI420Buffer;->strideV:I

    iput-wide p9, p0, Lorg/webrtc/WrappedNativeI420Buffer;->nativeBuffer:J

    .line 42
    invoke-virtual {p0}, Lorg/webrtc/WrappedNativeI420Buffer;->retain()V

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 0

    .line 107
    invoke-static/range {p0 .. p6}, Lorg/webrtc/JavaI420Buffer;->cropAndScaleI420(Lorg/webrtc/VideoFrame$I420Buffer;IIIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object p0

    return-object p0
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->height:I

    return p0
.end method

.method public getStrideU()I
    .locals 0

    iget p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->strideU:I

    return p0
.end method

.method public getStrideV()I
    .locals 0

    iget p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->strideV:I

    return p0
.end method

.method public getStrideY()I
    .locals 0

    iget p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->strideY:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->width:I

    return p0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->nativeBuffer:J

    .line 101
    invoke-static {v0, v1}, Lorg/webrtc/JniCommon;->nativeReleaseRef(J)V

    return-void
.end method

.method public retain()V
    .locals 2

    iget-wide v0, p0, Lorg/webrtc/WrappedNativeI420Buffer;->nativeBuffer:J

    .line 96
    invoke-static {v0, v1}, Lorg/webrtc/JniCommon;->nativeAddRef(J)V

    return-void
.end method

.method public toI420()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lorg/webrtc/WrappedNativeI420Buffer;->retain()V

    return-object p0
.end method
