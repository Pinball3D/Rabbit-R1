.class public Landroidx/media3/extractor/OpusUtil;
.super Ljava/lang/Object;
.source "OpusUtil.java"


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT:I = 0x3

.field public static final MAX_BYTES_PER_SECOND:I = 0xf906

.field public static final SAMPLE_RATE:I = 0xbb80


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildInitializationData([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Landroidx/media3/extractor/OpusUtil;->getPreSkipSamples([B)I

    move-result v0

    int-to-long v0, v0

    .line 59
    invoke-static {v0, v1}, Landroidx/media3/extractor/OpusUtil;->sampleCountToNanoseconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0xf00

    .line 60
    invoke-static {v2, v3}, Landroidx/media3/extractor/OpusUtil;->sampleCountToNanoseconds(J)J

    move-result-wide v2

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v0, v1}, Landroidx/media3/extractor/OpusUtil;->buildNativeOrderByteArray(J)[B

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v2, v3}, Landroidx/media3/extractor/OpusUtil;->buildNativeOrderByteArray(J)[B

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method private static buildNativeOrderByteArray(J)[B
    .locals 2

    const/16 v0, 0x8

    .line 179
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getChannelCount([B)I
    .locals 1

    const/16 v0, 0x9

    .line 47
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static getPacketDurationUs(BB)J
    .locals 5

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x3

    and-int/2addr p0, v1

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const/4 v3, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_1

    and-int/lit8 v3, p1, 0x3f

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    shr-int/lit8 p0, v0, 0x3

    and-int/lit8 p1, p0, 0x3

    const/16 v0, 0x10

    if-lt p0, v0, :cond_2

    const/16 p0, 0x9c4

    shl-int/2addr p0, p1

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    const/16 v4, 0x2710

    if-lt p0, v0, :cond_3

    and-int/2addr p0, v2

    shl-int p0, v4, p0

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const p0, 0xea60

    goto :goto_1

    :cond_4
    shl-int p0, v4, p1

    :goto_1
    int-to-long v0, v3

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static getPacketDurationUs([B)J
    .locals 4

    const/4 v0, 0x0

    .line 139
    aget-byte v1, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-byte v0, p0, v3

    :cond_0
    invoke-static {v1, v0}, Landroidx/media3/extractor/OpusUtil;->getPacketDurationUs(BB)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getPreSkipSamples([B)I
    .locals 2

    const/16 v0, 0xb

    .line 175
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xa

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static parseOggPacketAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 79
    invoke-static {p0}, Landroidx/media3/extractor/OpusUtil;->parseOggPacketForPreAudioSampleByteCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1a

    .line 80
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    add-int/2addr v1, v0

    .line 85
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 84
    :goto_0
    invoke-static {v0, p0}, Landroidx/media3/extractor/OpusUtil;->getPacketDurationUs(BB)J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 87
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static parseOggPacketForPreAudioSampleByteCount(Ljava/nio/ByteBuffer;)I
    .locals 6

    const/4 v0, 0x5

    .line 98
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1a

    .line 104
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v2, 0x1c

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v5, v3, 0x1b

    .line 106
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v4, 0x1a

    .line 111
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v3, v4, 0x1b

    add-int/2addr v3, v1

    .line 113
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v4, v2

    return v4
.end method

.method public static parsePacketAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 4

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :cond_0
    invoke-static {v1, v0}, Landroidx/media3/extractor/OpusUtil;->getPacketDurationUs(BB)J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 129
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static sampleCountToNanoseconds(J)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xbb80

    .line 183
    div-long/2addr p0, v0

    return-wide p0
.end method
