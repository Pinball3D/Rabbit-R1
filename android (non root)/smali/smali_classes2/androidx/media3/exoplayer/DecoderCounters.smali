.class public final Landroidx/media3/exoplayer/DecoderCounters;
.super Ljava/lang/Object;
.source "DecoderCounters.java"


# instance fields
.field public decoderInitCount:I

.field public decoderReleaseCount:I

.field public droppedBufferCount:I

.field public droppedInputBufferCount:I

.field public droppedToKeyframeCount:I

.field public maxConsecutiveDroppedBufferCount:I

.field public queuedInputBufferCount:I

.field public renderedOutputBufferCount:I

.field public skippedInputBufferCount:I

.field public skippedOutputBufferCount:I

.field public totalVideoFrameProcessingOffsetUs:J

.field public videoFrameProcessingOffsetCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addVideoFrameProcessingOffsets(JI)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    return-void
.end method


# virtual methods
.method public addVideoFrameProcessingOffset(J)V
    .locals 1

    const/4 v0, 0x1

    .line 154
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/DecoderCounters;->addVideoFrameProcessingOffsets(JI)V

    return-void
.end method

.method public declared-synchronized ensureUpdated()V
    .locals 0

    monitor-enter p0

    .line 122
    monitor-exit p0

    return-void
.end method

.method public merge(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    .line 130
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 131
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    .line 132
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 133
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 134
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 135
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    .line 136
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    .line 137
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 138
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 140
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 141
    iget-wide v0, p1, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget p1, p1, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/DecoderCounters;->addVideoFrameProcessingOffsets(JI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide v11, p0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    .line 188
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget p0, p0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}"

    .line 164
    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
