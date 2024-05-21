.class Lorg/webrtc/AndroidVideoDecoder;
.super Ljava/lang/Object;
.source "AndroidVideoDecoder.java"

# interfaces
.implements Lorg/webrtc/VideoDecoder;
.implements Lorg/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;,
        Lorg/webrtc/AndroidVideoDecoder$FrameInfo;
    }
.end annotation


# static fields
.field private static final DEQUEUE_INPUT_TIMEOUT_US:I = 0x7a120

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final MEDIA_FORMAT_KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final MEDIA_FORMAT_KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final MEDIA_FORMAT_KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final MEDIA_FORMAT_KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MEDIA_FORMAT_KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field private static final MEDIA_FORMAT_KEY_STRIDE:Ljava/lang/String; = "stride"

.field private static final TAG:Ljava/lang/String; = "AndroidVideoDecoder"


# instance fields
.field private callback:Lorg/webrtc/VideoDecoder$Callback;

.field private codec:Lorg/webrtc/MediaCodecWrapper;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/webrtc/VideoCodecMimeType;

.field private colorFormat:I

.field private decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private final dimensionLock:Ljava/lang/Object;

.field private final frameInfos:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/webrtc/AndroidVideoDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasDecodedFirstFrame:Z

.field private height:I

.field private keyFrameRequired:Z

.field private final mediaCodecWrapperFactory:Lorg/webrtc/MediaCodecWrapperFactory;

.field private outputThread:Ljava/lang/Thread;

.field private outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private renderedTextureMetadata:Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

.field private final renderedTextureMetadataLock:Ljava/lang/Object;

.field private volatile running:Z

.field private final sharedContext:Lorg/webrtc/EglBase$Context;

.field private volatile shutdownException:Ljava/lang/Exception;

.field private sliceHeight:I

.field private stride:I

.field private surface:Landroid/view/Surface;

.field private surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private width:I


