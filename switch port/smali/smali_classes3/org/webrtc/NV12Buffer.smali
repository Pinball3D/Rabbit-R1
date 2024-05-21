.class public Lorg/webrtc/NV12Buffer;
.super Ljava/lang/Object;
.source "NV12Buffer.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$Buffer;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final refCountDelegate:Lorg/webrtc/RefCountDelegate;

.field private final sliceHeight:I

.field private final stride:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/NV12Buffer;->width:I

    iput p2, p0, Lorg/webrtc/NV12Buffer;->height:I

    iput p3, p0, Lorg/webrtc/NV12Buffer;->stride:I

    iput p4, p0, Lorg/webrtc/NV12Buffer;->sliceHeight:I

    iput-object p5, p0, Lorg/webrtc/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    .line 31
    new-instance p1, Lorg/webrtc/RefCountDelegate;

    invoke-direct {p1, p6}, Lorg/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/webrtc/NV12Buffer;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    return-void
.end method

.method private static native nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 62
    invoke-static/range {p5 .. p6}, Lorg/webrtc/JavaI420Buffer;->allocate(II)Lorg/webrtc/JavaI420Buffer;

    move-result-object v18

    iget-object v7, v0, Lorg/webrtc/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    iget v8, v0, Lorg/webrtc/NV12Buffer;->width:I

    iget v9, v0, Lorg/webrtc/NV12Buffer;->height:I

    iget v10, v0, Lorg/webrtc/NV12Buffer;->stride:I

    iget v11, v0, Lorg/webrtc/NV12Buffer;->sliceHeight:I

    .line 64
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getStrideY()I

    move-result v13

    .line 65
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getStrideU()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getStrideV()I

    move-result v17

    .line 63
    invoke-static/range {v1 .. v17}, Lorg/webrtc/NV12Buffer;->nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    return-object v18
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/webrtc/NV12Buffer;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/webrtc/NV12Buffer;->width:I

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NV12Buffer;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    .line 56
    invoke-virtual {p0}, Lorg/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NV12Buffer;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    .line 51
    invoke-virtual {p0}, Lorg/webrtc/RefCountDelegate;->retain()V

    return-void
.end method

.method public toI420()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lorg/webrtc/NV12Buffer;->width:I

    iget v6, p0, Lorg/webrtc/NV12Buffer;->height:I

    move-object v0, p0

    move v3, v5

    move v4, v6

    .line 46
    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/NV12Buffer;->cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object p0

    check-cast p0, Lorg/webrtc/VideoFrame$I420Buffer;

    return-object p0
.end method
