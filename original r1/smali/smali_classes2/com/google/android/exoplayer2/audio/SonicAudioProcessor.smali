.class public final Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# static fields
.field private static final CLOSE_THRESHOLD:F = 1.0E-4f

.field private static final MIN_BYTES_FOR_DURATION_SCALING_CALCULATION:I = 0x400

.field public static final SAMPLE_RATE_NO_CHANGE:I = -0x1


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private inputBytes:J

.field private inputEnded:Z

.field private outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBytes:J

.field private pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private pendingOutputSampleRate:I

.field private pendingSonicRecreation:Z

.field private pitch:F

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private sonic:Lcom/google/android/exoplayer2/audio/Sonic;

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 68
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 70
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 71
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 72
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 74
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 146
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 151
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 154
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    return-object v2

    .line 147
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw p0
.end method

.method public flush()V
    .locals 7

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Lcom/google/android/exoplayer2/audio/Sonic;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v6, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/Sonic;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->flush()V

    .line 236
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getMediaDuration(J)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    .line 131
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/Sonic;->getPendingInputBytes()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 132
    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v1, v2, :cond_0

    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    move-wide/from16 v5, p1

    .line 133
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 134
    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v1, v1

    mul-long v11, v7, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v3, v0

    mul-long v13, v1, v3

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    float-to-double v0, v0

    move-wide/from16 v2, p1

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutputSize()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 197
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 201
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 203
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutput(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 210
    sget-object v1, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 162
    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 163
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v1

    .line 164
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutputSize()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public queueEndOfStream()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->queueEndOfStream()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 170
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    .line 173
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/Sonic;

    .line 174
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->queueInput(Ljava/nio/ShortBuffer;)V

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 246
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 247
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 248
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 249
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 250
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 252
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public setOutputSampleRateHz(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    return-void
.end method

.method public setPitch(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    :cond_0
    return-void
.end method
