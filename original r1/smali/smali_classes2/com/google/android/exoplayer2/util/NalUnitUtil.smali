.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    const/4 v0, 0x0

    .line 764
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 765
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 766
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 257
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3

    .line 261
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 263
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 266
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 267
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 268
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-eqz v5, :cond_2

    move v3, v1

    :cond_2
    move v2, v4

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 704
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_1

    return p2

    .line 709
    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    .line 710
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    const/4 v3, 0x2

    if-le v0, v2, :cond_3

    .line 712
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    .line 713
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_3
    if-le v0, v3, :cond_4

    .line 715
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 719
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_4
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_1
    if-ge p1, v4, :cond_7

    .line 727
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 730
    aget-byte v7, p0, v6

    if-nez v7, :cond_6

    add-int/lit8 v7, p1, -0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_6

    if-ne v5, v2, :cond_6

    .line 731
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    return v6

    :cond_6
    add-int/lit8 p1, p1, -0x2

    :goto_2
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_7
    if-le v0, v3, :cond_9

    add-int/lit8 p1, p2, -0x3

    .line 743
    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    goto :goto_3

    :cond_8
    move p1, v1

    goto :goto_4

    :cond_9
    if-ne v0, v3, :cond_a

    .line 745
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_8

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    goto :goto_3

    .line 746
    :cond_a
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    :goto_3
    move p1, v2

    :goto_4
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_b

    add-int/lit8 p1, p2, -0x2

    .line 750
    aget-byte p1, p0, p1

    if-nez p1, :cond_c

    aget-byte p1, p0, v4

    if-nez p1, :cond_c

    goto :goto_5

    .line 751
    :cond_b
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_c

    aget-byte p1, p0, v4

    if-nez p1, :cond_c

    :goto_5
    move p1, v2

    goto :goto_6

    :cond_c
    move p1, v1

    :goto_6
    aput-boolean p1, p3, v2

    .line 753
    aget-byte p0, p0, v4

    if-nez p0, :cond_d

    move v1, v2

    :cond_d
    aput-boolean v1, p3, v3

    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_1

    .line 771
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 321
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 309
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3

    const-string v0, "video/avc"

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    :cond_0
    const-string v0, "video/hevc"

    .line 296
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static parseH265SpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x2

    .line 482
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .locals 23

    .line 496
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v1, 0x4

    .line 501
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v1, 0x3

    .line 502
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 503
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    const/4 v3, 0x2

    .line 504
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 505
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    const/4 v4, 0x5

    .line 506
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x20

    const/4 v12, 0x1

    if-ge v10, v11, :cond_1

    .line 509
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    shl-int v11, v12, v10

    or-int/2addr v9, v11

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x6

    new-array v11, v10, [I

    const/4 v13, 0x0

    :goto_1
    const/16 v14, 0x8

    if-ge v13, v10, :cond_2

    .line 515
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 517
    :cond_2
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v13, v2, :cond_5

    .line 520
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v15, v15, 0x59

    .line 523
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_4

    add-int/lit8 v15, v15, 0x8

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 527
    :cond_5
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v2, :cond_6

    rsub-int/lit8 v13, v2, 0x8

    mul-int/2addr v13, v3

    .line 529
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 531
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 532
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    if-ne v15, v1, :cond_7

    .line 534
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 536
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 537
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 538
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 539
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 540
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 541
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 542
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    if-eq v15, v12, :cond_9

    if-ne v15, v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v22, v12

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v22, v3

    :goto_4
    if-ne v15, v12, :cond_a

    move v15, v3

    goto :goto_5

    :cond_a
    move v15, v12

    :goto_5
    add-int v18, v18, v19

    mul-int v22, v22, v18

    sub-int v16, v16, v22

    add-int v20, v20, v21

    mul-int v15, v15, v20

    sub-int v17, v17, v15

    .line 549
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 550
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 551
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 553
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    goto :goto_6

    :cond_c
    move/from16 v18, v2

    :goto_6
    move/from16 v8, v18

    :goto_7
    if-gt v8, v2, :cond_d

    .line 554
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 555
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 556
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 558
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 559
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 560
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 561
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 562
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 563
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 565
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 566
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 567
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipH265ScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 569
    :cond_e
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 570
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 572
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 573
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 574
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 575
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 577
    :cond_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipShortTermReferencePictureSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 578
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v8, 0x0

    .line 580
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ge v8, v2, :cond_10

    add-int/lit8 v2, v15, 0x5

    .line 583
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 586
    :cond_10
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 588
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/4 v4, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_19

    .line 589
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 590
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v15, 0xff

    if-ne v2, v15, :cond_11

    const/16 v2, 0x10

    .line 592
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .line 593
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    if-eqz v15, :cond_13

    if-eqz v2, :cond_13

    int-to-float v8, v15

    int-to-float v2, v2

    div-float/2addr v8, v2

    goto :goto_9

    :cond_11
    sget-object v15, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 597
    array-length v3, v15

    if-ge v2, v3, :cond_12

    .line 598
    aget v8, v15, v2

    goto :goto_9

    .line 600
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_13
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 604
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 606
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 607
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 608
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 609
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 610
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 611
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 612
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 614
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    const/4 v12, 0x2

    .line 617
    :goto_a
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    goto :goto_b

    :cond_16
    move v1, v4

    move v12, v1

    .line 620
    :goto_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 621
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 622
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 624
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 625
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_18

    mul-int/lit8 v17, v17, 0x2

    :cond_18
    move v15, v4

    move v14, v8

    move v0, v12

    goto :goto_c

    :cond_19
    move v0, v4

    move v1, v0

    move v15, v1

    move v14, v8

    .line 632
    :goto_c
    new-instance v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    move-object v4, v2

    move v8, v9

    move-object v9, v11

    move v11, v13

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v16, v0

    move/from16 v17, v1

    invoke-direct/range {v4 .. v17}, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;-><init>(IZII[IIIIIFIII)V

    return-object v2
.end method

.method public static parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 658
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 1

    .line 671
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 672
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 673
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 674
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 675
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 676
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 334
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 22

    .line 347
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 348
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 349
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 350
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 351
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/16 v2, 0x64

    const/4 v7, 0x3

    const/16 v8, 0x10

    const/4 v9, 0x1

    if-eq v3, v2, :cond_1

    const/16 v2, 0x6e

    if-eq v3, v2, :cond_1

    const/16 v2, 0x7a

    if-eq v3, v2, :cond_1

    const/16 v2, 0xf4

    if-eq v3, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v3, v2, :cond_1

    const/16 v2, 0x53

    if-eq v3, v2, :cond_1

    const/16 v2, 0x56

    if-eq v3, v2, :cond_1

    const/16 v2, 0x76

    if-eq v3, v2, :cond_1

    const/16 v2, 0x80

    if-eq v3, v2, :cond_1

    const/16 v2, 0x8a

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v9

    const/4 v11, 0x0

    goto :goto_5

    .line 365
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 367
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 369
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 370
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 371
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 372
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_6

    if-eq v2, v7, :cond_3

    move v12, v1

    goto :goto_2

    :cond_3
    const/16 v12, 0xc

    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_6

    .line 376
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x6

    if-ge v13, v14, :cond_4

    move v14, v8

    goto :goto_4

    :cond_4
    const/16 v14, 0x40

    .line 378
    :goto_4
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 384
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    .line 385
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-nez v14, :cond_7

    .line 390
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    move/from16 v16, v2

    move/from16 p1, v11

    move v15, v12

    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    if-ne v14, v9, :cond_9

    .line 392
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    .line 393
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 394
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 395
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    move/from16 p1, v11

    int-to-long v10, v15

    move/from16 v16, v2

    const/4 v15, 0x0

    :goto_6
    int-to-long v1, v15

    cmp-long v1, v1, v10

    if-gez v1, :cond_8

    .line 397
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_8
    move v1, v12

    goto :goto_7

    :cond_9
    move/from16 v16, v2

    move/from16 p1, v11

    const/4 v1, 0x0

    :goto_7
    const/4 v15, 0x0

    .line 400
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 401
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 403
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/2addr v2, v9

    .line 404
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v9

    .line 405
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    rsub-int/lit8 v17, v12, 0x2

    mul-int v17, v17, v11

    if-nez v12, :cond_a

    .line 408
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 411
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    mul-int/2addr v2, v8

    mul-int/lit8 v17, v17, 0x10

    .line 414
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 416
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 417
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 418
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 419
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    if-nez v16, :cond_b

    rsub-int/lit8 v7, v12, 0x2

    goto :goto_a

    :cond_b
    const/16 v21, 0x2

    move/from16 v8, v16

    if-ne v8, v7, :cond_c

    move v7, v9

    goto :goto_9

    :cond_c
    move/from16 v7, v21

    :goto_9
    if-ne v8, v9, :cond_d

    move/from16 v9, v21

    :cond_d
    rsub-int/lit8 v8, v12, 0x2

    mul-int/2addr v8, v9

    move v9, v7

    move v7, v8

    :goto_a
    add-int v11, v11, v18

    mul-int/2addr v11, v9

    sub-int/2addr v2, v11

    add-int v19, v19, v20

    mul-int v19, v19, v7

    sub-int v17, v17, v19

    :cond_e
    move v8, v2

    move/from16 v9, v17

    .line 436
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v2, :cond_11

    .line 438
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x8

    .line 440
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v11, 0xff

    if-ne v2, v11, :cond_f

    const/16 v11, 0x10

    .line 442
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 443
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    if-eqz v2, :cond_11

    if-eqz v0, :cond_11

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v7, v2, v0

    goto :goto_b

    :cond_f
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 447
    array-length v11, v0

    if-ge v2, v11, :cond_10

    .line 448
    aget v0, v0, v2

    goto :goto_c

    .line 450
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_b
    move v0, v7

    .line 455
    :goto_c
    new-instance v17, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-object/from16 v2, v17

    move v7, v10

    move v10, v0

    move/from16 v11, p1

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIIIIIFZZIIIZ)V

    return-object v17
.end method

.method private static skipH265ScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    move v3, v0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 793
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    :cond_0
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    .line 797
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_1
    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 803
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    move v5, v4

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v2, p1, :cond_2

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 784
    rem-int/lit16 v0, v0, 0x100

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static skipShortTermReferencePictureSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 19

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, -0x1

    move v6, v1

    move v5, v4

    :goto_0
    if-ge v6, v0, :cond_f

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_c

    add-int v8, v4, v5

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    mul-int/lit8 v9, v9, 0x2

    rsub-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x1

    .line 840
    new-array v11, v10, [Z

    move v12, v1

    :goto_1
    if-gt v12, v8, :cond_1

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_0

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    aput-boolean v13, v11, v12

    goto :goto_2

    .line 846
    :cond_0
    aput-boolean v7, v11, v12

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 853
    :cond_1
    new-array v7, v10, [I

    .line 854
    new-array v10, v10, [I

    add-int/lit8 v12, v5, -0x1

    move v13, v1

    :goto_3
    if-ltz v12, :cond_3

    .line 856
    aget v14, v3, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_2

    add-int v15, v4, v12

    .line 857
    aget-boolean v15, v11, v15

    if-eqz v15, :cond_2

    add-int/lit8 v15, v13, 0x1

    .line 858
    aput v14, v7, v13

    move v13, v15

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_3
    if-gez v9, :cond_4

    .line 861
    aget-boolean v12, v11, v8

    if-eqz v12, :cond_4

    add-int/lit8 v12, v13, 0x1

    .line 862
    aput v9, v7, v13

    move v13, v12

    :cond_4
    move v12, v1

    :goto_4
    if-ge v12, v4, :cond_6

    .line 865
    aget v14, v2, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_5

    .line 866
    aget-boolean v15, v11, v12

    if-eqz v15, :cond_5

    add-int/lit8 v15, v13, 0x1

    .line 867
    aput v14, v7, v13

    move v13, v15

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 871
    :cond_6
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    add-int/lit8 v12, v4, -0x1

    move v14, v1

    :goto_5
    if-ltz v12, :cond_8

    .line 875
    aget v15, v2, v12

    add-int/2addr v15, v9

    if-lez v15, :cond_7

    .line 876
    aget-boolean v16, v11, v12

    if-eqz v16, :cond_7

    add-int/lit8 v16, v14, 0x1

    .line 877
    aput v15, v10, v14

    move/from16 v14, v16

    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    :cond_8
    if-lez v9, :cond_9

    .line 880
    aget-boolean v2, v11, v8

    if-eqz v2, :cond_9

    add-int/lit8 v2, v14, 0x1

    .line 881
    aput v9, v10, v14

    move v14, v2

    :cond_9
    move v2, v1

    :goto_6
    if-ge v2, v5, :cond_b

    .line 884
    aget v8, v3, v2

    add-int/2addr v8, v9

    if-lez v8, :cond_a

    add-int v12, v4, v2

    .line 885
    aget-boolean v12, v11, v12

    if-eqz v12, :cond_a

    add-int/lit8 v12, v14, 0x1

    .line 886
    aput v8, v10, v14

    move v14, v12

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 890
    :cond_b
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v3, v2

    move-object v2, v7

    move v4, v13

    move v5, v14

    goto :goto_9

    .line 892
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 894
    new-array v4, v2, [I

    move v5, v1

    :goto_7
    if-ge v5, v2, :cond_d

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v4, v5

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 899
    :cond_d
    new-array v5, v3, [I

    move v8, v1

    :goto_8
    if-ge v8, v3, :cond_e

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    add-int/2addr v9, v7

    aput v9, v5, v8

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_e
    move-object/from16 v17, v4

    move v4, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v5

    move v5, v3

    move-object/from16 v3, v18

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 8

    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 212
    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 216
    :try_start_0
    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_0

    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 218
    array-length v5, v4

    if-gt v5, v3, :cond_1

    .line 220
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 221
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    :cond_1
    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    .line 223
    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sub-int/2addr p1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v2, v3, :cond_3

    sget-object v6, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 232
    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 234
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 236
    aput-byte v1, p0, v4

    add-int/lit8 v4, v4, 0x2

    .line 237
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int v1, p1, v4

    .line 242
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    monitor-exit v0

    return p1

    .line 244
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
