.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$Api31;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_MODE_ALWAYS:I = 0x2

.field private static final ADAPTATION_WORKAROUND_MODE_NEVER:I = 0x0

.field private static final ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION:I = 0x1

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field protected static final CODEC_OPERATING_RATE_UNSET:F = -1.0f

.field private static final DRAIN_ACTION_FLUSH:I = 0x1

.field private static final DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION:I = 0x2

.field private static final DRAIN_ACTION_NONE:I = 0x0

.field private static final DRAIN_ACTION_REINITIALIZE:I = 0x3

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final DRAIN_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final assumedMinimumCodecOperatingRate:F

.field private availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

.field private bypassDrainAndReinitialize:Z

.field private bypassEnabled:Z

.field private final bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private bypassSampleBufferPending:Z

.field private c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

.field private codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

.field private codecAdaptationWorkaroundMode:I

.field private final codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

.field private codecDrainAction:I

.field private codecDrainState:I

.field private codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private codecHasOutputMediaFormat:Z

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field private codecInputFormat:Lcom/google/android/exoplayer2/Format;

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosBufferTimestampWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagation:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecNeedsSosFlushWorkaround:Z

.field private codecOperatingRate:F

.field private codecOutputMediaFormat:Landroid/media/MediaFormat;

.field private codecOutputMediaFormatChanged:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private currentPlaybackSpeed:F

.field private final decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final enableDecoderFallback:Z

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private isDecodeOnlyOutputBuffer:Z

.field private isLastOutputBuffer:Z

.field private largestQueuedPresentationTimeUs:J

.field private lastBufferInStreamPresentationTimeUs:J

.field private lastProcessedOutputBufferTimeUs:J

.field private final mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private mediaCryptoRequiresSecureDecoder:Z

.field private needToNotifyOutputFormatChangeAfterStreamChange:Z

.field private final noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

.field private pendingOutputEndOfStream:Z

.field private final pendingOutputStreamChanges:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private renderTimeLimitMs:J

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private targetPlaybackSpeed:F

