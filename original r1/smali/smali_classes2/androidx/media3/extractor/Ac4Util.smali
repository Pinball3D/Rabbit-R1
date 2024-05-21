.class public final Landroidx/media3/extractor/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x52080

.field private static final SAMPLE_COUNT:[I

.field public static final SAMPLE_HEADER_SIZE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    const/4 v0, 0x7

    .line 227
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 228
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x54

    .line 229
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 230
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 231
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 232
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 233
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 234
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 235
    aput-byte p0, p1, v0

    return-void
.end method

.method public static parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    shr-int/lit8 p0, p0, 0x5

    if-ne p0, v0, :cond_0

    const p0, 0xbb80

    goto :goto_0

    :cond_0
    const p0, 0xac44

    .line 112
    :goto_0
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 113
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v0, "audio/ac4"

    .line 114
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 115
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0, p3}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 218
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 219
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    new-instance p0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object p0

    iget p0, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return p0
.end method

.method public static parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    .locals 11

    const/16 v0, 0x10

    .line 131
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 133
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_0

    const/16 v0, 0x18

    .line 136
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    const v2, 0xac41

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v8, v0

    const/4 v0, 0x2

    .line 143
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 145
    invoke-static {p0, v0}, Landroidx/media3/extractor/Ac4Util;->readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    move v5, v1

    const/16 v1, 0xa

    .line 147
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 148
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-lez v4, :cond_3

    .line 150
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 153
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v6, 0xbb80

    const v7, 0xac44

    if-eqz v4, :cond_4

    move v9, v6

    goto :goto_1

    :cond_4
    move v9, v7

    .line 154
    :goto_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-ne v9, v7, :cond_5

    const/16 v4, 0xd

    if-ne p0, v4, :cond_5

    sget-object v0, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    .line 157
    aget p0, v0, p0

    goto :goto_4

    :cond_5
    if-ne v9, v6, :cond_b

    sget-object v4, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    .line 158
    array-length v6, v4

    if-ge p0, v6, :cond_b

    .line 159
    aget v4, v4, p0

    .line 160
    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v1, v7, :cond_8

    const/16 v7, 0xb

    if-eq v1, v0, :cond_7

    if-eq v1, v2, :cond_8

    if-eq v1, v3, :cond_6

    goto :goto_2

    :cond_6
    if-eq p0, v2, :cond_a

    if-eq p0, v6, :cond_a

    if-ne p0, v7, :cond_9

    goto :goto_3

    :cond_7
    if-eq p0, v6, :cond_a

    if-ne p0, v7, :cond_9

    goto :goto_3

    :cond_8
    if-eq p0, v2, :cond_a

    if-ne p0, v6, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move p0, v4

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    const/4 p0, 0x0

    .line 181
    :goto_4
    new-instance v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    const/4 v6, 0x2

    const/4 v10, 0x0

    move-object v4, v0

    move v7, v9

    move v9, p0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIIILandroidx/media3/extractor/Ac4Util$1;)V

    return-object v0
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4

    .line 192
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 196
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    .line 199
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const p0, 0xac41

    if-ne p1, p0, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method private static readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I
    .locals 2

    const/4 v0, 0x0

    .line 241
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_0
.end method
