.class final Landroidx/media3/exoplayer/mediacodec/BatchBuffer;
.super Landroidx/media3/decoder/DecoderInputBuffer;
.source "BatchBuffer.java"


# static fields
.field public static final DEFAULT_MAX_SAMPLE_COUNT:I = 0x20

.field static final MAX_SIZE_BYTES:I = 0x2ee000


# instance fields
.field private lastSampleTimeUs:J

.field private maxSampleCount:I

.field private sampleCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, v0}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    const/16 v0, 0x20

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    return-void
.end method

.method private canAppendSampleBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 4

    .line 120
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    return v3

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->isDecodeOnly()Z

    move-result v2

    if-eq v0, v2, :cond_2

    return v3

    .line 130
    :cond_2
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x2ee000

    if-le p0, p1, :cond_3

    return v3

    :cond_3
    return v1
.end method


# virtual methods
.method public append(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 4

    .line 95
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 96
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 97
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 98
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->canAppendSampleBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    if-nez v0, :cond_1

    .line 102
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->timeUs:J

    .line 103
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->setFlags(I)V

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    .line 108
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->setFlags(I)V

    .line 110
    :cond_2
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->ensureSpaceForWrite(I)V

    .line 113
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 115
    :cond_3
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    return v1
.end method

.method public clear()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    return-void
.end method

.method public getFirstSampleTimeUs()J
    .locals 2

    .line 65
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->timeUs:J

    return-wide v0
.end method

.method public getLastSampleTimeUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    return-wide v0
.end method

.method public getSampleCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    return p0
.end method

.method public hasSamples()Z
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMaxSampleCount(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    return-void
.end method
