.class public final Landroidx/media3/extractor/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC3_MAX_RATE_BYTES_PER_SECOND:I = 0x13880

.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field public static final E_AC3_MAX_RATE_BYTES_PER_SECOND:I = 0xbb800

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_MAX_RATE_BYTES_PER_SECOND:I = 0x2ebae4

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_2
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateEac3Bitrate(III)I
    .locals 0

    mul-int/2addr p0, p1

    mul-int/lit8 p2, p2, 0x20

    .line 606
    div-int/2addr p0, p2

    return p0
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 531
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 532
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x4

    .line 535
    invoke-static {p0, v3}, Landroidx/media3/common/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    const v4, -0x78d9046

    if-ne v3, v4, :cond_0

    sub-int/2addr v2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4

    .line 579
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_3

    sget-object v1, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 580
    array-length v2, v1

    if-ge p0, v2, :cond_3

    if-ltz p1, :cond_3

    sget-object v2, Landroidx/media3/extractor/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_1

    .line 589
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_1
    sget-object p1, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 591
    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 5

    .line 158
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 159
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    const/4 v1, 0x2

    .line 161
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    sget-object v2, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 162
    aget v1, v2, v1

    const/16 v2, 0x8

    .line 163
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    sget-object v2, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/4 v3, 0x3

    .line 164
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 165
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    const/4 v3, 0x5

    .line 168
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    sget-object v4, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 169
    aget v3, v4, v3

    mul-int/lit16 v3, v3, 0x3e8

    .line 171
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 172
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 173
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 174
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const-string p1, "audio/ac3"

    .line 175
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 176
    invoke-virtual {p0, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 177
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 178
    invoke-virtual {p0, p3}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 179
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p0, v3}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 512
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 514
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    :goto_0
    sget-object p0, Landroidx/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 516
    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_1
    const/16 p0, 0x600

    return p0
.end method

