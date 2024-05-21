.class final Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# static fields
.field private static final STATE_CREATED:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_SHUT_DOWN:I = 0x2


# instance fields
.field private final asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

.field private final bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

.field private final codec:Landroid/media/MediaCodec;

.field private codecReleased:Z

.field private state:I

.field private final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 143
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 144
    new-instance p2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLandroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->initialize(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createQueueingThreadLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createCallbackThreadLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createCallbackThreadLabel(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 310
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createQueueingThreadLabel(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    .line 314
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createThreadLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    .line 320
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    .line 322
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initialize(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 154
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->initialize(Landroid/media/MediaCodec;)V

    const-string v0, "configureCodec"

    .line 155
    invoke-static {v0}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 156
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 157
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 158
    invoke-virtual {p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->start()V

    const-string p1, "startCodec"

    .line 159
    invoke-static {p1}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 160
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 161
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method private maybeBlockOnQueueing()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 299
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->waitUntilQueueingComplete()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 301
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 194
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 195
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->dequeueInputBufferIndex()I

    move-result p0

    return p0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 200
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 201
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p0

    return p0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 229
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 230
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 231
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flush()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 232
    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 212
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 0

    .line 282
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 283
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 218
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 206
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$setOnFrameRenderedListener$0$androidx-media3-exoplayer-mediacodec-AsynchronousMediaCodecAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V
    .locals 6

    .line 0
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    .line 256
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;->onFrameRendered(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;JJ)V

    return-void
.end method

.method public needsReconfiguration()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onError(Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 288
    invoke-virtual {v0, p0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 293
    invoke-virtual {v0, p0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 173
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public queueSecureInputBuffer(IILandroidx/media3/decoder/CryptoInfo;JI)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    .line 179
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->queueSecureInputBuffer(IILandroidx/media3/decoder/CryptoInfo;JI)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 239
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->shutdown()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 240
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutdown()V

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 245
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 248
    :cond_2
    throw v1
.end method

.method public releaseOutputBuffer(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 189
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 184
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public setOnFrameRenderedListener(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
    .locals 2

    .line 253
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 254
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 264
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 270
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    .line 275
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 276
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
