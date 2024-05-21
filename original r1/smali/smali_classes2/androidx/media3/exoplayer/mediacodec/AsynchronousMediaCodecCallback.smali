.class final Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "AsynchronousMediaCodecCallback.java"


# instance fields
.field private final availableInputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

.field private final availableOutputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

.field private final bufferInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackThread:Landroid/os/HandlerThread;

.field private currentFormat:Landroid/media/MediaFormat;

.field private final formats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private internalException:Ljava/lang/IllegalStateException;

.field private final lock:Ljava/lang/Object;

.field private mediaCodecException:Landroid/media/MediaCodec$CodecException;

.field private pendingFlushCount:J

.field private pendingOutputFormat:Landroid/media/MediaFormat;

.field private shutDown:Z


# direct methods
.method public static synthetic $r8$lambda$jRFItnn-9Y9NxJi1W74inKTGTe0(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onFlushCompleted()V

    return-void
.end method

.method constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    .line 84
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    invoke-direct {p1}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 85
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    invoke-direct {p1}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 86
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 87
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addOutputFormat(Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    const/4 v1, -0x2

    .line 281
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->add(I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    .line 282
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private flushInternal()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 268
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 269
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    .line 271
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method private isFlushingOrShutdown()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private maybeThrowException()V
    .locals 0

    .line 287
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowInternalException()V

    .line 288
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowMediaCodecException()V

    return-void
.end method

.method private maybeThrowInternalException()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 296
    throw v0
.end method

.method private maybeThrowMediaCodecException()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 305
    throw v0
.end method

.method private onFlushCompleted()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 239
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v1, :cond_0

    .line 241
    monitor-exit v0

    return-void

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 247
    monitor-exit v0

    return-void

    :cond_1
    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 250
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->setInternalException(Ljava/lang/IllegalStateException;)V

    .line 251
    monitor-exit v0

    return-void

    .line 253
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setInternalException(Ljava/lang/IllegalStateException;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 310
    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 312
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 128
    monitor-enter v0

    .line 129
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 130
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 131
    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 133
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->remove()I

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 147
    monitor-enter v0

    .line 148
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 149
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 150
    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 152
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 155
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->remove()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    .line 157
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 158
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodec$BufferInfo;

    .line 159
    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    .line 167
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 196
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    .line 198
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 183
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz p0, :cond_0

    .line 187
    monitor-exit v0

    return-object p0

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initialize(Landroid/media/MediaCodec;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    .line 101
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 225
    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 227
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 206
    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 207
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->add(I)V

    .line 208
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 213
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;

    .line 218
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->add(I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 219
    invoke-virtual {p0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 232
    monitor-enter p1

    .line 233
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 235
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 116
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    .line 118
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 119
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
