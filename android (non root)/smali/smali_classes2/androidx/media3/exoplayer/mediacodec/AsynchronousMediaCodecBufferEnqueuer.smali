.class Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    }
.end annotation


# static fields
.field private static final MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_OPEN_CV:I = 0x2

.field private static final MSG_QUEUE_INPUT_BUFFER:I = 0x0

.field private static final MSG_QUEUE_SECURE_INPUT_BUFFER:I = 0x1

.field private static final QUEUE_SECURE_LOCK:Ljava/lang/Object;


# instance fields
.field private final codec:Landroid/media/MediaCodec;

.field private final conditionVariable:Landroidx/media3/common/util/ConditionVariable;

.field private handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->QUEUE_SECURE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .locals 1

    .line 72
    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v0}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/common/util/ConditionVariable;)V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Message;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private blockUntilHandlerThreadIsIdle()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    .line 183
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->close()Z

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    .line 184
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    .line 185
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->block()V

    return-void
.end method

.method private static copy(Landroidx/media3/decoder/CryptoInfo;Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2

    .line 292
    iget v0, p0, Landroidx/media3/decoder/CryptoInfo;->numSubSamples:I

    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 293
    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 294
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 295
    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 296
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 297
    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->key:[B

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 298
    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 299
    iget v0, p0, Landroidx/media3/decoder/CryptoInfo;->mode:I

    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 300
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 301
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget v1, p0, Landroidx/media3/decoder/CryptoInfo;->encryptedBlocks:I

    iget p0, p0, Landroidx/media3/decoder/CryptoInfo;->clearBlocks:I

    invoke-direct {v0, v1, p0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_0
    return-void
.end method

.method private static copy([B[B)[B
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 342
    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 343
    :cond_2
    :goto_0
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static copy([I[I)[I
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 321
    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 322
    :cond_2
    :goto_0
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method private doHandleMessage(Landroid/os/Message;)V
    .locals 10

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    .line 213
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    .line 205
    iget v4, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget v5, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iget-object v6, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v7, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v9, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doQueueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    .line 200
    iget v4, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget v5, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iget v6, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    iget-wide v7, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v9, v2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doQueueInputBuffer(IIIJI)V

    :goto_0
    if-eqz v2, :cond_3

    .line 220
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->recycleMessageParams(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;)V

    :cond_3
    return-void
.end method

.method private doQueueInputBuffer(IIIJI)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 227
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    .line 229
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private doQueueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 8

    :try_start_0
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->QUEUE_SECURE_LOCK:Ljava/lang/Object;

    .line 239
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .line 240
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 241
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    .line 243
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private flushHandlerThread()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    .line 178
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->blockUntilHandlerThreadIsIdle()V

    return-void
.end method

.method private static getMessageParams()Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    .line 248
    monitor-enter v0

    .line 249
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;-><init>()V

    monitor-exit v0

    return-object v1

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 254
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static recycleMessageParams(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;)V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    .line 258
    monitor-enter v0

    .line 259
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 260
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
.method public flush()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flushHandlerThread()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public maybeThrowException()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    if-nez p0, :cond_0

    return-void

    .line 169
    :cond_0
    throw p0
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 8

    .line 110
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 111
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v7

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->setQueueParams(IIIJI)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    .line 113
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueSecureInputBuffer(IILandroidx/media3/decoder/CryptoInfo;JI)V
    .locals 8

    .line 128
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 129
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v7

    const/4 v3, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    .line 130
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->setQueueParams(IIIJI)V

    .line 131
    iget-object p1, v7, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-static {p3, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy(Landroidx/media3/decoder/CryptoInfo;Landroid/media/MediaCodec$CryptoInfo;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    .line 133
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method setPendingRuntimeException(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    .line 190
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    .line 93
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;-><init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    :cond_0
    return-void
.end method

.method public waitUntilQueueingComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->blockUntilHandlerThreadIsIdle()V

    return-void
.end method
