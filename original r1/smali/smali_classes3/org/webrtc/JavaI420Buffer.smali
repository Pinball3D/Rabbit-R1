.class public Lorg/webrtc/JavaI420Buffer;
.super Ljava/lang/Object;
.source "JavaI420Buffer.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$I420Buffer;


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final refCountDelegate:Lorg/webrtc/RefCountDelegate;

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private final width:I


# direct methods
.method private constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/JavaI420Buffer;->width:I

    iput p2, p0, Lorg/webrtc/JavaI420Buffer;->height:I

    iput-object p3, p0, Lorg/webrtc/JavaI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lorg/webrtc/JavaI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    iput-object p7, p0, Lorg/webrtc/JavaI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    iput p4, p0, Lorg/webrtc/JavaI420Buffer;->strideY:I

    iput p6, p0, Lorg/webrtc/JavaI420Buffer;->strideU:I

    iput p8, p0, Lorg/webrtc/JavaI420Buffer;->strideV:I

    .line 39
    new-instance p1, Lorg/webrtc/RefCountDelegate;

    invoke-direct {p1, p9}, Lorg/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/webrtc/JavaI420Buffer;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    return-void
.end method

.method public static allocate(II)Lorg/webrtc/JavaI420Buffer;
    .locals 12

    add-int/lit8 v0, p1, 0x1

    .line 80
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, p0, 0x1

    .line 81
    div-int/lit8 v10, v1, 0x2

    mul-int v1, p0, p1

    mul-int v2, v10, v0

    add-int v3, v1, v2

    mul-int/lit8 v4, v10, 0x2

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    .line 87
    invoke-static {v4}, Lorg/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 93
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 97
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v3, v2

    .line 98
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 101
    new-instance v1, Lorg/webrtc/JavaI420Buffer;

    new-instance v11, Lorg/webrtc/JavaI420Buffer$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lorg/webrtc/JavaI420Buffer$$ExternalSyntheticLambda1;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v6, p0

    move v8, v10

    invoke-direct/range {v2 .. v11}, Lorg/webrtc/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v1
.end method

.method private static checkCapacity(Ljava/nio/ByteBuffer;III)V
    .locals 1

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p3, p2

    add-int/2addr p3, p1

    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-lt p1, p3, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Buffer must be at least "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes, but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static cropAndScaleI420(Lorg/webrtc/VideoFrame$I420Buffer;IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 19

    move/from16 v8, p3

    move/from16 v9, p5

    if-ne v8, v9, :cond_1

    move/from16 v7, p4

    move/from16 v6, p6

    if-ne v7, v6, :cond_0

    .line 174
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 176
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 178
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v3

    mul-int v3, v3, p2

    add-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, p2, 0x2

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->retain()V

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v4

    .line 184
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v10

    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lorg/webrtc/JavaI420Buffer$$ExternalSyntheticLambda0;

    move-object/from16 v12, p0

    invoke-direct {v11, v12}, Lorg/webrtc/JavaI420Buffer$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/VideoFrame$I420Buffer;)V

    move/from16 v0, p5

    move/from16 v1, p6

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move-object v6, v8

    move v7, v10

    move-object v8, v11

    .line 183
    invoke-static/range {v0 .. v8}, Lorg/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lorg/webrtc/JavaI420Buffer;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v12, p0

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v6, p6

    .line 187
    :goto_0
    invoke-static/range {p5 .. p6}, Lorg/webrtc/JavaI420Buffer;->allocate(II)Lorg/webrtc/JavaI420Buffer;

    move-result-object v18

    .line 188
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 189
    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    .line 190
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getStrideY()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 191
    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getStrideU()I

    move-result v13

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lorg/webrtc/JavaI420Buffer;->getStrideV()I

    move-result v15

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v16, p5

    move/from16 v17, p6

    .line 188
    invoke-static/range {v0 .. v17}, Lorg/webrtc/JavaI420Buffer;->nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    return-object v18
.end method

.method static synthetic lambda$allocate$0(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 102
    invoke-static {p0}, Lorg/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static native nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method public static wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lorg/webrtc/JavaI420Buffer;
    .locals 11

    move v1, p0

    move v2, p1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p6, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 65
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 66
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .line 68
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v2, 0x1

    .line 69
    div-int/lit8 v4, v4, 0x2

    move v6, p3

    .line 70
    invoke-static {v3, p0, p1, p3}, Lorg/webrtc/JavaI420Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    move/from16 v8, p5

    .line 71
    invoke-static {v5, v0, v4, v8}, Lorg/webrtc/JavaI420Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    move/from16 v9, p7

    .line 72
    invoke-static {v7, v0, v4, v9}, Lorg/webrtc/JavaI420Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    .line 74
    new-instance v10, Lorg/webrtc/JavaI420Buffer;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v4, p3

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v10

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data buffers must be direct byte buffers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data buffers cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 0

    .line 167
    invoke-static/range {p0 .. p6}, Lorg/webrtc/JavaI420Buffer;->cropAndScaleI420(Lorg/webrtc/VideoFrame$I420Buffer;IIIIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object p0

    return-object p0
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/JavaI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/JavaI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/JavaI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/webrtc/JavaI420Buffer;->height:I

    return p0
.end method

.method public getStrideU()I
    .locals 0

    iget p0, p0, Lorg/webrtc/JavaI420Buffer;->strideU:I

    return p0
.end method

.method public getStrideV()I
    .locals 0

    iget p0, p0, Lorg/webrtc/JavaI420Buffer;->strideV:I

    return p0
.end method

.method public getStrideY()I
    .locals 0

    iget p0, p0, Lorg/webrtc/JavaI420Buffer;->strideY:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/webrtc/JavaI420Buffer;->width:I

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/JavaI420Buffer;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    .line 161
    invoke-virtual {p0}, Lorg/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/JavaI420Buffer;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    .line 156
    invoke-virtual {p0}, Lorg/webrtc/RefCountDelegate;->retain()V

    return-void
.end method

.method public toI420()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 150
    invoke-virtual {p0}, Lorg/webrtc/JavaI420Buffer;->retain()V

    return-object p0
.end method
