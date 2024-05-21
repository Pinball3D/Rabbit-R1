.class public final Landroidx/media3/extractor/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field public static final DTS_HD_MAX_RATE_BYTES_PER_SECOND:I = 0x225510

.field public static final DTS_MAX_RATE_BYTES_PER_SECOND:I = 0x2ee00

.field private static final FIRST_BYTE_14B_BE:B = 0x1ft

.field private static final FIRST_BYTE_14B_LE:B = -0x1t

.field private static final FIRST_BYTE_BE:B = 0x7ft

.field private static final FIRST_BYTE_LE:B = -0x2t

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SYNC_EXT_SUB_LE:I = 0x25205864

.field private static final SYNC_FTOC_LE:I = -0xde4bec0

.field private static final SYNC_FTOC_NON_SYNC_LE:I = -0x17bd3b8f

.field private static final SYNC_VALUE_14B_BE:I = 0x1fffe800

.field private static final SYNC_VALUE_14B_LE:I = -0xe0ff18

.field private static final SYNC_VALUE_BE:I = 0x7ffe8001

.field private static final SYNC_VALUE_LE:I = -0x180fe80

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/DtsUtil;->CHANNELS_BY_AMODE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .locals 7

    const/4 v0, 0x0

    .line 202
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    .line 216
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_1

    .line 204
    :cond_0
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    goto :goto_0

    .line 211
    :cond_1
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    move v0, v5

    goto :goto_2

    .line 208
    :cond_2
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_1
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    :goto_2
    if-eqz v0, :cond_3

    mul-int/lit8 p0, p0, 0x10

    .line 220
    div-int/lit8 p0, p0, 0xe

    :cond_3
    return p0
.end method

.method private static getNormalizedFrameHeader([B)Landroidx/media3/common/util/ParsableBitArray;
    .locals 5

    const/4 v0, 0x0

    .line 224
    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    .line 226
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    return-object v0

    .line 229
    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 230
    invoke-static {p0}, Landroidx/media3/extractor/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 232
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 233
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 234
    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    .line 235
    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 238
    :cond_1
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 239
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2

    .line 241
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 242
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    const/4 v2, 0x2

    .line 243
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0xe

    .line 244
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->putInt(II)V

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset([B)V

    return-object v1
.end method

.method private static isLittleEndianFrameHeader([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 252
    aget-byte p0, p0, v0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSyncWord(I)Z
    .locals 1

    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_1

    const v0, -0x180fe80

    if-eq p0, v0, :cond_1

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_1

    const v0, -0xe0ff18

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

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0xde4bec0

    if-eq v1, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0x17bd3b8f

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x25205864

    if-ne v0, v1, :cond_1

    const/16 p0, 0x1000

    return p0

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 176
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x4

    .line 188
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x5

    .line 184
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x4

    .line 181
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x5

    .line 178
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_1
    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0

    :cond_5
    :goto_3
    const/16 p0, 0x400

    return p0
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 6

    const/4 v0, 0x0

    .line 138
    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 150
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v3

    goto :goto_1

    .line 146
    :cond_0
    aget-byte v0, p0, v3

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v2

    goto :goto_0

    .line 143
    :cond_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    .line 140
    :cond_2
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v4

    :goto_1
    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 6

    .line 106
    invoke-static {p0}, Landroidx/media3/extractor/DtsUtil;->getNormalizedFrameHeader([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object p0

    const/16 v0, 0x3c

    .line 107
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x6

    .line 108
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    sget-object v1, Landroidx/media3/extractor/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 109
    aget v0, v1, v0

    const/4 v1, 0x4

    .line 110
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    sget-object v2, Landroidx/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    .line 111
    aget v1, v2, v1

    const/4 v2, 0x5

    .line 112
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    sget-object v3, Landroidx/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    .line 114
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 116
    :cond_0
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    :goto_0
    const/16 v3, 0xa

    .line 117
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 118
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    add-int/2addr v0, p0

    .line 119
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 120
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const-string p1, "audio/vnd.dts"

    .line 121
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0, p3}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method
