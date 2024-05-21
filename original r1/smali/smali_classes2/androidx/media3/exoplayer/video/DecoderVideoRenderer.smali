.class public abstract Landroidx/media3/exoplayer/video/DecoderVideoRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "DecoderVideoRenderer.java"


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Landroidx/media3/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/Decoder<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            "+",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            "+",
            "Landroidx/media3/decoder/DecoderException;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final formatQueue:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private initialPositionUs:J

.field private inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private inputFormat:Landroidx/media3/common/Format;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private output:Ljava/lang/Object;

.field private outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

.field private outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

.field private outputFormat:Landroidx/media3/common/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private outputSurface:Landroid/view/Surface;

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Landroidx/media3/common/VideoSize;

.field private sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private waitingForFirstSampleInFormat:Z


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 1

    const/4 v0, 0x2

    .line 171
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    iput p5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 175
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 176
    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 177
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 178
    new-instance p1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p3, p4}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;,
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 788
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 792
    iget v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget v3, v3, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 793
    iget v2, v2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 796
    invoke-virtual {v0}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 799
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 800
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 802
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    :goto_0
    return v1

    .line 809
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->processOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 811
    iget-wide p2, p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->timeUs:J

    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onProcessedOutputBuffer(J)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    :cond_4
    return p1
.end method

