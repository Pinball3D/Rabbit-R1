.class final Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "ToFloatPcmAudioProcessor.java"


# static fields
.field private static final FLOAT_NAN_AS_INT:I

.field private static final PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR:D = 4.656612875245797E-10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method

.method private static writePcm32BitFloat(ILjava/nio/ByteBuffer;)V
    .locals 4

    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    int-to-double v2, p0

    mul-double/2addr v2, v0

    double-to-float p0, v2

    .line 107
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    sget v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 109
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    .line 111
    :cond_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

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

    .line 46
    invoke-static {p0}, Landroidx/media3/common/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 50
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    :goto_0
    return-object p0

    .line 47
    :cond_1
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 62
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/high16 v4, 0x20000000

    if-eq v3, v4, :cond_1

    const/high16 v4, 0x30000000

    if-ne v3, v4, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 77
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    .line 78
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    .line 79
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    .line 80
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 81
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 64
    :cond_1
    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 67
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x1

    .line 68
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    .line 69
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 70
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
