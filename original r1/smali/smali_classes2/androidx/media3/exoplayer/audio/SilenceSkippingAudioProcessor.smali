.class public final Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "SilenceSkippingAudioProcessor.java"


# static fields
.field public static final DEFAULT_MINIMUM_SILENCE_DURATION_US:J = 0x249f0L

.field public static final DEFAULT_PADDING_SILENCE_US:J = 0x4e20L

.field public static final DEFAULT_SILENCE_THRESHOLD_LEVEL:S = 0x400s

.field private static final STATE_MAYBE_SILENT:I = 0x1

.field private static final STATE_NOISY:I = 0x0

.field private static final STATE_SILENT:I = 0x2


# instance fields
.field private bytesPerFrame:I

.field private enabled:Z

.field private hasOutputNoise:Z

.field private maybeSilenceBuffer:[B

.field private maybeSilenceBufferSize:I

.field private final minimumSilenceDurationUs:J

.field private paddingBuffer:[B

.field private final paddingSilenceUs:J

.field private paddingSize:I

.field private final silenceThresholdLevel:S

.field private skippedFrames:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/32 v1, 0x249f0

    const-wide/16 v3, 0x4e20

    const/16 v5, 0x400

    move-object v0, p0

    .line 102
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;-><init>(JJS)V

    return-void
.end method

.method public constructor <init>(JJS)V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->minimumSilenceDurationUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSilenceUs:J

    iput-short p5, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->silenceThresholdLevel:S

    .line 125
    sget-object p1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 126
    sget-object p1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method private durationUsToFrames(J)I
    .locals 2

    .line 350
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v0, p0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method private findNoiseLimit(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 374
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 375
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->silenceThresholdLevel:S

    if-le v1, v2, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 377
    div-int/2addr v0, p0

    mul-int/2addr v0, p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method private findNoisePosition(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 359
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 360
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->silenceThresholdLevel:S

    if-le v1, v2, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 362
    div-int/2addr v0, p0

    mul-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    return p0
.end method

.method private output(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 322
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_0
    return-void
.end method

.method private output([BI)V
    .locals 2

    .line 311
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_0
    return-void
.end method

.method private processMaybeSilence(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 252
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 254
    array-length v4, v3

    iget v5, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_0

    if-ge v2, v4, :cond_0

    .line 257
    invoke-direct {p0, v3, v5}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->output([BI)V

    iput v6, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iput v6, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_1

    .line 262
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 263
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v3, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 264
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 266
    array-length v3, v1

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 270
    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->output([BI)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v3, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iget v5, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    mul-int/2addr v5, v4

    sub-int/2addr v3, v5

    iget v5, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 271
    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    goto :goto_0

    :cond_1
    iget-wide v7, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v2, v1

    iget v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 273
    div-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v7, v1

    iput-wide v7, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 275
    invoke-direct {p0, p1, v1, v2}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    iput v6, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iput v4, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->state:I

    .line 281
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method private processNoisy(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 232
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 233
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->findNoiseLimit(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 239
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->output(Ljava/nio/ByteBuffer;)V

    .line 243
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private processSilence(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 291
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 292
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v3, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 294
    invoke-direct {p0, p1, v2, v3}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 298
    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->output([BI)V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->state:I

    .line 302
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 334
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    const/4 v3, 0x0

    .line 336
    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    .line 343
    invoke-virtual {p1, p0, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getSkippedFrames()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->enabled:Z

    return p0
.end method

.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 154
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    :goto_0
    return-object p1

    .line 155
    :cond_1
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0
.end method

.method protected onFlush()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->minimumSilenceDurationUs:J

    .line 199
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 200
    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 201
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSilenceUs:J

    .line 203
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    .line 204
    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 205
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->state:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iput v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 188
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->output([BI)V

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v2, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    iget v3, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 191
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    :cond_1
    return-void
.end method

.method protected onReset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->enabled:Z

    iput v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 218
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 219
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 167
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->hasPendingOutput()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 176
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->processSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->processMaybeSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->processNoisy(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->enabled:Z

    return-void
.end method