.method public static parseAc3SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;
    .locals 30

    move-object/from16 v0, p0

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x28

    .line 256
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x5

    .line 258
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v5, 0x1

    const/16 v6, 0xa

    if-le v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 259
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_2a

    const/16 v3, 0x10

    .line 271
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 272
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_3

    if-eq v11, v5, :cond_2

    if-eq v11, v10, :cond_1

    goto :goto_1

    :cond_1
    move v1, v10

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 286
    :goto_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v11, 0xb

    .line 287
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v5

    mul-int/2addr v11, v10

    .line 288
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    if-ne v12, v9, :cond_4

    sget-object v13, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 293
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    aget v13, v13, v14

    move v14, v9

    const/4 v15, 0x6

    goto :goto_2

    .line 296
    :cond_4
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    sget-object v14, Landroidx/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 297
    aget v14, v14, v13

    sget-object v15, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 298
    aget v15, v15, v12

    move/from16 v29, v14

    move v14, v13

    move v13, v15

    move/from16 v15, v29

    :goto_2
    mul-int/lit16 v4, v15, 0x100

    .line 301
    invoke-static {v11, v13, v15}, Landroidx/media3/extractor/Ac3Util;->calculateEac3Bitrate(III)I

    move-result v16

    .line 302
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    sget-object v19, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 304
    aget v19, v19, v8

    add-int v19, v19, v18

    .line 305
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 307
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_5
    if-nez v8, :cond_6

    .line 310
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 312
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_6
    if-ne v1, v5, :cond_7

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 316
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 318
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v6, 0x4

    if-eqz v3, :cond_20

    if-le v8, v10, :cond_8

    .line 320
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_8
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_9

    if-le v8, v10, :cond_9

    const/4 v3, 0x6

    .line 323
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x6

    :goto_3
    and-int/lit8 v17, v8, 0x4

    if-eqz v17, :cond_a

    .line 326
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_a
    if-eqz v18, :cond_b

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 329
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_b
    if-nez v1, :cond_20

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x6

    .line 333
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    :cond_c
    const/4 v3, 0x6

    :goto_4
    if-nez v8, :cond_d

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 336
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 338
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 339
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 341
    :cond_e
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-ne v3, v5, :cond_f

    .line 343
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_f
    if-ne v3, v10, :cond_10

    const/16 v3, 0xc

    .line 345
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_10
    if-ne v3, v9, :cond_1b

    .line 347
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 349
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 351
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 353
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 354
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 356
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 357
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 359
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 360
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 362
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 363
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 365
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 366
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 368
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 369
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 371
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 373
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 375
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 376
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 380
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 381
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_1a

    const/4 v5, 0x7

    .line 383
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 385
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1a
    add-int/2addr v3, v10

    mul-int/2addr v3, v7

    .line 389
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    :cond_1b
    :goto_5
    if-ge v8, v10, :cond_1d

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/16 v5, 0xe

    if-eqz v3, :cond_1c

    .line 394
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1c
    if-nez v8, :cond_1d

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 398
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 402
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v14, :cond_1e

    .line 404
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_7

    :cond_1e
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v15, :cond_20

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 408
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 415
    :cond_20
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 416
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-ne v8, v10, :cond_21

    .line 418
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_21
    const/4 v2, 0x6

    if-lt v8, v2, :cond_22

    .line 421
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 423
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 424
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_23
    if-nez v8, :cond_24

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 427
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_24
    if-ge v12, v9, :cond_25

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_25
    if-nez v1, :cond_26

    if-eq v14, v9, :cond_26

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_26
    if-ne v1, v10, :cond_28

    if-eq v14, v9, :cond_27

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    const/4 v2, 0x6

    .line 438
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_8

    :cond_28
    const/4 v2, 0x6

    .line 441
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 442
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 443
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v3, :cond_29

    const-string v0, "audio/eac3-joc"

    goto :goto_9

    :cond_29
    const-string v0, "audio/eac3"

    :goto_9
    move-object/from16 v21, v0

    move/from16 v22, v1

    move/from16 v26, v4

    move/from16 v25, v11

    move/from16 v24, v13

    move/from16 v27, v16

    goto :goto_c

    :cond_2a
    const/16 v2, 0x20

    .line 449
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 450
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ne v2, v9, :cond_2b

    const/4 v3, 0x0

    goto :goto_a

    :cond_2b
    const-string v3, "audio/ac3"

    :goto_a
    const/4 v4, 0x6

    .line 456
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    sget-object v5, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 457
    div-int/lit8 v6, v4, 0x2

    aget v5, v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    .line 458
    invoke-static {v2, v4}, Landroidx/media3/extractor/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v11

    .line 459
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 460
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_2c

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2c

    .line 462
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_2c
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_2d

    .line 465
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_2d
    if-ne v4, v10, :cond_2e

    .line 468
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_2e
    sget-object v6, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 471
    array-length v7, v6

    if-ge v2, v7, :cond_2f

    aget v2, v6, v2

    move v13, v2

    goto :goto_b

    :cond_2f
    move v13, v1

    .line 473
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    sget-object v2, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 474
    aget v2, v2, v4

    add-int v19, v2, v0

    const/16 v4, 0x600

    move/from16 v22, v1

    move-object/from16 v21, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v25, v11

    move/from16 v24, v13

    :goto_c
    move/from16 v23, v19

    .line 476
    new-instance v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;

    const/16 v28, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v28}, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIIILandroidx/media3/extractor/Ac3Util$1;)V

    return-object v0
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 4

    .line 487
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 491
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    const/4 v0, 0x2

    .line 493
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    .line 494
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v0

    return p0

    :cond_1
    const/4 v0, 0x4

    .line 497
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    shr-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    .line 499
    invoke-static {v0, p0}, Landroidx/media3/extractor/Ac3Util;->getAc3SyncframeSize(II)I

    move-result p0

    return p0
.end method

.method public static parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 7

    .line 197
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 198
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    const/16 v1, 0xd

    .line 200
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x3

    .line 201
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x2

    .line 204
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    sget-object v4, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 205
    aget v3, v4, v3

    const/16 v4, 0xa

    .line 206
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    sget-object v4, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 207
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    .line 208
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 213
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x4

    .line 214
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 215
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-lez v2, :cond_2

    const/4 v2, 0x6

    .line 217
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 220
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v4, v4, 0x2

    .line 223
    :cond_1
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 227
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/4 v6, 0x7

    if-le v2, v6, :cond_3

    .line 228
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 229
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "audio/eac3-joc"

    goto :goto_0

    :cond_3
    const-string v2, "audio/eac3"

    .line 234
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 235
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 236
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 237
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 238
    invoke-virtual {p0, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 239
    invoke-virtual {p0, v4}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 240
    invoke-virtual {p0, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0, p3}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 242
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 243
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 574
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 575
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-eqz v0, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    const/16 p1, 0x28

    shl-int p0, p1, p0

    return p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .locals 6

    const/4 v0, 0x4

    .line 554
    aget-byte v1, p0, v0

    const/4 v2, -0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_3

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_3

    const/4 v1, 0x7

    aget-byte v2, p0, v1

    and-int/lit16 v4, v2, 0xfe

    const/16 v5, 0xba

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 561
    :goto_0
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    const/16 v0, 0x28

    shl-int p0, v0, p0

    return p0

    :cond_3
    :goto_1
    return v3
.end method