.field private waitingForFirstSampleInFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    .line 380
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    iput p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 383
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newNoDataInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 384
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 385
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 386
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 387
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 388
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 392
    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 393
    sget-object p5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-direct {p0, p5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 399
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->ensureSpaceForWrite(I)V

    .line 400
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void
.end method

.method private bypassRead()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2249
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2250
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2251
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2253
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v3, 0x0

    .line 2254
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_5

    const/4 v4, -0x4

    if-eq v2, v4, :cond_2

    const/4 p0, -0x3

    if-ne v2, p0, :cond_1

    return-void

    .line 2280
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2262
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2268
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    .line 2269
    invoke-virtual {p0, v2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2273
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2274
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    return-void

    .line 2257
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return-void
.end method

.method private bypassRender(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    .line 2186
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2187
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2188
    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v8, 0x0

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2195
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->getSampleCount()I

    move-result v9

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2196
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->getFirstSampleTimeUs()J

    move-result-wide v10

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2197
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isDecodeOnly()Z

    move-result v12

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2198
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isEndOfStream()Z

    move-result v16

    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    move/from16 v13, v16

    move-object/from16 v14, v17

    .line 2188
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2201
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2202
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move v0, v13

    :goto_0
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0

    :cond_2
    const/4 v1, 0x1

    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    if-eqz v2, :cond_3

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2216
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    :cond_3
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v2, :cond_5

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2221
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 2227
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v2, :cond_5

    return v0

    .line 2237
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassRead()V

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2239
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2240
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->flip()V

    :cond_6
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2245
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_8

    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v14, v0

    goto :goto_2

    :cond_8
    :goto_1
    move v14, v1

    :goto_2
    return v14
.end method

.method private codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .locals 1

    .line 2340
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p0, v0, :cond_1

    const-string p0, "OMX.Exynos.avc.dec.secure"

    .line 2341
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v0, "SM-T585"

    .line 2342
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v0, "SM-A510"

    .line 2343
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v0, "SM-A520"

    .line 2344
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v0, "SM-J700"

    .line 2345
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x2

    return p0

    .line 2347
    :cond_1
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p0, v0, :cond_4

    const-string p0, "OMX.Nvidia.h264.decode"

    .line 2348
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    const-string p0, "flounder"

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 2349
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "flounder_lte"

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 2350
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "grouper"

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 2351
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "tilapia"

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 2352
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 2371
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 2372
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 2373
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2447
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.mp3.dec"

    .line 2448
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 2449
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "baffin"

    .line 2450
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "grand"

    .line 2451
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "fortuna"

    .line 2452
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "gprimelte"

    .line 2453
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "j2y18lte"

    .line 2454
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "ms01"

    .line 2455
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2433
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_3

    const-string v0, "hb2000"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 2435
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "stvm8"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 2436
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 2437
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2470
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosPropagationWorkaround(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 3

    .line 2406
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 2407
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_1

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 2408
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 2410
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 2411
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 2412
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 2413
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 2414
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 2415
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Amazon"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 2416
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AFTS"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2318
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 2320
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 2322
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 2323
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 2488
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 2490
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2390
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private disableBypass()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 715
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 716
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return-void
.end method

.method private drainAndFlushCodec()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method private drainAndReinitializeCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    .line 1790
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    :goto_0
    return-void
.end method

.method private drainAndUpdateCodecDrmSessionV23()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 p0, 0x0

    return p0

    .line 1773
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    :goto_1
    return v1
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1800
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    const/16 v16, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1804
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1806
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 1809
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_0
    return v14

    :cond_1
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1814
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_5

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 1819
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputMediaFormatChanged()V

    return v16

    :cond_2
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_3

    iget v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1825
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_4
    return v14

    :cond_5
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_6

    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1833
    invoke-interface {v1, v0, v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    return v16

    :cond_6
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1835
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_7

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 1838
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v14

    :cond_7
    iput v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1843
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1848
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1849
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_8
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    if-eqz v0, :cond_9

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1851
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    iget-wide v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1855
    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_9
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1857
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyBuffer(J)Z

    move-result v0

    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-wide v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1858
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    move/from16 v0, v16

    goto :goto_1

    :cond_a
    move v0, v14

    :goto_1
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1860
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    :cond_b
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_d

    :try_start_1
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1866
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    move/from16 v18, v14

    move-object/from16 v14, v17

    .line 1867
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move/from16 v18, v14

    .line 1880
    :catch_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_c

    .line 1883
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_c
    return v18

    :cond_d
    move/from16 v18, v14

    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1888
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1889
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_10

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1904
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1905
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    move/from16 v14, v16

    goto :goto_3

    :cond_e
    move/from16 v14, v18

    .line 1906
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    if-nez v14, :cond_f

    return v16

    .line 1910
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_10
    return v18
.end method

.method private drmNeedsCodecReinitialization(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_8

    if-nez p3, :cond_1

    goto :goto_1

    .line 2080
    :cond_1
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {p3}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2085
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_3

    return v1

    .line 2090
    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    sget-object p3, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 2091
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 2097
    :cond_4
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object p0

    if-nez p0, :cond_5

    return v1

    .line 2110
    :cond_5
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    if-eqz p0, :cond_6

    move p0, v0

    goto :goto_0

    .line 2113
    :cond_6
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {p4, p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result p0

    .line 2115
    :goto_0
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-nez p1, :cond_7

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1d

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v0, :cond_1

    .line 1184
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldReinitCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1189
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1193
    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1194
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 1204
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1205
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1213
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    .line 1214
    array-length v7, v1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1215
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    return v3

    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1223
    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1224
    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1225
    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1229
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1231
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1235
    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v5
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->hasReadStreamToEnd()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isLastSample()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_a
    const/4 v6, -0x3

    if-ne v5, v6, :cond_b

    return v1

    :cond_b
    const/4 v6, -0x5

    if-ne v5, v6, :cond_d

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1257
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1260
    :cond_c
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return v3

    :cond_d
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1265
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_11

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1270
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_e
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_f

    .line 1275
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v1

    :cond_f
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_10

    goto :goto_2

    :cond_10
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 1283
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1289
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1293
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v2

    .line 1292
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_11
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1304
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1305
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_12

    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_12
    return v3

    :cond_13
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1314
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1316
    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->increaseClearDataFirstSubSampleBy(I)V

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v0, :cond_16

    if-nez v2, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1319
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1320
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_15

    return v3

    :cond_15
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1326
    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    if-eqz v0, :cond_17

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1330
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->updateAndGetPresentationTimeUs(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1338
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->getLastOutputBufferPresentationTimeUs(Lcom/google/android/exoplayer2/Format;)J

    move-result-wide v8

    .line 1336
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    :cond_17
    move-wide v12, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1341
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 1342
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1345
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1346
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    goto :goto_3

    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 1348
    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_1a
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 1352
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1353
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1354
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1355
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1358
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    if-eqz v2, :cond_1c

    :try_start_2
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1361
    iget-object v11, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V

    goto :goto_4

    :cond_1c
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 1364
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1365
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    .line 1364
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1372
    :goto_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1375
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    return v3

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1369
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v2

    .line 1368
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception v0

    .line 1237
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 1240
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 1241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v3

    :cond_1d
    :goto_5
    return v1
.end method

.method private flushCodec()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 867
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 870
    throw v0
.end method

.method private getAvailableCodecInfos(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1043
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 1044
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 1050
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 1051
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1052
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Drm session requires secure decoder for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecRenderer"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2157
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2158
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expecting FrameworkCryptoConfig but found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v1, 0x1771

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    .line 2167
    :cond_1
    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    return-object p1
.end method

.method private hasOutputBuffer()Z
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initBypass(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1066
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 1068
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    .line 1069
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "audio/mpeg"

    .line 1070
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/opus"

    .line 1071
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 1073
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    const/16 v0, 0x20

    .line 1075
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return-void
.end method

.method private initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "createCodec:"

    .line 1083
    iget-object v2, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1085
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    const/high16 v4, -0x40800000    # -1.0f

    if-ge v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-virtual {p0, v1, v3, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result v1

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 1091
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1093
    invoke-virtual {p0, p1, v1, p2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object v3

    .line 1094
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p2, v1, :cond_2

    .line 1095
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$Api31;->setLogSessionIdToMediaCodecFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 1098
    :cond_2
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    .line 1099
    invoke-interface {p2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1105
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1110
    invoke-static {p2}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Format exceeds selected codec\'s capabilities [%s, %s]"

    .line 1108
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaCodecRenderer"

    .line 1106
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1116
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1118
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 1119
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 1120
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 1121
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 1122
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 1123
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1125
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 1127
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecNeedsEosPropagation()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v1

    :goto_3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1128
    invoke-interface {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->needsReconfiguration()Z

    move-result p2

    if-eqz p2, :cond_7

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz p2, :cond_6

    move v0, v1

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    :cond_7
    const-string p2, "c2.android.mp3.decoder"

    .line 1134
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1135
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    .line 1138
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    .line 1139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v9, 0x3e8

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1142
    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    sub-long p1, v7, v5

    move-object v1, p0

    move-wide v4, v7

    move-wide v6, p1

    .line 1144
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;JJ)V

    return-void

    :catchall_0
    move-exception p0

    .line 1101
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1102
    throw p0
.end method

.method private isDecodeOnlyBuffer(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 2132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 2134
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 2135
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isMediaCodecException(Ljava/lang/IllegalStateException;)Z
    .locals 3

    .line 2286
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 2289
    :cond_0
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 2290
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.MediaCodec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    return v2
.end method

.method private static isMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z
    .locals 0

    .line 2295
    instance-of p0, p0, Landroid/media/MediaCodec$CodecException;

    return p0
.end method

.method private static isRecoverableMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z
    .locals 1

    .line 2300
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 2301
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 969
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v0

    .line 970
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v3, :cond_0

    .line 972
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 973
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    .line 974
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 978
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const v1, -0xc34e

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 986
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 994
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 996
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 997
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 1002
    :cond_3
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "MediaCodecRenderer"

    if-ne v2, v0, :cond_4

    :try_start_2
    const-string v3, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    .line 1008
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x32

    .line 1009
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1010
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V

    goto :goto_2

    .line 1012
    :cond_4
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v3

    .line 1016
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to initialize decoder: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1020
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1021
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v4, v5, v3, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZLcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)V

    .line 1024
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v2, :cond_5

    iput-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_3

    .line 1029
    :cond_5
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1031
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 1032
    throw p0

    :cond_7
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    return-void

    .line 987
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const v0, -0xc34f

    invoke-direct {p1, p0, v1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method private processEndOfStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 2020
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    goto :goto_0

    .line 2008
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    goto :goto_0

    .line 2011
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 2012
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    goto :goto_0

    .line 2015
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    :goto_0
    return-void
.end method

.method private processOutputMediaFormatChanged()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1919
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v2, :cond_0

    const-string v2, "width"

    .line 1921
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-string v2, "height"

    .line 1922
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v2, :cond_1

    const-string v2, "channel-count"

    .line 1929
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    return-void
.end method

.method private readSourceOmittingSampleData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 950
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    or-int/lit8 p1, p1, 0x4

    .line 952
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 954
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return v2

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 956
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 958
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private reinitializeCodec()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 2126
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-void
.end method

.method private resetInputBuffer()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    .line 1158
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private resetOutputBuffer()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 1172
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private setOutputStreamInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2044
    iget-wide v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    .line 2046
    iget-wide v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputStreamOffsetUsChanged(J)V

    :cond_0
    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 1167
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private shouldContinueRendering(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

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

.method protected static supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 2052
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method private updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1697
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 1703
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 1709
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_3

    .line 1716
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    const/4 p0, 0x0

    return p0

    :cond_3
    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    .line 1722
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    .line 1723
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 1724
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    :cond_6
    :goto_1
    return v2
.end method

.method private updateDrmSessionV23()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 2145
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 2149
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0x1776

    .line 2147
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 6

    .line 1615
    new-instance p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object p0
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .locals 0

    .line 936
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)V

    return-object p0
.end method

.method protected final flushOrReinitializeCodec()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_0
    return v0
.end method

.method protected flushOrReleaseCodec()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 848
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 850
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 852
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 854
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 855
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3

    .line 860
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v1

    .line 844
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3
.end method

.method protected final getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    return-object p0
.end method

.method protected final getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    return-object p0
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getCodecOperatingRate()F
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    return p0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 0

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method protected final getCodecOutputMediaFormat()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method protected abstract getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected abstract getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
.end method

.method protected final getOutputStreamOffsetUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2039
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    return-wide v0
.end method

.method protected getPlaybackSpeed()F
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    return p0
.end method

.method protected handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public isEnded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public isReady()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 1642
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1643
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final maybeInitCodecOrBypass()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v1, :cond_1

    .line 489
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldUseBypass(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 490
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initBypass(Lcom/google/android/exoplayer2/Format;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 494
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 496
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 500
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 502
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 512
    :cond_3
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 519
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0x1776

    .line 514
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    .line 522
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 523
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    if-eq v0, v3, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 526
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 527
    iget v2, v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 537
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0xfa1

    .line 539
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_2
    return-void
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .locals 0

    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onDisabled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 698
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 699
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 700
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    return-void
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 637
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1433
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    .line 1434
    iget-object v1, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1443
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    return-object v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1453
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 1467
    invoke-direct {p0, v1, v5, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmNeedsCodecReinitialization(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1469
    new-instance p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object p0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v6

    :goto_0
    if-eqz v2, :cond_5

    .line 1477
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v0

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1479
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v3

    .line 1481
    iget v7, v3, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    const/4 v8, 0x3

    if-eqz v7, :cond_f

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v7, v0, :cond_c

    if-eq v7, v10, :cond_8

    if-ne v7, v8, :cond_7

    .line 1517
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_10

    .line 1521
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 1527
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1500
    :cond_8
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eq v7, v10, :cond_b

    if-ne v7, v0, :cond_a

    .line 1505
    iget v7, v5, Lcom/google/android/exoplayer2/Format;->width:I

    iget v9, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v7, v9, :cond_a

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->height:I

    iget v9, v4, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v7, v9, :cond_a

    goto :goto_3

    :cond_a
    move v0, v6

    :cond_b
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_10

    .line 1511
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 1486
    :cond_c
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_4
    move v7, v9

    goto :goto_6

    :cond_d
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_e

    .line 1491
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 1494
    :cond_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndFlushCodec()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_5
    move v7, v10

    goto :goto_6

    .line 1483
    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    :cond_10
    move v7, v6

    .line 1530
    :goto_6
    iget v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-ne v0, p1, :cond_11

    iget p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    if-ne p0, v8, :cond_12

    .line 1534
    :cond_11
    new-instance p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object p0

    :cond_12
    return-object v3

    .line 1438
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onOutputStreamOffsetUsChanged(J)V
    .locals 0

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 671
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 672
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 680
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 683
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 684
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1590
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1591
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1592
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 1593
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 0

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 706
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 707
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 710
    throw v1
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 643
    iget-wide v1, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 645
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 648
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_2

    cmp-long v1, v5, v1

    if-ltz v1, :cond_2

    .line 653
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 656
    iget-wide v1, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 657
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 660
    new-instance v9, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_0

    .line 724
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->release()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 725
    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 726
    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecReleased(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 736
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 737
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 736
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 737
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 738
    throw v1

    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 732
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 736
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 737
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 739
    throw v1

    :catchall_2
    move-exception v1

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 736
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 737
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 738
    throw v1
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 756
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 769
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 774
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    .line 776
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 777
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassRender(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 778
    :cond_3
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v2, :cond_7

    .line 780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 781
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 782
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 783
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 784
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 785
    :cond_6
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3

    :cond_7
    iget-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 787
    iget p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 792
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 794
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 796
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isMediaCodecException(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 797
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 798
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isRecoverableMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_8

    move v1, v0

    :cond_8
    if-eqz v1, :cond_9

    .line 800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 803
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 p3, 0xfa3

    .line 802
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    .line 808
    :cond_a
    throw p1

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 761
    throw v0
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected resetCodecStateForFlush()V
    .locals 4

    .line 876
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 877
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 885
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->reset()V

    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return-void
.end method

.method protected resetCodecStateForRelease()V
    .locals 2

    .line 909
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    return-void
.end method

.method protected final setPendingOutputEndOfStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    return-void
.end method

.method protected final setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 692
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    return-void
.end method

.method public setRenderTimeLimitMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    return-void
.end method

.method protected shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected shouldReinitCodec()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected shouldUseBypass(Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    .line 438
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method protected abstract supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected final updateCodecOperatingRate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1685
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    return p0
.end method

.method protected final updateOutputFormatForTime(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 598
    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_0

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 606
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    :cond_2
    return-void
.end method