.method private feedInputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;,
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v2, :cond_1

    .line 729
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    .line 736
    invoke-virtual {v0, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 737
    invoke-interface {v0, v4}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iput v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    return v1

    .line 743
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 744
    invoke-virtual {p0, v0, v3, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v3

    const/4 v5, -0x5

    if-eq v3, v5, :cond_7

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 p0, -0x3

    if-ne v3, p0, :cond_3

    return v1

    .line 771
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 751
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 753
    invoke-interface {v0, v3}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return v1

    :cond_5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 758
    iget-wide v5, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v5, v6, v3}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 761
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 762
    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->format:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 763
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 764
    invoke-interface {v0, v1}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    iput-boolean v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 767
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return v4

    .line 748
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V

    return v4

    :cond_8
    :goto_0
    return v1
.end method

.method private hasOutput()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferLate(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 2

    const-wide/32 v0, -0x7a120

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeInitDecoder()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 682
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_2

    .line 686
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 688
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    const/16 v1, 0xfa1

    .line 700
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 701
    invoke-virtual {p0, v4, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createDecoder(Landroidx/media3/common/Format;Landroidx/media3/decoder/CryptoConfig;)Landroidx/media3/decoder/Decoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    .line 702
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 703
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 705
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v5

    sub-long v8, v6, v2

    .line 704
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 708
    iget v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 715
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    const-string v2, "DecoderVideoRenderer"

    const-string v3, "Video codec error"

    .line 710
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 711
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 712
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    iget v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 956
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    .line 958
    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    .line 925
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_0

    .line 940
    iget v0, v0, Landroidx/media3/common/VideoSize;->width:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    iget v0, v0, Landroidx/media3/common/VideoSize;->height:I

    if-eq v0, p2, :cond_1

    .line 943
    :cond_0
    new-instance v0, Landroidx/media3/common/VideoSize;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/VideoSize;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 944
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    .line 931
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 950
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_0
    return-void
.end method

.method private onOutputChanged()V
    .locals 2

    .line 890
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 892
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 893
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 894
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    :cond_0
    return-void
.end method

.method private onOutputRemoved()V
    .locals 0

    .line 899
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 900
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method private onOutputReset()V
    .locals 0

    .line 906
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 907
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;,
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 833
    iget-wide v0, v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->timeUs:J

    sub-long/2addr v0, p1

    .line 834
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 836
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 837
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->skipOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    return v3

    :cond_1
    return v4

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 843
    iget-wide v5, v2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->timeUs:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamOffsetUs:J

    sub-long/2addr v5, v7

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 844
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    if-eqz v2, :cond_3

    iput-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 849
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v7

    iget-wide v9, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v7, v9

    .line 851
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getState()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    iget-boolean v9, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v9, :cond_5

    if-nez v2, :cond_7

    iget-boolean v9, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_5
    iget-boolean v9, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_8

    .line 858
    invoke-virtual {p0, v0, v1, v7, v8}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 859
    invoke-virtual {p0, p1, v5, v6, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/Format;)V

    return v3

    :cond_8
    if-eqz v2, :cond_c

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    cmp-long v2, p1, v7

    if-nez v2, :cond_9

    goto :goto_2

    .line 868
    :cond_9
    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 869
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result p1

    if-eqz p1, :cond_a

    return v4

    .line 871
    :cond_a
    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 872
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->dropOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    return v3

    :cond_b
    const-wide/16 p1, 0x7530

    cmp-long p1, v0, p1

    if-gez p1, :cond_c

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 877
    invoke-virtual {p0, p1, v5, v6, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/Format;)V

    return v3

    :cond_c
    :goto_2
    return v4
.end method

.method private setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 673
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 668
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 6

    .line 661
    new-instance p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object p0
.end method

.method protected abstract createDecoder(Landroidx/media3/common/Format;Landroidx/media3/decoder/CryptoConfig;)Landroidx/media3/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/decoder/CryptoConfig;",
            ")",
            "Landroidx/media3/decoder/Decoder<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            "+",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            "+",
            "Landroidx/media3/decoder/DecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected dropOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 494
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 496
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    return-void
.end method

.method protected flushDecoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    iget v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 344
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1

    .line 348
    invoke-virtual {v2}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 351
    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->flush()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 261
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setOutput(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 263
    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    goto :goto_0

    .line 265
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public isReady()Z
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_1

    .line 238
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    return v1

    :cond_2
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    .line 245
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    return v4
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 513
    iget v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 516
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 518
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flushDecoder()V

    return v1
.end method

.method protected onDisabled()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 314
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 315
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 317
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 318
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 320
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 321
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 274
    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 275
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->enabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    iput-boolean p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 382
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/media3/common/Format;

    .line 383
    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    iput-object v5, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-nez p1, :cond_0

    .line 388
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p1, p0, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 395
    new-instance p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 397
    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-interface {p1}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v5}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->canReuseDecoder(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object p1

    .line 406
    :goto_0
    iget v1, p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz v1, :cond_2

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 413
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 416
    invoke-virtual {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 284
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->initialPositionUs:J

    iput p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flushDecoder()V

    :cond_0
    if-eqz p3, :cond_1

    .line 291
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 295
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    iget p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 308
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iput-wide p4, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamOffsetUs:J

    .line 331
    invoke-super/range {p0 .. p5}, Landroidx/media3/exoplayer/BaseRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJ)V

    return-void
.end method

.method protected releaseDecoder()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReinitializationState:I

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    iput v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 365
    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 366
    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->release()V

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 367
    invoke-interface {v2}, Landroidx/media3/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    return-void
.end method

.method public render(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_3

    .line 193
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 194
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x2

    .line 195
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    .line 197
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 200
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputStreamEnded:Z

    :cond_2
    return-void

    .line 211
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeInitDecoder()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "drainAndFeed"

    .line 216
    invoke-static {v0}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 217
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 218
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 219
    :cond_5
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 225
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "DecoderVideoRenderer"

    const-string p3, "Video codec error"

    .line 221
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 222
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 p3, 0xfa3

    .line 223
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method protected renderOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/Format;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 573
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide v1, p2

    move-object v5, p4

    .line 572
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 575
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    .line 576
    iget p2, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz p2, :cond_2

    move p2, p4

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    if-nez p2, :cond_3

    if-nez v0, :cond_3

    .line 580
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->dropOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    goto :goto_3

    .line 582
    :cond_3
    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iget v1, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    .line 584
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;->setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 586
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->renderOutputBufferToSurface(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    :goto_2
    iput p3, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 589
    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p4

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 590
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :goto_3
    return-void
.end method

.method protected abstract renderOutputBufferToSurface(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected abstract setDecoderOutputMode(I)V
.end method

.method protected final setOutput(Ljava/lang/Object;)V
    .locals 2

    .line 609
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 610
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    goto :goto_0

    .line 613
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_1

    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 615
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    iput-object v1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputBufferRenderer:Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    move-object p1, v1

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoder:Landroidx/media3/decoder/Decoder;

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->outputMode:I

    .line 628
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 630
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onOutputChanged()V

    goto :goto_1

    .line 634
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 638
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->onOutputReset()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 0

    .line 462
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 449
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p0

    return p0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 0

    .line 475
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 p0, 0x186a0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected skipOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 484
    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 485
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    return-void
.end method

.method protected updateDroppedBufferCounters(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 532
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr p1, p2

    iget-object p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 534
    iget v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    iget p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 537
    iget v0, p1, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 538
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget p1, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget p2, p0, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->droppedFrames:I

    if-lt p2, p1, :cond_0

    .line 540
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