# direct methods
.method constructor <init>(Lorg/webrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/webrtc/VideoCodecMimeType;ILorg/webrtc/EglBase$Context;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 133
    invoke-direct {p0, p4}, Lorg/webrtc/AndroidVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ctor name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidVideoDecoder"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/webrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lorg/webrtc/MediaCodecWrapperFactory;

    iput-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    iput-object p3, p0, Lorg/webrtc/AndroidVideoDecoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    iput p4, p0, Lorg/webrtc/AndroidVideoDecoder;->colorFormat:I

    iput-object p5, p0, Lorg/webrtc/AndroidVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    .line 144
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lorg/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    return-void

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported color format: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$002(Lorg/webrtc/AndroidVideoDecoder;Lorg/webrtc/ThreadUtils$ThreadChecker;)Lorg/webrtc/ThreadUtils$ThreadChecker;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/AndroidVideoDecoder;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/webrtc/AndroidVideoDecoder;->running:Z

    return p0
.end method

.method static synthetic access$200(Lorg/webrtc/AndroidVideoDecoder;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/webrtc/AndroidVideoDecoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method private copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 18

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 513
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_3

    add-int/lit8 v1, v6, 0x1

    .line 523
    div-int/lit8 v9, v1, 0x2

    .line 524
    rem-int/lit8 v10, p3, 0x2

    if-nez v10, :cond_0

    add-int/lit8 v1, v7, 0x1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v7, 0x2

    :goto_0
    move v11, v1

    .line 526
    div-int/lit8 v12, v3, 0x2

    mul-int v1, v3, v7

    mul-int v13, v3, p3

    mul-int v2, v12, v11

    add-int v8, v13, v2

    mul-int v4, v12, p3

    .line 532
    div-int/lit8 v4, v4, 0x2

    add-int v14, v13, v4

    add-int v15, v14, v2

    move-object/from16 v5, p0

    .line 535
    invoke-virtual {v5, v6, v7}, Lorg/webrtc/AndroidVideoDecoder;->allocateI420Buffer(II)Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object v16

    .line 537
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 538
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 540
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v17

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v5, v17

    move/from16 v6, p4

    move/from16 v7, p5

    .line 539
    invoke-virtual/range {v1 .. v7}, Lorg/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 542
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 543
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 544
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v6

    move-object/from16 v2, p0

    move v4, v12

    move v7, v9

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lorg/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    add-int/lit8 v2, v11, -0x1

    mul-int/2addr v2, v12

    add-int/2addr v13, v2

    .line 547
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 549
    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 550
    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    mul-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 551
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 554
    :cond_1
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 555
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v6

    move-object/from16 v2, p0

    move v4, v12

    move v7, v9

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lorg/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    if-ne v10, v1, :cond_2

    add-int/lit8 v1, v11, -0x1

    mul-int/2addr v12, v1

    add-int/2addr v14, v12

    .line 559
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 561
    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 562
    invoke-interface/range {v16 .. v16}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v2

    mul-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 563
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v16

    .line 514
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stride is not divisible by two: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 7

    .line 507
    new-instance p0, Lorg/webrtc/NV12Buffer;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/NV12Buffer;-><init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    .line 508
    invoke-virtual {p0}, Lorg/webrtc/NV12Buffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object p0

    return-object p0
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 2

    .line 359
    new-instance v0, Lorg/webrtc/AndroidVideoDecoder$1;

    const-string v1, "AndroidVideoDecoder.outputThread"

    invoke-direct {v0, p0, v1}, Lorg/webrtc/AndroidVideoDecoder$1;-><init>(Lorg/webrtc/AndroidVideoDecoder;Ljava/lang/String;)V

    return-object v0
.end method

.method private deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 461
    monitor-enter v0

    :try_start_0
    iget v5, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    iget v6, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->stride:I

    iget v4, p0, Lorg/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 466
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v2, v5, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    const-string p0, "AndroidVideoDecoder"

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Insufficient output buffer size: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 475
    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v2, v1, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    if-ne v4, v6, :cond_1

    if-le v1, v5, :cond_1

    .line 479
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v6, 0x3

    div-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    .line 482
    invoke-interface {v0}, Lorg/webrtc/MediaCodecWrapper;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, p1

    .line 483
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 485
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v0, p0, Lorg/webrtc/AndroidVideoDecoder;->colorFormat:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    move-object v1, p0

    .line 489
    invoke-direct/range {v1 .. v6}, Lorg/webrtc/AndroidVideoDecoder;->copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, p0

    .line 492
    invoke-direct/range {v1 .. v6}, Lorg/webrtc/AndroidVideoDecoder;->copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const/4 v2, 0x0

    .line 494
    invoke-interface {v1, p1, v2}, Lorg/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 496
    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    .line 497
    new-instance v1, Lorg/webrtc/VideoFrame;

    invoke-direct {v1, v0, p3, p1, p2}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    const/4 p1, 0x0

    .line 500
    invoke-interface {p0, v1, p4, p1}, Lorg/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 501
    invoke-virtual {v1}, Lorg/webrtc/VideoFrame;->release()V

    return-void

    :catchall_0
    move-exception p0

    .line 466
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 417
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    iget v2, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    .line 420
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 422
    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const/4 p2, 0x0

    .line 424
    invoke-interface {p0, p1, p2}, Lorg/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 425
    monitor-exit v3

    return-void

    :cond_0
    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 427
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 428
    invoke-virtual {v0, p3}, Lorg/webrtc/SurfaceTextureHelper;->setFrameRotation(I)V

    .line 429
    new-instance p3, Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p3, v0, v1, p4}, Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;-><init>(JLjava/lang/Integer;)V

    iput-object p3, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const/4 p2, 0x1

    .line 430
    invoke-interface {p0, p1, p2}, Lorg/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 431
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 420
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private initDecodeInternal(II)Lorg/webrtc/VideoCodecStatus;
    .locals 5

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 162
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initDecodeInternal name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidVideoDecoder"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string p0, "initDecodeInternal called while the codec is already running"

    .line 167
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :cond_0
    iput p1, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    iput p2, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    iput p1, p0, Lorg/webrtc/AndroidVideoDecoder;->stride:I

    iput p2, p0, Lorg/webrtc/AndroidVideoDecoder;->sliceHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    :try_start_0
    iget-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lorg/webrtc/MediaCodecWrapperFactory;

    iget-object v4, p0, Lorg/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 182
    invoke-interface {v3, v4}, Lorg/webrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lorg/webrtc/MediaCodecWrapper;

    move-result-object v3

    iput-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    .line 188
    invoke-virtual {v3}, Lorg/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    if-nez p2, :cond_1

    const-string p2, "color-format"

    iget v3, p0, Lorg/webrtc/AndroidVideoDecoder;->colorFormat:I

    .line 190
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    iget-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    .line 192
    invoke-interface {p2, p1, v3, v4, v0}, Lorg/webrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    .line 193
    invoke-interface {p1}, Lorg/webrtc/MediaCodecWrapper;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    iput-boolean v2, p0, Lorg/webrtc/AndroidVideoDecoder;->running:Z

    .line 200
    invoke-direct {p0}, Lorg/webrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p0, "initDecodeInternal done"

    .line 203
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "initDecode failed"

    .line 195
    invoke-static {v1, p2, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    invoke-virtual {p0}, Lorg/webrtc/AndroidVideoDecoder;->release()Lorg/webrtc/VideoCodecStatus;

    .line 197
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    .line 184
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot create media decoder "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

    return-object p0
.end method

.method private isSupportedColorFormat(I)Z
    .locals 4

    .line 655
    sget-object p0, Lorg/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private reformat(Landroid/media/MediaFormat;)V
    .locals 7

    const-string v0, "Frame stride and slice height: "

    const-string v1, "Unexpected format dimensions. Configured "

    const-string v2, "Unexpected size change. Configured "

    iget-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 570
    invoke-virtual {v3}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v3, "AndroidVideoDecoder"

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Decoder format changed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "crop-left"

    .line 574
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-right"

    .line 575
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-bottom"

    .line 576
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-top"

    .line 577
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-right"

    .line 578
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "crop-left"

    .line 579
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    const-string v4, "crop-bottom"

    .line 580
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "crop-top"

    .line 581
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const-string v3, "width"

    .line 583
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    .line 584
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    :goto_0
    iget-object v5, p0, Lorg/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 587
    monitor-enter v5

    :try_start_0
    iget v6, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    if-ne v3, v6, :cond_1

    iget v6, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    if-eq v4, v6, :cond_4

    :cond_1
    iget-boolean v6, p0, Lorg/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    if-eqz v6, :cond_2

    .line 590
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". New "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/webrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 593
    monitor-exit v5

    return-void

    :cond_2
    if-lez v3, :cond_8

    if-gtz v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iput v3, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    iput v4, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    .line 603
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    if-nez v1, :cond_5

    const-string v1, "color-format"

    .line 607
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "color-format"

    .line 608
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/AndroidVideoDecoder;->colorFormat:I

    const-string v1, "AndroidVideoDecoder"

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Color: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->colorFormat:I

    .line 610
    invoke-direct {p0, v1}, Lorg/webrtc/AndroidVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 611
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported color format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/webrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    return-void

    :cond_5
    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 617
    monitor-enter v1

    :try_start_1
    const-string v2, "stride"

    .line 618
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "stride"

    .line 619
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/AndroidVideoDecoder;->stride:I

    :cond_6
    const-string v2, "slice-height"

    .line 621
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "slice-height"

    .line 622
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/webrtc/AndroidVideoDecoder;->sliceHeight:I

    :cond_7
    const-string p1, "AndroidVideoDecoder"

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/webrtc/AndroidVideoDecoder;->stride:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/webrtc/AndroidVideoDecoder;->sliceHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    iget v0, p0, Lorg/webrtc/AndroidVideoDecoder;->stride:I

    .line 625
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/webrtc/AndroidVideoDecoder;->stride:I

    iget p1, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    iget v0, p0, Lorg/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 626
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 627
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_1
    :try_start_2
    const-string p1, "AndroidVideoDecoder"

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". New "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". Skip it"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    monitor-exit v5

    return-void

    :catchall_1
    move-exception p0

    .line 603
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private reinitDecode(II)Lorg/webrtc/VideoCodecStatus;
    .locals 2

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 350
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 351
    invoke-direct {p0}, Lorg/webrtc/AndroidVideoDecoder;->releaseInternal()Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 352
    sget-object v1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 355
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/webrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lorg/webrtc/VideoCodecStatus;

    move-result-object p0

    return-object p0
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 631
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "Releasing MediaCodec on output thread"

    const-string v1, "AndroidVideoDecoder"

    .line 632
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    .line 634
    invoke-interface {v0}, Lorg/webrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Media decoder stop failed"

    .line 636
    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    .line 639
    invoke-interface {v0}, Lorg/webrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Media decoder release failed"

    .line 641
    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    :goto_1
    const-string p0, "Release on output thread done"

    .line 645
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseInternal()Lorg/webrtc/VideoCodecStatus;
    .locals 5

    iget-boolean v0, p0, Lorg/webrtc/AndroidVideoDecoder;->running:Z

    const-string v1, "AndroidVideoDecoder"

    if-nez v0, :cond_0

    const-string p0, "release: Decoder is not running."

    .line 324
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/AndroidVideoDecoder;->running:Z

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x1388

    .line 330
    invoke-static {v0, v3, v4}, Lorg/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Media decoder release timeout"

    .line 332
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v0, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->TIMEOUT:Lorg/webrtc/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    const-string v0, "Media decoder release error"

    .line 338
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, p0, Lorg/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v0, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 340
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 346
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 345
    throw v0
.end method

.method private stopOnOutputThread(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 649
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/AndroidVideoDecoder;->running:Z

    iput-object p1, p0, Lorg/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected allocateI420Buffer(II)Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 676
    invoke-static {p1, p2}, Lorg/webrtc/JavaI420Buffer;->allocate(II)Lorg/webrtc/JavaI420Buffer;

    move-result-object p0

    return-object p0
.end method

.method protected copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
    .locals 0

    .line 682
    invoke-static/range {p1 .. p6}, Lorg/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    return-void
.end method

.method protected createSurfaceTextureHelper()Lorg/webrtc/SurfaceTextureHelper;
    .locals 1

    const-string v0, "decoder-texture-thread"

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    .line 665
    invoke-static {v0, p0}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lorg/webrtc/EncodedImage;Lorg/webrtc/VideoDecoder$DecodeInfo;)Lorg/webrtc/VideoCodecStatus;
    .locals 8

    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 209
    invoke-virtual {p2}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 215
    :cond_0
    iget-object p2, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_1

    const-string p0, "AndroidVideoDecoder"

    const-string p1, "decode() - no input data"

    .line 216
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    .line 220
    :cond_1
    iget-object p2, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "AndroidVideoDecoder"

    const-string p1, "decode() - input buffer empty"

    .line 222
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :cond_2
    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 229
    monitor-enter p2

    :try_start_0
    iget v1, p0, Lorg/webrtc/AndroidVideoDecoder;->width:I

    iget v2, p0, Lorg/webrtc/AndroidVideoDecoder;->height:I

    .line 232
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget p2, p1, Lorg/webrtc/EncodedImage;->encodedWidth:I

    iget v3, p1, Lorg/webrtc/EncodedImage;->encodedHeight:I

    mul-int/2addr p2, v3

    if-lez p2, :cond_4

    iget p2, p1, Lorg/webrtc/EncodedImage;->encodedWidth:I

    if-ne p2, v1, :cond_3

    iget p2, p1, Lorg/webrtc/EncodedImage;->encodedHeight:I

    if-eq p2, v2, :cond_4

    .line 237
    :cond_3
    iget p2, p1, Lorg/webrtc/EncodedImage;->encodedWidth:I

    iget v1, p1, Lorg/webrtc/EncodedImage;->encodedHeight:I

    invoke-direct {p0, p2, v1}, Lorg/webrtc/AndroidVideoDecoder;->reinitDecode(II)Lorg/webrtc/VideoCodecStatus;

    move-result-object p2

    .line 238
    sget-object v1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-eq p2, v1, :cond_4

    return-object p2

    :cond_4
    iget-boolean p2, p0, Lorg/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    if-eqz p2, :cond_5

    .line 245
    iget-object p2, p1, Lorg/webrtc/EncodedImage;->frameType:Lorg/webrtc/EncodedImage$FrameType;

    sget-object v1, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/EncodedImage$FrameType;

    if-eq p2, v1, :cond_5

    const-string p0, "AndroidVideoDecoder"

    const-string p1, "decode() - key frame required first"

    .line 246
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :cond_5
    :try_start_1
    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const-wide/32 v1, 0x7a120

    .line 253
    invoke-interface {p2, v1, v2}, Lorg/webrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-gez v2, :cond_6

    const-string p0, "AndroidVideoDecoder"

    const-string p1, "decode() - no HW buffers available; decoder falling behind"

    .line 261
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :cond_6
    :try_start_2
    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    .line 267
    invoke-interface {p2}, Lorg/webrtc/MediaCodecWrapper;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    aget-object p2, p2, v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v4, :cond_7

    const-string p0, "AndroidVideoDecoder"

    const-string p1, "decode() - HW buffer too small"

    .line 274
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    .line 277
    :cond_7
    iget-object v1, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 279
    new-instance v1, Lorg/webrtc/AndroidVideoDecoder$FrameInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget v3, p1, Lorg/webrtc/EncodedImage;->rotation:I

    invoke-direct {v1, v5, v6, v3}, Lorg/webrtc/AndroidVideoDecoder$FrameInfo;-><init>(JI)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    :try_start_3
    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const/4 v3, 0x0

    .line 281
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p1, Lorg/webrtc/EncodedImage;->captureTimeNs:J

    .line 282
    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    const/4 v7, 0x0

    .line 281
    invoke-interface/range {v1 .. v7}, Lorg/webrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    iget-boolean p1, p0, Lorg/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    if-eqz p1, :cond_8

    iput-boolean v0, p0, Lorg/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 291
    :cond_8
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    const-string v0, "queueInputBuffer failed"

    .line 284
    invoke-static {p2, v0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 285
    invoke-interface {p0}, Ljava/util/concurrent/BlockingDeque;->pollLast()Ljava/lang/Object;

    .line 286
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "getInputBuffers failed"

    .line 269
    invoke-static {p1, p2, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :catch_2
    move-exception p0

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "dequeueInputBuffer failed"

    .line 255
    invoke-static {p1, p2, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p0

    :catchall_0
    move-exception p0

    .line 232
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_9
    :goto_0
    const-string p1, "AndroidVideoDecoder"

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "decode uninitalized, codec: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", callback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object p0, Lorg/webrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/webrtc/VideoCodecStatus;

    return-object p0
.end method

.method protected deliverDecodedFrame()V
    .locals 8

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "dequeueOutputBuffer returned "

    iget-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 373
    invoke-virtual {v2}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 375
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const-wide/32 v4, 0x186a0

    .line 380
    invoke-interface {v3, v2, v4, v5}, Lorg/webrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    .line 382
    invoke-interface {v1}, Lorg/webrtc/MediaCodecWrapper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/AndroidVideoDecoder;->reformat(Landroid/media/MediaFormat;)V

    return-void

    :cond_0
    if-gez v3, :cond_1

    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 391
    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/AndroidVideoDecoder$FrameInfo;

    if-eqz v1, :cond_2

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lorg/webrtc/AndroidVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 396
    iget v1, v1, Lorg/webrtc/AndroidVideoDecoder$FrameInfo;->rotation:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    iget-object v5, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    if-eqz v5, :cond_3

    .line 402
    invoke-direct {p0, v3, v2, v1, v4}, Lorg/webrtc/AndroidVideoDecoder;->deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V

    goto :goto_1

    .line 404
    :cond_3
    invoke-direct {p0, v3, v2, v1, v4}, Lorg/webrtc/AndroidVideoDecoder;->deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "deliverDecodedFrame failed"

    .line 408
    invoke-static {v0, v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    return-object p0
.end method

.method public initDecode(Lorg/webrtc/VideoDecoder$Settings;Lorg/webrtc/VideoDecoder$Callback;)Lorg/webrtc/VideoCodecStatus;
    .locals 1

    .line 149
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    iput-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->sharedContext:Lorg/webrtc/EglBase$Context;

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/webrtc/AndroidVideoDecoder;->createSurfaceTextureHelper()Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p2

    iput-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 154
    new-instance p2, Landroid/view/Surface;

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    iget-object p2, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 155
    invoke-virtual {p2, p0}, Lorg/webrtc/SurfaceTextureHelper;->startListening(Lorg/webrtc/VideoSink;)V

    .line 157
    :cond_0
    iget p2, p1, Lorg/webrtc/VideoDecoder$Settings;->width:I

    iget p1, p1, Lorg/webrtc/VideoDecoder$Settings;->height:I

    invoke-direct {p0, p2, p1}, Lorg/webrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lorg/webrtc/VideoCodecStatus;

    move-result-object p0

    return-object p0
.end method

.method public onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 439
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    if-eqz v1, :cond_0

    .line 444
    iget-wide v1, v1, Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;->presentationTimestampUs:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v3, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 445
    iget-object v3, v3, Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;->decodeTimeMs:Ljava/lang/Integer;

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    new-instance v0, Lorg/webrtc/VideoFrame;

    .line 450
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result p1

    invoke-direct {v0, v5, p1, v1, v2}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    .line 451
    invoke-interface {p0, v0, v3, v4}, Lorg/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lorg/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 441
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Rendered texture metadata was null in onTextureFrameAvailable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 447
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public release()Lorg/webrtc/VideoCodecStatus;
    .locals 3

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "release"

    .line 304
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lorg/webrtc/AndroidVideoDecoder;->releaseInternal()Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/webrtc/AndroidVideoDecoder;->releaseSurface()V

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 309
    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->stopListening()V

    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 310
    invoke-virtual {v1}, Lorg/webrtc/SurfaceTextureHelper;->dispose()V

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    :cond_0
    iget-object v1, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 313
    monitor-enter v1

    :try_start_0
    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 315
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lorg/webrtc/AndroidVideoDecoder;->callback:Lorg/webrtc/VideoDecoder$Callback;

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 317
    invoke-interface {p0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 315
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected releaseSurface()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 671
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    return-void
.end method
