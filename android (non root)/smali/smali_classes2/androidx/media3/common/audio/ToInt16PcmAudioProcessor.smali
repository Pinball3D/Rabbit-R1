.class public final Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "ToInt16PcmAudioProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 45
    iget p0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0

    :cond_1
    :goto_0
    if-eq p0, v1, :cond_2

    .line 55
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_1

    .line 57
    :cond_2
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    :goto_1
    return-object p0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 67
    iget-object v3, p0, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/high16 v4, 0x30000000

    const/high16 v5, 0x20000000

    const/high16 v6, 0x10000000

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 75
    :cond_1
    div-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    mul-int/lit8 v2, v2, 0x2

    .line 89
    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 90
    iget-object p0, p0, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-eq p0, v8, :cond_9

    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_7

    if-eq p0, v5, :cond_6

    if-ne p0, v4, :cond_5

    :goto_3
    if-ge v0, v1, :cond_a

    add-int/lit8 p0, v0, 0x2

    .line 115
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, v0, 0x3

    .line 116
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    .line 137
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    :goto_4
    if-ge v0, v1, :cond_a

    add-int/lit8 p0, v0, 0x1

    .line 108
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, v0, 0x2

    .line 109
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    :cond_7
    :goto_5
    if-ge v0, v1, :cond_a

    add-int/lit8 p0, v0, 0x1

    .line 101
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_8
    :goto_6
    if-ge v0, v1, :cond_a

    .line 126
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v3, v4}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p0

    const v3, 0x46fffe00    # 32767.0f

    mul-float/2addr p0, v3

    float-to-int p0, p0

    int-to-short p0, p0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 129
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_6

    :cond_9
    :goto_7
    if-ge v0, v1, :cond_a

    const/4 p0, 0x0

    .line 94
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 p0, p0, -0x80

    int-to-byte p0, p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 139
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
